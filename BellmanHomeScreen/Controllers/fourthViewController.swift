//
//  fourthViewController.swift
//  BellmanHomeScreen
//
//  Created by Mostafa on 30/01/2020.
//  Copyright © 2020 Mostafa. All rights reserved.
//

import UIKit

class fourthViewController: UIViewController {

    static var ispresented = false

    override func viewDidLoad() {
        super.viewDidLoad()
        fourthViewController.ispresented = true

        let text = UILabel()
        text.text = "profile info here"
        view.addSubview(text)
        text.translatesAutoresizingMaskIntoConstraints = false
        text.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        text.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true

 }
    override func viewDidDisappear(_ animated: Bool) {
        fourthViewController.ispresented = false
    }

}
