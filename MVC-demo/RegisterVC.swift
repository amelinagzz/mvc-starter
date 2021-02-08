//
//  RegisterVC.swift
//  MVC-demo
//
//  Created by Adriana González Martínez on 2/8/21.
//

import UIKit

class RegisterVC: UIViewController {

    let nameField: UITextField = {
        let field = UITextField()
        field.placeholder = "write your name here"
        field.textAlignment = .center
        field.translatesAutoresizingMaskIntoConstraints = false
        return field
    }()
    
    let registerBtn: UIButton = {
        let btn = UIButton()
        btn.setTitle("Register", for: .normal)
        btn.setTitleColor(.black, for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setNameField()
        setRegisterButton()
    }

    func setNameField(){
        self.view.addSubview(nameField)
        NSLayoutConstraint.activate([
            nameField.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            nameField.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 80)
        ])
    }
    
    func setRegisterButton(){
        registerBtn.addTarget(self, action: #selector(self.goHome), for: .touchUpInside)
        self.view.addSubview(registerBtn)
        NSLayoutConstraint.activate([
            registerBtn.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            registerBtn.topAnchor.constraint(equalTo: nameField.bottomAnchor, constant: 20)
        ])
    }
    
    @objc func goHome(){
        
    }
}
