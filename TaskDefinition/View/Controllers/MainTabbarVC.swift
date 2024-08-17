//
//  MainTabbarVC.swift
//  TaskDefinition
//
//  Created by Azimjon Abdurasulov on 18/08/24.
//

import UIKit


class MainTabbarVC: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewControllers = [self.postsVC(), self.todosVC(), self.usersVC()]
    }
}

extension MainTabbarVC {
    
    private func postsVC()-> UIViewController {
        
        let vc = PostsVC()
        vc.tabBarItem.image = UIImage(systemName: "square.and.pencil")
        vc.tabBarItem.title = "Posts"

        return vc
        
    }
    
    private func todosVC()-> UIViewController {
        
        let vc = TodosVC()
        vc.tabBarItem.image = UIImage(systemName: "list.bullet.clipboard")
        vc.tabBarItem.title = "Todos"

        return vc
        
    }
    
    private func usersVC()-> UIViewController {
        
        let vc = UsersVC()
        vc.tabBarItem.image = UIImage(systemName: "person.3")
        vc.tabBarItem.title = "Users"

        return vc
        
    }
}
