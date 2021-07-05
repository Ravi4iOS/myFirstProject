//
//  TableViewCell.swift
//  FirstDayExercise
//
//  Created by Sachin Kumar on 12/05/21.
//  Copyright © 2021 Sachin Kumar. All rights reserved.
//

import UIKit

class ProviderListTableViewCell: UITableViewCell {
    
    
    //MARK: - Properties
    private var selectedIndex: Int = 1
    
    
    //MARK: - Interface Builder Outlets
    @IBOutlet private weak var productImage: UIImageView!
    @IBOutlet private weak var productNameLabel: UILabel!
    @IBOutlet private weak var productLocationLabel: UILabel!
    @IBOutlet private weak var viewProfileButton: UIButton!
    @IBOutlet private weak var firstButton: UIButton!
    @IBOutlet private weak var secondButton: UIButton!
    @IBOutlet private weak var thirdButton: UIButton!
    @IBOutlet private weak var fourthButton: UIButton!
    @IBOutlet private weak var fifthButton: UIButton!
    @IBOutlet weak var myView: UIView!
    
    
    //MARK: - Awake From Nib
    override func awakeFromNib() {
        super.awakeFromNib()
        productImage.layer.cornerRadius = 4.0
        viewProfileButton.layer.cornerRadius = 4.0
        myView.layer.cornerRadius = 4.0
    }
    
    
    //MARK: - Interface Builder Actions
    @IBAction func firstButtonAction(_ sender: UIButton) {
        sender.isSelected.toggle()
        selectedIndex = firstButton.tag
        self.buttonRating()
    }
    
    
    @IBAction func secondButtonAction(_ sender: UIButton) {
        sender.isSelected.toggle()
        selectedIndex = secondButton.tag
        self.buttonRating()
    }
    
    
    @IBAction func thirdButtonAction(_ sender: UIButton) {
        sender.isSelected.toggle()
        selectedIndex = thirdButton.tag
        self.buttonRating()
    }
    
    
    @IBAction func fourthButtonAction(_ sender: UIButton) {
        sender.isSelected.toggle()
        selectedIndex = fourthButton.tag
        self.buttonRating()
    }
    
    
    @IBAction func fifthButtonAction(_ sender: UIButton) {
        sender.isSelected.toggle()
        selectedIndex = fifthButton.tag
        self.buttonRating()
    }
    
    
    //MARK: - PopulateUI
    func populateUI(sender: Provider) {
        productNameLabel.text = sender.name
        productLocationLabel.text = sender.address
    }
    
    
    //MARK: - Helpers
    func buttonRating() {
        let buttons = [firstButton, secondButton, thirdButton, fourthButton, fifthButton]
        
        for(_, button) in buttons.enumerated() {
            if selectedIndex >= button?.tag ?? 0 {
                button?.isSelected = true
                let image = UIImage(named: "selectedStar")?.withRenderingMode(.alwaysTemplate)
                button?.setImage(image, for: .selected)
                button?.imageView?.tintColor = .blue
            }
                
            else {
                button?.isSelected = false
            }
        }
    }
    
}
