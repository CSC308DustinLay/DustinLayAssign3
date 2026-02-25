//
//  ViewController.swift
//  DustinLayAssign3
//
//  Created by Heather Bishop on 2/24/26.
//

import UIKit

class ViewControllerWelcome: UIViewController {

    @IBAction func cookieManual(_ sender: Any)
    {
        performSegue(withIdentifier: "cookieSegue", sender: self)
    }
    
    @IBAction func pieManual(_ sender: Any)
    {
        performSegue(withIdentifier: "pieSegue", sender: self)
    }
    
    @IBAction func cakeProgram(_ sender: Any)
    {
        let sb = storyboard ?? UIStoryboard(name: "Main", bundle: nil)
        guard let vc = sb.instantiateViewController(withIdentifier: "ViewControllerRecipes") as? ViewControllerRecipes else{
            return
        }
        vc.title = "Chocolate Cake"
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dest = segue.destination as? ViewControllerRecipes
        {
            if let id = segue.identifier
            {
                if id == "cookieSegue"
                {
                    dest.title = "Chocolate Chip Cookies"
                }
                else if id == "pieSegue"
                {
                    dest.title = "Apple Pie"
                }
            }
            else
            {
                dest.title = "ERROR"
            }
        }
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

