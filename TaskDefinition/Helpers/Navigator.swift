//
//  Navigator.swift
//  TaskDefinition
//
//  Created by Azimjon Abdurasulov on 18/08/24.
//

import UIKit

final class Navigator<viewController: UIViewController> {
    
    private var rootVC: UIViewController
    
    init(viewController: viewController) {
        self.rootVC = viewController
    }
    
    func postDetailVC(data: PostsDM) {
        let vc = PostDetailVC()
        vc.viewModel.data = data
        vc.hidesBottomBarWhenPushed = true
        self.rootVC.navigationController?.pushViewController(vc, animated: true)
        
    }
}
