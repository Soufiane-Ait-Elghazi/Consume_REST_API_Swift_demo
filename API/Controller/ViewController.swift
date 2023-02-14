//
//  ViewController.swift
//  API
//
//  Created by Soufiane AIT ELGHZI on 4/16/22.
//  Copyright © 2022 Soufiane AIT ELGHZI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let parser = Parser()
    var users = [User]()
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        parser.parse{
            data in
            self.users = data
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
            
        }
        tableView.dataSource = self
    }
   
}
extension ViewController : UITableViewDataSource{
      // Return the number of rows for the table.
      
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
      }

      // Provide a cell object for each row.
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         // Fetch a cell of the appropriate type.
         let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
         // Configure the cell’s contents.
        cell.textLabel!.text = users[indexPath.row].mail
        
             
         return cell
      }
   }

