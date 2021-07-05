//
//  ViewController.swift
//  FirstDayExercise
//
//  Created by Sachin Kumar on 12/05/21.
//  Copyright © 2021 Sachin Kumar. All rights reserved.
//

import UIKit

struct Provider {
    var name: String 
    var address: String
}


class ProviderListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    //MARK: - Properties
    private var productList: [Provider] = []
    
    
    //MARK: - Interface Builder Outlets
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var iconImage: UIImageView!
    
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.applyFinishingTouchesToUIElements()
        self.setUpDataSource()
    }
    
    
    //MARK: - UITableViewDataSource Methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        productList.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! ProviderListTableViewCell
        
        let name = productList[indexPath.row]
        cell.populateUI(sender: name)
        cell.layer.cornerRadius = 4.0
        tableView.reloadRows(at: [indexPath], with: .automatic)

        return cell
    }
    
    
    //MARK: - Helpers
    private func applyFinishingTouchesToUIElements() {
        iconImage.image = iconImage.image?.withRenderingMode(.alwaysTemplate)
        iconImage.tintColor = .white
        
        let nib = UINib(nibName: "TableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "TableViewCell")
        
        tableView.estimatedRowHeight = 88
        tableView.rowHeight = UITableView.automaticDimension
        
    }
    
    private func setUpDataSource() {
        let providers =  ["Rohit Kaushal", "Hitesh Verma", "Hitesh Verma", "Rohit Kaushal", "Rohit Kaushal"]
        
        for name in providers {
            productList.append(Provider(name: name, address: "#4812 sector-70,Mohali chandigarh"))
        }
    }
    
}

