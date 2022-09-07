//
//  Diary.swift
//  iCare
//
//  Created by WSS on 06/09/2022.
//

import SwiftUI
import Firebase
import AVFoundation
struct Diary: View {
    var body: some View {
        Home()
    }
}

struct Diary_Previews: PreviewProvider {
    static var previews: some View {
        Diary()
    }
}

struct Home: View{
    
    @ObservedObject var Notes = getNotes()
    @State var show = false
    @State var txt = ""
    @State var docId = ""
    @State var remove = false
    @State var myAnimation: Bool = false
    
    var body: some View{
        
        ZStack(alignment: .bottomTrailing){
            VStack(spacing: 0){
                HStack{
                    
                    Text("Diary").font(.title).foregroundColor(.white)
                    
                    Spacer()
                    
                    Button {
                        
                        self.remove.toggle()
                        
                    } label: {
                        Image(systemName: self.remove ? "xmark.circle": "trash").resizable().frame(width: 23, height: 23).foregroundColor(.white)
                        
                    }


                }.padding()
                    .padding(.top,180)
                    .frame(width:430,height:280)
                    .background(
                                            .linearGradient(colors: [.init("CustomColor"),.init("CustomColor2")], startPoint: .top, endPoint: .bottom)
                    
                    )
                
                if self.Notes.data.isEmpty{
                    
                    if self.Notes.noData{
                        Spacer()
                        Text("No Notes !!!")
                        Spacer()
                    }
                    else{
                        Spacer()
    //                   Data is Loading....
                        
                        Indicator()
                        
                        Spacer()
                    }
            
                    
                }
                
                else{
                    ScrollView(.vertical, showsIndicators: false) {
                        
                        VStack{
                            
                            ForEach(self.Notes.data){ i in
                                
                                HStack(spacing: 15){
                                    Button {
                                        
                                        self.docId = i.id
                                        self.txt = i.note
                                        
                                        self.show.toggle()
                                        
                                    } label: {
                                        VStack(alignment: .leading,spacing: 12){
                                            Text(i.date)
                                            
                                            Text(i.note).lineLimit(1)
                                            
                                            Divider()
                                        }.padding(10)
                                            .foregroundColor(.black)
                                    }
                                    
                                    if self.remove{
                                        Button {
                                            
                                            let db = Firestore.firestore()
                                            
                                            db.collection("notes").document(i.id).delete()
                                            
                                        } label: {
                                            
                                            Image(systemName: "minus.circle.fill")
                                                .resizable()
                                                .frame(width: 20, height:20)
                                                .foregroundColor(.init("CustomColor2"))
                                        }
                                    }
                                }.padding(.horizontal)
                            }
                        }
                    }
                }
            }.edgesIgnoringSafeArea(.top)
            Button {
                
                self.txt = ""
                self.docId = ""
                self.show.toggle()
                
            } label: {
                Image(systemName: "plus").resizable().frame(width: 18, height: 18).foregroundColor(.white)
            }.padding()
                .background(
                    .linearGradient(colors: [.init("CustomColor"),.init("CustomColor2")], startPoint: .top, endPoint: .bottom)
                )
                .clipShape(Circle())
                .padding()

        }
        .sheet(isPresented: self.$show) {
            
            EditView(txt: self.$txt, docId: self.$docId, show: self.$show)
        }
    }
}

class Host: UIHostingController<Diary>{
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
}
    
class getNotes: ObservableObject{
    @Published var data = [Note]()
    @Published var noData = false
    init(){
        let db = Firestore.firestore()
        
        db.collection("notes").order(by: "date", descending: false).addSnapshotListener { (snap, err) in
            
            if err != nil {
                print((err!.localizedDescription))
                self.noData = true
                return
            }
            
            if snap!.documentChanges.isEmpty{
                
                self.noData = true
                
                return
            }
            
            for i in  snap!.documentChanges{
                
                if i.type == .added{
                    
                    let id = i.document.documentID
                    
                     let notes = i.document.get("notes") as! String
                    
                    let date = i.document.get("date") as! Timestamp
                    
                    let format = DateFormatter()
                    
                    format.dateFormat = "dd-MM-YY-hh:mm a"
                    
                    let dataString = format.string(from: date.dateValue())
                    
                    self.data.append(Note(id: id, note: notes, date: dataString))
                    
                    
                }
                if i.type == .modified{
                    
                    let id = i.document.documentID
                    
                     let notes = i.document.get("notes") as! String
                    
                    for i  in 0..<self.data.count{
                        
                        if self.data[i].id == id{
                            
                            self.data[i].note = notes
                        }
                    }
                    }
                
        if i.type == .removed{
            
            let id = i.document.documentID
            
            for i in 0..<self.data.count{
                
                if self.data[i].id == id{
                    
                    self.data.remove(at: i)
                    
                    if self.data.isEmpty{
                        
                        self.noData = true
                    }
                    
                    return
                }
            }
            }
                }
                }
     
    }
        }
        



struct Note: Identifiable{
    var id : String
    var note: String
    var date: String
}

struct Indicator : UIViewRepresentable{
    
    func makeUIView(context: UIViewRepresentableContext<Indicator>) -> UIActivityIndicatorView {
        
        let view = UIActivityIndicatorView(style: .medium)
        view.startAnimating()
        return view
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<Indicator>) {
        
    }
}

struct EditView: View{
    @Binding var txt: String
    @Binding var docId: String
    @Binding var show: Bool
    var body: some View{

        
        ZStack(alignment: .bottomTrailing){
            
            MultiLineTF(txt: self.$txt)
                .padding()
                .background(.black.opacity(0.05))
            
            Button {
                
                self.show.toggle()
                self.SaveData()
                
            } label: {
                Text("Save").padding(.vertical).padding(.horizontal,25)
                    .foregroundColor(.white)
            }.background(
                .linearGradient(colors: [.init("CustomColor"),.init("CustomColor2")], startPoint: .top, endPoint: .bottom)
            )
            .clipShape(Capsule())
            .padding()

        }.edgesIgnoringSafeArea(.bottom)
    }
    func SaveData(){
        let db = Firestore.firestore()
        
        if self.docId != ""{
            
            db.collection("notes").document(self.docId).updateData(["notes":self.txt]) { (err) in
                
                if err != nil{
                    print((err?.localizedDescription)!)
                    return
                }
            }
        }
        else{
            db.collection("notes").document().setData(["notes": self.txt,"date":Date()]){ (err) in
                
                
                if err !=  nil{
                    print((err?.localizedDescription)!)
                    
                    return
                }
            }
        }
    }
}

struct MultiLineTF: UIViewRepresentable{
    func makeCoordinator() -> Coordinator {
        
        return MultiLineTF.Coordinator(parent1: self)
    }
    
    
    @Binding var txt: String
    
    func makeUIView(context: UIViewRepresentableContext<MultiLineTF>) -> UITextView{
        
        let view = UITextView()
        
        if self.txt != ""{
            
            view.text = self.txt
            view.textColor = .black
        }
        else{
            view.text = "Type Something"
            view.textColor = .black
        }
        
        
        view.font = .systemFont(ofSize: 18)
        view.isEditable = true
        view.backgroundColor = .clear
        view.delegate = context.coordinator
        
        return view
    }
    
    func updateUIView(_ uiView: UITextView, context: UIViewRepresentableContext<MultiLineTF>) {
        
    }
    
    class Coordinator: NSObject,UITextViewDelegate{
        
        var parent: MultiLineTF
        
        init(parent1 : MultiLineTF) {
            
            parent = parent1
        }
        
        func textViewDidBeginEditing(_ textView: UITextView) {
            
            if self.parent.txt == ""{
                
                textView.text = ""
                textView.textColor = .black
            }
        }
        
        func textViewDidChange(_ textView: UITextView) {
            
            self.parent.txt = textView.text
            
        }
    }
}

