//
//  FullImageViewController.swift
//  dz2
//
//  Created by Борис Голубков on 15.10.2018.
//  Copyright © 2018 StudentsParty. All rights reserved.
//

import UIKit

class FullImageViewController: UIViewController {
    
    var image: UIImage!

    @IBOutlet weak var imageUI: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageUI.image = image
    }


}
