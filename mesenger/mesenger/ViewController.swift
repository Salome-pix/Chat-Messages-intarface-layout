//
//  ViewController.swift
//  mesenger
//
//  Created by Mcbook Pro on 18.02.22.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource , UITableViewDelegate {
    
    var model = [Message]()
    

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var messageField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "MessageCell", bundle: nil), forCellReuseIdentifier: "MessageCell")
    }

    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let dataModel = model[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MessageCell") as! MessageCell
        cell.labelMessage.text = dataModel.text
        cell.labelMessage.sizeToFit()
        cell.labelMessage.layer.masksToBounds = true
                cell.labelMessage.layer.cornerRadius = 20
        
        return cell
    
        
    }
    
    
    @IBAction func sendButton(_ sender: Any) {
        
        let newModel = Message(text: messageField.text!)
        model.append(newModel)
        tableView.reloadData()
        
    }
    
    
    
}


