//
//  Doctors.swift
//  iCare
//
//  Created by WSS on 03/09/2022.
//

import Foundation

struct Doctors: Identifiable{
    let id = UUID()
    var name: String
    var title: String
    var Speciality: [String]
    var types: String
    var url: String
    var number: [String]
}

 let DoctorsData = [
//    Neuro Doctors
    Doctors(name: "Dr. Abdulaziz Ashkanani",title: "Neurology Consultant", Speciality: ["Headaches and Migraine","Peripheral neuropathy, e. g.  Diabetic Neuropathies.","Epilepsy"], types: "Neurology", url: "https://www.daralshifa.com/Specialties/OurDoctors?Id=58e08aec-0ad5-4fd7-86e5-dad0be4e89e6", number: ["1802555"]),
//
    Doctors(name: "Dr. Hassan Khajah",title: "Neurosurgeon", Speciality: ["Brain & Spine"], types: "Neurology", url: "https://www.instagram.com/hkhajahclinic/?hl=en", number: ["94195151","94195252"]),
//
    Doctors(name: "Dr. Hisham Al-Khayat",title: "Neurosurgeon", Speciality: ["Brain & Spine"], types: "Neurology", url: "https://dr-alkhayat.com/en/doctors/1", number: ["1877000"]),
//
    Doctors(name: "Dr. Khalid Al-Hassan",title: "Neurology Consultant & Vascular Specialist", Speciality: ["Stroke","Movement Disorder","Headache","Multiple Sclerosis","Muscle Diseases & Peripheral nerve disorder","Dementia"], types: "Neurology", url: "https://www.sih-kw.com/en/Find-Doctor/244/Dr-Khalid-Al-Hassan", number: ["1830003"]),
//
    Doctors(name: "Dr. Raed Al-Roughani",title: "Neruology Consultant & MS Specialist", Speciality: ["Headaches","Dizziness","Neck and back pain","Seizures & Epilepsy","Multiple Sclerosis","Muscle diseases","Movement disorders","Dementia disease"], types: "Neurology",url: "http://www.alseef-hospital.com/doctors/dr-raed-a-alroughani/", number: ["1881122"]),
//    Psychs Doctors
    Doctors(name: "Dr. Mariam Al-Awadhi",title: "Consultant Psychiatrist", Speciality: ["Mental Health Disorders"], types: "Mental Health", url: "https://www.mariamalawadhi.com", number: ["22269308","22269307"]),
    Doctors(name: "Dr. Mohammad Alsuwaidan",title: "Consultant Psychiatrist", Speciality: ["Mental Health Disorders"], types: "Mental Health", url: "https://mindwellkw.com", number: ["22055334"]),
]
