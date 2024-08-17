//
//  PostDetailVC.swift
//  TaskDefinition
//
//  Created by Azimjon Abdurasulov on 18/08/24.
//

import UIKit
import SnapKit

class PostDetailVC: UIViewController {
    
    lazy var titleLabel: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.systemFont(ofSize: 24)
        lbl.numberOfLines = 0
        return lbl
    }()
    
    lazy var bodyLabel: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.systemFont(ofSize: 18)
        lbl.numberOfLines = 0
        lbl.textColor = UIColor.gray
        return lbl
    }()
    
    var viewModel = PostDetailVM()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.title = "Post Detail"
        [titleLabel, bodyLabel].forEach(self.view.addSubview(_:))
        config()
        setData()
    }

    private func setData() {
        if let data = viewModel.data {
            print(data)
            titleLabel.text = data.title
            bodyLabel.text = data.body
        }
    }
    
    private func config() {
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide).offset(24)
            make.centerX.equalToSuperview()
            make.leading.trailing.equalToSuperview().inset(16)
        }
        
        bodyLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(16)
            make.leading.trailing.equalToSuperview().inset(16)
            make.centerX.equalToSuperview()
        }
    }

}
