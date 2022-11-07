//
//  TableViewCell.swift
//  to-do
//
//  Created by Otávio da Silva on 07/11/22.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var labelTesk: UILabel!

    @IBOutlet weak var buttonTrash: UIButton!
    var trashProtocol: Updatecells?
    @IBAction func tapTrash(_ sender: UIButton) {
        trashProtocol?.tapToTrash(cell: self)
    }
    
}
