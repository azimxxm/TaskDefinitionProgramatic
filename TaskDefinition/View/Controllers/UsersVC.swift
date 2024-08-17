//
//  UsersVC.swift
//  TaskDefinition
//
//  Created by Azimjon Abdurasulov on 18/08/24.
//

import UIKit
import SnapKit

class UsersVC: UIViewController {
    
    lazy var tableView: UITableView = {
        let tableview = UITableView()
        tableview.register(UsersTVC.self, forCellReuseIdentifier: UsersTVC.identifier)
        tableview.rowHeight = 120
        return tableview
    }()
    
    var viewModel = UsersVM()
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
    }
    
    private func dataBinding() {
        viewModel.data.bind { [weak self] users in
            if !users.isEmpty {
                self?.tableView.reloadData()
            }
        }
        
        viewModel.getData()
    }
}

extension UsersVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.data.value.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: UsersTVC.identifier, for: indexPath) as? UsersTVC else {return UITableViewCell()}
        cell.setData(item: viewModel.data.value[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        Navigator(viewController: self).postDetailVC(data: viewModel.data.value[indexPath.row])
    }
}
