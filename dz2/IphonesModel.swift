//
//  IphonesModel.swift
//  dz2
//
//  Created by Борис Голубков on 10.10.2018.
//  Copyright © 2018 StudentsParty. All rights reserved.
//

import Foundation

class IphonesModel {
    var models: [IphoneInfo]
    
    init() {
        let iphone6 = IphoneInfo(id: 1, price: 500, currency: Currency.EUR, specifications: "32GB", name: "Iphone 6", phoneImage: #imageLiteral(resourceName: "iphone7sPlus"), description: "Многострочное описание необходимости купить именно этот телефон, а не андроид. stringstringstringstringstring")
        let iphone6s = IphoneInfo(id: 2, price: 550, currency: Currency.USD, specifications: "32GB", name: "Iphone 6S", phoneImage: #imageLiteral(resourceName: "iphone-xs-max"), description: "Многострочное описание необходимости купить именно этот телефон, а не Iphone 6")
        let iphone8plus = IphoneInfo(id: 3, price: 70000, currency: Currency.RUR, specifications: "64GB", name: "Iphone 8 Plus", phoneImage: #imageLiteral(resourceName: "iphone7sPlus"), description: "Многострочное описание необходимости купить именно этот телефон, а не Iphone 7 Plus.")
        let iphone7plus = IphoneInfo(id: 4, price: 600, currency: Currency.USD, specifications: "32GB", name: "Iphone 7 Plus", phoneImage: #imageLiteral(resourceName: "iphone7sPlus"), description: "Многострочное описание необходимости купить именно этот телефон, а не Iphone 6s.")
        let iphoneXsMax = IphoneInfo(id: 5, price: 1000, currency: Currency.EUR, specifications: "64GB", name: "Iphone XS Max", phoneImage: #imageLiteral(resourceName: "iphone-xs-max"), description: "Многострочное описание необходимости купить именно этот телефон, а не Iphone 8 Plus. И Face Id.")
        
        self.models = [iphone6, iphone6s, iphone8plus, iphone7plus, iphoneXsMax]
        
    }
}
