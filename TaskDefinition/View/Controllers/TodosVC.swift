//
//  ViewController.swift
//  TaskDefinition
//
//  Created by Azimjon Abdurasulov on 18/08/24.
//

import UIKit
import SnapKit

class TodosVC: UIViewController {
    
    lazy var tableView: UITableView = {
        let tableview = UITableView()
        return tableview
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.title = "Todos"
    }


}

