//
//  TodoList.swift
//  Checklist
//
//  Created by Chantal Demissie on 11/4/19.
//  Copyright © 2019 Chantal Demissie. All rights reserved.
//

import Foundation


class TodoList {
    
    var todos: [ChecklistItem] = []
    
    init() {
        
        let row0Item = ChecklistItem()
        let row1Item = ChecklistItem()
        let row2Item = ChecklistItem()
        let row3Item = ChecklistItem()
        let row4Item = ChecklistItem()
        
        row0Item.text = "Take a jog"
        row1Item.text = "Do Yoga"
        row2Item.text = "code an app"
        row3Item.text = "walk percy"
        row4Item.text = "do interview practice"
        
        todos.append(row0Item)
        todos.append(row1Item)
        todos.append(row2Item)
        todos.append(row3Item)
        todos.append(row4Item)
        
    }
}