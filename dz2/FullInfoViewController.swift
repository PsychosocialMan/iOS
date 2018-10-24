//
//  FullInfoViewController.swift
//  dz2
//
//  Created by Борис Голубков on 15.10.2018.
//  Copyright © 2018 StudentsParty. All rights reserved.
//

import UIKit

class FullInfoViewController: UIViewController {
    
    private let segueNameFullImage = "toFullImage"

    @IBOutlet weak var iphoneName: UILabel!
    
    var iphoneInfo: IphoneInfo!
    
    @IBOutlet weak var iphoneImage: UIImageView!
    @IBOutlet weak var iphoneDescription: UILabel!
    @IBOutlet weak var currency: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var specifications: UILabel!
    
    @IBOutlet weak var fullScreen: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareUI()
    }
    
    private func prepareUI() {
        iphoneName.text = iphoneInfo.name
        iphoneImage.image = iphoneInfo.phoneImage
        iphoneDescription.text = iphoneInfo.description
        currency.text = iphoneInfo.currency.rawValue
        price.text = "\(iphoneInfo.price)"
        specifications.text = iphoneInfo.specifications

        let gesture = UITapGestureRecognizer(target: self, action: #selector(showFullImage))

        fullScreen.addGestureRecognizer(gesture)
    }
    
    @objc func showFullImage(){
        performSegue(withIdentifier: segueNameFullImage, sender: iphoneInfo.phoneImage)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueNameFullImage {
            guard
                let controller = segue.destination as? FullImageViewController,
                let image = sender as? UIImage
                else { return }
            controller.image = image
        }
    }

}
