//
//  ViewController.swift
//  dz2
//
//  Created by Борис Голубков on 06.10.2018.
//  Copyright © 2018 StudentsParty. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var model = IphonesModel()
    private let contentId = "\(IphoneCell.self)"
    private let addsId = "\(AddsCell.self)"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTable()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    func configureTable(){
        productTable.delegate = self
        productTable.dataSource = self
        productTable.tableFooterView = UIView()
        productTable.rowHeight = UITableViewAutomaticDimension
        productTable.register(UINib(nibName: "IphoneCell", bundle: nil), forCellReuseIdentifier: contentId)
        productTable.register(UINib(nibName: "AddsCell", bundle: nil), forCellReuseIdentifier: addsId)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let count = model.models.count + model.models.count / 3 + 1
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if ((indexPath.row + 1) % 3 == 0){
            guard let cell = productTable.dequeueReusableCell(withIdentifier: addsId, for: indexPath) as? AddsCell else {
                return UITableViewCell()
            }
            return cell
        } else {
            guard let cell = productTable.dequeueReusableCell(withIdentifier: contentId, for: indexPath) as? IphoneCell else {
                return UITableViewCell()
            }
            cell.configureCell(info: model.models[indexPath.row - indexPath.row / 3])
            return cell
        }
        
    }

    @IBOutlet weak var productTable: UITableView!
    

}

