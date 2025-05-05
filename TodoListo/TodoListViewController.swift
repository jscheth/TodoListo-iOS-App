//
//  ViewController.swift
//  TodoListo
//
//  Created by Jonathan Cheth on 4/27/25.
//

import UIKit

class TodoListViewController: UITableViewController {
    
    let itemArray = ["Buy Eggs", "Pet Cat", "Buy Game"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }
}

