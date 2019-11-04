//
//  ViewController.swift
//  Checklist
//
//  Created by Chantal Demissie on 11/3/19.
//  Copyright © 2019 Chantal Demissie. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1000
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        
        if let label = cell.viewWithTag(1000) as? UILabel {
            if indexPath.row % 5 == 0 {
                label.text = "go to farmers market"
            } else if indexPath.row % 4 == 0 {
                label.text = "do yoga"
            } else if indexPath.row % 3 == 0 {
                label.text = "code an app"
            } else if indexPath.row % 2 == 0 {
                label.text = "walk percy"
            } else if indexPath.row % 1 == 0 {
                label.text = "do interview practice"
            }
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            if cell.accessoryType == .none {
                cell.accessoryType = .checkmark
            } else {
                cell.accessoryType = .none
            }
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }
}

