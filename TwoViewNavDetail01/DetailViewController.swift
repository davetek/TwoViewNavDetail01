//
//  DetailViewController.swift
//  TwoViewNavDetail01
//
//  Created by David Lawrence on 8/26/18.
//  Copyright © 2018 clarity for action. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController,  UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    
    //set by the main view controller to the
    // value of the button tapped to open this view controller's views
    var dataSelected = 0
    
    //this is the class containing a dictionary of string arrays
    let dataSource = DetailDataSource()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier") else {
            fatalError()
        }
        
        guard let data = dataSource.data[dataSelected] else {
            fatalError()
        }
        
        let cellData = data[indexPath.row]
        
        guard let cellTextLabel = cell.textLabel else {
            fatalError()
            }
        
        cellTextLabel.text = cellData
        return cell
    }
    
    

    @IBOutlet var watermarkLabel: UILabel!
    
    var labelText = "Something"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        
        watermarkLabel.text = labelText

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

 

}
