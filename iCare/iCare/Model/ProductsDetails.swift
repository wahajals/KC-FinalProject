//
//  ProductsDetails.swift
//  iCare
//
//  Created by WSS on 06/09/2022.
//

import Foundation

// Migraine Products Should have

struct ProductDetails: Identifiable{
    let id = UUID()
    var name: String
    var title: String
    var url: String
}
  let ProductsData = [
    ProductDetails(name: "Magnesium", title: "According to the American Migraine Foundation , may help reduce migraines", url: ""),
    ProductDetails(name: "Melatonin", title: "While typically used to regulate sleep cycles – not marketed as a migraine relief product – the hormone Melatonin has been shown in study to have potential promise in reducing the frequency of migraine", url: ""),
    ProductDetails(name: "Vit B2", title: "Could play a role in reducing frequency and duration of migraines", url: ""),
    ProductDetails(name: "Stopain Topical Gel", title: "Is meant to be rubbed on the back of the neck at the onset of a migraine attack", url: ""),
    ProductDetails(name: "Migraine Stick", title: "Apply to temples, forehead and back of neck at the first signs of a migraine", url: ""),
    ProductDetails(name: "The Headache Hat", title: "This hat is meant to be stored in the freezer or refrigerator, and contains 16 gel-containing ice packs. You can wear it over the top of your head or pull it further down over your face and neck, depending on where your pain points are", url: ""),
    ProductDetails(name: "Migraine Glasses", title: " migraine glasses work by filtering out the wavelengths of light that are most likely to trigger or aggravate migraines, while letting the rest of the light in", url: ""),
  ]
