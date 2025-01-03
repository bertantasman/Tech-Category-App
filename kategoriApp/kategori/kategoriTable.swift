//
//  kategoriTable.swift
//  kategoriApp
//
//  Created by Bertan Taşman on 6.12.2024.
//

import UIKit

class kategoriTable: UITableViewCell {

    @IBOutlet weak var imageViewKategori: UIImageView!
    @IBOutlet weak var labelUrunKategori: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        imageViewKategori.contentMode = .scaleAspectFit
        imageViewKategori.clipsToBounds = true
        
        
        labelUrunKategori.numberOfLines = 0
        labelUrunKategori.lineBreakMode = .byWordWrapping
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        imageViewKategori.image = nil
    }
}

