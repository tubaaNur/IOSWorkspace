//
//  ViewController.swift
//  BasicTableView
//
//  Created by Tuba Nur  on 3.08.2023.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var foods = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        foods = ["Lahmacun", "Köfte", "Döner", "Ayran", "Su", "Tavuk", "Pilav", "Dürüm"]
        tableView.delegate = self
        tableView.dataSource = self
        
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foods.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath:
        IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellName", for: <#T##IndexPath#>)
        cell.textLabel?.text = foods[indexPath.row]
        return cell
    }
    


}

