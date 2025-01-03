//
//  urunListe.swift
//  kategoriApp
//
//  Created by Bertan Taşman on 7.12.2024.
//

import Foundation

class urunListe {
    var id: Int?
    var name: String?
    var image: String?
    var price: Float?
    var oldprice: Float?
    var detay: String?
    
    init(id: Int? = nil, name: String? = nil, image: String? = nil, price: Float? = nil, oldprice: Float? = nil, detay: String? = nil) {
        self.id = id
        self.name = name
        self.image = image
        self.price = price
        self.oldprice = oldprice
        self.detay = detay
    }
}
