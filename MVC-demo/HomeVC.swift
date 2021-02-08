//
//  HomeVC.swift
//  MVC-demo
//
//  Created by Adriana González Martínez on 2/8/21.
//

import UIKit

class HomeVC: UIViewController {
    
    let welcomeMessage: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        setWelcomeMessage()
    }
    
    func setWelcomeMessage(){
        self.view.addSubview(welcomeMessage)
        NSLayoutConstraint.activate([
            welcomeMessage.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            welcomeMessage.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
        ])
    }
}
