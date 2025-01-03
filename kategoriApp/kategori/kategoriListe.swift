//
//  kategoriListe.swift
//  kategoriApp
//
//  Created by Bertan Taşman on 6.12.2024.
//

import Foundation

class kategoriListe {
    var id: Int?
    var kategoriName: String?
    var resim: String?
    var urunler: [urunListe]
    
    init(id: Int, kategoriName: String, resim: String, urunler: [urunListe]) {
        self.id = id
        self.kategoriName = kategoriName
        self.resim = resim
        self.urunler = urunler
    }
}
