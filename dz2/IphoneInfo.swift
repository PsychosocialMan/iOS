//
//  IphoneInfo.swift
//  dz2
//
//  Created by Борис Голубков on 10.10.2018.
//  Copyright © 2018 StudentsParty. All rights reserved.
//

// Меняем Foundation
import UIKit

enum Currency: String {
    case RUR = "₽"
    case USD = "$"
    case EUR = "€"
}

class IphoneInfo {
    var id: Int
    var price: Int
    var currency: Currency
    var specifications: String
    var name: String
    var phoneImage: UIImage
    
    init(id: Int, price: Int, currency: Currency, specifications: String, name: String, phoneImage: UIImage) {
        self.id = id
        self.price = price
        self.currency = currency
        self.specifications = specifications
        self.name = name
        self.phoneImage = phoneImage
    }
}
