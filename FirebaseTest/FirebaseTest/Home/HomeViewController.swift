//
//  HomeViewController.swift
//  FirebaseTest
//
//  Created by 宮崎真 on 2019/11/28.
//  Copyright © 2019 宮崎真. All rights reserved.
//

import UIKit
import PGFramework
import FirebaseAuth


// MARK: - Property
class HomeViewController: BaseViewController {
    @IBAction func touchedLogoutButton(_ sender: UIButton) {
        UserModel.logOut {
            let vc = SignUpViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}

// MARK: - Life cycle
extension HomeViewController {
    override func loadView() {
        super.loadView()
        navigationController?.isNavigationBarHidden = true
        if Auth.auth().currentUser?.email == nil {
            let vc = SignUpViewController()
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}

// MARK: - Protocol
extension HomeViewController {
    
}

// MARK: - method
extension HomeViewController {
    
}
