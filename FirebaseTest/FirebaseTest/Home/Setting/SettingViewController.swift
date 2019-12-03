//
//  SettingViewController.swift
//  FirebaseTest
//
//  Created by 宮崎真 on 2019/12/03.
//  Copyright © 2019 宮崎真. All rights reserved.
//

import UIKit

import PGFramework


// MARK: - Property
class SettingViewController: BaseViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBAction func touchedDoneButton(_ sender: UIButton) {
        UserModel.update(request: myself) {
            self.dismiss(animated: true, completion: nil)
        }
    }
    var myself: UserModel = UserModel()
}

// MARK: - Life cycle
extension SettingViewController {
    override func loadView() {
        super.loadView()
        setTextField()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}

// MARK: - Protocol
extension SettingViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        switch textField.tag {
        case 0:
            myself.mail = textField.text
        case 1:
            myself.password = textField.text
        default:
            break
        }
        return true
    }
}

// MARK: - method
extension SettingViewController {
    func setTextField(){
        emailTextField.delegate = self
        passwordTextField.delegate = self
        emailTextField.text = myself.mail
        passwordTextField.text = myself.password
    }
}
