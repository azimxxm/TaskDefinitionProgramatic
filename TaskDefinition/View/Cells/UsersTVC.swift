//
//  UsersTVC.swift
//  TaskDefinition
//
//  Created by Azimjon Abdurasulov on 18/08/24.
//

import UIKit
import SnapKit

class UsersTVC: UITableViewCell {

    // Lazy initialization of UI elements
    lazy var nameLabel: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.systemFont(ofSize: 16)
        lbl.numberOfLines = 0
        lbl.textAlignment = .left
        return lbl
    }()
    
    lazy var usernamelLabel: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.systemFont(ofSize: 16)
        lbl.numberOfLines = 0
        lbl.textAlignment = .left
        return lbl
    }()
    
    lazy var emailLabel: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.systemFont(ofSize: 16)
        lbl.numberOfLines = 0
        lbl.textAlignment = .left
        return lbl
    }()
    
    
    static let identifier = String(describing: UsersTVC.self)
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        config()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        config()
    }
    
    // Set data for the cell
    func setData(item: UsersDM) {
        nameLabel.text = "Name: \(item.name)"
        usernamelLabel.text = "Username: \(item.username)"
        emailLabel.text = "Email: \(item.email)"
    }
    
    private func config() {
        [nameLabel, usernamelLabel, emailLabel].forEach(contentView.addSubview(_:))
        
        nameLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(16)
            make.leading.trailing.equalToSuperview().inset(16)
        }
        
        usernamelLabel.snp.makeConstraints { make in
            make.top.equalTo(nameLabel.snp.bottom).offset(16)
            make.leading.trailing.equalToSuperview().inset(16)
        }
        
        emailLabel.snp.makeConstraints { make in
            make.top.equalTo(usernamelLabel.snp.bottom).offset(16)
            make.leading.trailing.equalToSuperview().inset(16)
        }
    }

}
