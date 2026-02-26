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
        
        switch title
        {
        case "Chocolate Chip Cookies":
            foodImage.image = UIImage(named: "cookieImage")
            descLabel.text = """
                    Tasty homemade chocolate chip cookies that are soft and chewy.

                    Ingredients:
                    • 2 cups flour
                    • 1 cup sugar
                    • 1 cup chocolate chips
                    • 2 eggs
                    • 1 tsp vanilla
                    """
        case "Apple Pie":
            foodImage.image = UIImage(named: "pieImage")
            descLabel.text = """
                    Classic apple pie with a flaky crust and cinnamon-spiced filling.

                    Ingredients:
                    • 3 apples
                    • 2 cups flour
                    • 1 cup sugar
                    • 1 tsp cinnamon
                    • 1 tbsp butter
                    """
        case "Chocolate Cake":
            foodImage.image = UIImage(named: "cakeImage")
            descLabel.text = """
                    Rich and moist chocolate cake perfect for any occasion.

                    Ingredients:
                    • 2 cups flour
                    • 1 cup cocoa powder
                    • 1.5 cups sugar
                    • 2 eggs
                    • 1 cup milk
                    """
        default :
            break
        }
    }


}

