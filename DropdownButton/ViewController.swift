//
//  ViewController.swift
//  DropdownButton
//
//  Created by Ram Mhapasekar on 18/11/17.
//  Copyright © 2017 rammhapasekar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var dropDwonButton: DropdownButton = {
        let button = DropdownButton.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Click Me 🤓", for: .normal)
        button.layer.cornerRadius = 5.0
        button.backgroundColor = UIColor.init(named: "buttonColor")
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Add Button to the View Controller
        self.view.addSubview(dropDwonButton)
        
        //button Constraints
        dropDwonButton.anchor(self.view.topAnchor, left: self.view.leftAnchor, bottom: nil, right: nil, topConstant: 100, leftConstant: 100, bottomConstant: 0, rightConstant: 0, widthConstant: 150, heightConstant: 45)
        
        //Set the drop down menu's options
        dropDwonButton.dropView.dropDownOptions = ["Blue", "Green", "Magenta", "White", "Black", "Pink"]
    }
}
