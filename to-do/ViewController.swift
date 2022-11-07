//
//  ViewController.swift
//  to-do
//
//  Created by Otávio da Silva on 07/11/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, Updatecells {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayString.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.labelTesk.text = arrayString[indexPath.row]
        cell.trashProtocol = self
        return cell
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var addTask: UITextField!
    
    var arrayString: [String] = []
    var saveInformation = ""
    var saveInformation = self(.addTaskField())

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    
    }
    
    @IBAction func sendTask(_ sender: UIButton) {
        addTaskField()
        addTask.text = ""
        
    }
    
    func addTaskField() {
        let task = addTask.text!
        arrayString.append(task)
        tableView.reloadData()
    }
    
    func tapToTrash(cell: UITableViewCell) {
        let indexPath = tableView.indexPath(for: cell)
        arrayString.remove(at: indexPath?.row ?? 0)
        tableView.reloadData()
    }
}

