//
//  ViewController.swift
//  Checklist
//
//  Created by Chantal Demissie on 11/3/19.
//  Copyright © 2019 Chantal Demissie. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController {
    
           var todoList: TodoList
    
    
    required init?(coder aDecoder: NSCoder) {
        todoList = TodoList()
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoList.todos.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        let item = todoList.todos[indexPath.row]
        configureText(for: cell, with: item)
        configureCheckMark( for: cell, with: item)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            let item = todoList.todos[indexPath.row]
            configureCheckMark(for: cell,with: item)
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }
    
    func configureText(for cell: UITableViewCell, with item: ChecklistItem) {
        if let label = cell.viewWithTag(1000) as? UILabel {
            label.text = item.text
           
        }
            }
    
    func configureCheckMark(for cell: UITableViewCell, with item: ChecklistItem) {
        if item.checked {
            cell.accessoryType = .none
        } else {
            cell.accessoryType = .checkmark
        }
        item.toggleChecked()
    }
}



