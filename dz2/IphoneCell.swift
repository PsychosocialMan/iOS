//
//  IphoneCell.swift
//  dz2
//
//  Created by Борис Голубков on 07.10.2018.
//  Copyright © 2018 StudentsParty. All rights reserved.
//

import UIKit

class IphoneCell: UITableViewCell {

    @IBOutlet weak var price: UILabel!
    
    @IBOutlet weak var specifications: UILabel!
    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var phoneImage: UIImageView!
    
    @IBOutlet weak var currency: UILabel!
    
    // Необходимо для связки ячейки и информации в ней
    private var info: IphoneInfo?
    
    // Вызывается, когда ячейка будет загружена из nib
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configureCell(info: IphoneInfo) {
        self.info = info
        price.text = "\(info.price)"
        specifications.text = info.specifications
        name.text = info.name
        phoneImage.image = info.phoneImage
        currency.text = "\(info.currency.rawValue)"
    }
    
}
