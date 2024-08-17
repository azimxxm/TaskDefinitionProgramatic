//
//  TodosTVC.swift
//  TaskDefinition
//
//  Created by Azimjon Abdurasulov on 18/08/24.
//

import UIKit
import SnapKit

class TodosTVC: UITableViewCell {

    // Lazy initialization of UI elements
    lazy var titleLabel: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.systemFont(ofSize: 16)
        lbl.numberOfLines = 0
        lbl.textAlignment = .left
        return lbl
    }()
    
    lazy var isCompleted: UISwitch = {
        let sw = UISwitch()
        return sw
    }()
    
    static let identifier = String(describing: TodosTVC.self)
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        config()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        config()
    }
    
    // Set data for the cell
    func setData(item: TodosDM) {
        titleLabel.text = item.title
        isCompleted.isOn = item.completed
    }
    
    private func config() {
        [titleLabel, isCompleted].forEach(contentView.addSubview(_:))

        // Layout isCompleted switch
        isCompleted.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().inset(16)
        }

        
        titleLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(16)
            make.trailing.equalTo(isCompleted.snp.leading).offset(-16)
            make.leading.equalToSuperview().inset(16)
        }
    }

}

