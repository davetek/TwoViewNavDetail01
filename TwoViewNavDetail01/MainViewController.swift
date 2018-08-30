//
//  MainViewController.swift
//  TwoViewNavDetail01
//
//  Created by David Lawrence on 8/26/18.
//  Copyright © 2018 clarity for action. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBAction func openDetailView(_ sender: UIButton) {
        let buttonTapped = sender
        print("button tapped: " + String(describing: sender.tag))
        performSegue(withIdentifier: "MainVCtoDetailVC", sender: buttonTapped)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailVC = segue.destination as? DetailViewController else {
            print("could not access detail view controller")
            return
        }
        
        guard let buttonTapped = sender as? UIButton else {
            print("could not access button tapped")
            return
        }
        
        //set this in detail vc so that view controller
        // can access the data for the specific button tapped
        detailVC.dataSelected = buttonTapped.tag
        
//        guard let labelText = detailVC.watermarkLabel.text else {
//            print("fail")
//            return
//        }
        
        detailVC.labelText = String(describing: buttonTapped.tag)
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

 
}
