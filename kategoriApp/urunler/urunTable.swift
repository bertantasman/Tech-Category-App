//
//  urunTable.swift
//  kategoriApp
//
//  Created by Bertan Taşman on 7.12.2024.
//

import UIKit

class urunTable: UITableViewCell {
    
    @IBOutlet weak var urunNewPrice: UILabel!
    @IBOutlet weak var urunOldPrice: UILabel!
    @IBOutlet weak var urunTableImage: UIImageView!
    
    @IBOutlet weak var UrunTableLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        urunTableImage.contentMode = .scaleAspectFit
        urunTableImage.clipsToBounds = true
        
        
        UrunTableLabel.numberOfLines = 0
        UrunTableLabel.lineBreakMode = .byWordWrapping
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        urunTableImage.image = nil
    }

}
