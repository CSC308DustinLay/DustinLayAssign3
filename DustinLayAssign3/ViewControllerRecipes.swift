//Users/heatherbishop/Documents/CSC308/Assign3/DustinLayAssign3/DustinLayAssign3/ViewController.swift//
//  ViewController.swift
//  DustinLayAssign3
//
//  Created by Heather Bishop on 2/24/26.
//

import UIKit

class ViewControllerRecipes: UIViewController {
    
    @IBOutlet weak var foodImage: UIImageView!
    @IBOutlet weak var clarityView: UIView!
    @IBOutlet weak var descLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        clarityView.layer.cornerRadius = 5.0
        clarityView.clipsToBounds = true
        
        
    }


}

