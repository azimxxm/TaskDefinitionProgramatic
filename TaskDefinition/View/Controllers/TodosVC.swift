//
//  TodosVC.swift
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
    
    var viewModel = TodosVM()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        setup()
        config()
        dataBinding()
    }
    
    private func config() {
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    private func setup() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.register(TodosCell.self, forCellReuseIdentifier: TodosCell.identifier)
    }
    
    private func dataBinding() {
        viewModel.data.bind { [weak self] todos in
            if !todos.isEmpty {
                self?.tableView.reloadData()
            }
        }
        
        viewModel.getData()
    }
}

extension TodosVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.data.value.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TodosCell.identifier, for: indexPath) as? TodosCell else {return UITableViewCell()}
        cell.setData(item: viewModel.data.value[indexPath.row])
        cell.selectionStyle = .none
        return cell
    }
}

