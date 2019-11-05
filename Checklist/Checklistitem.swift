//
//  Checklistitem.swift
//  Checklist
//
//  Created by Chantal Demissie on 11/4/19.
//  Copyright © 2019 Chantal Demissie. All rights reserved.
//

import Foundation

class ChecklistItem {
    var text = ""
    var checked = false
    
    func toggleChecked() {
        checked = !checked
    }
}
