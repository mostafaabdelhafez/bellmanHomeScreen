//
//  secondViewController.swift
//  BellmanHomeScreen
//
//  Created by Mostafa on 30/01/2020.
//  Copyright © 2020 Mostafa. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {

    static var ispresented = false

    override func viewDidLoad() {
        super.viewDidLoad()
        secondViewController.ispresented = true
        print( homeViewController.ispresented)
        
        let text = UILabel()
        text.text = "you will search here"
        view.addSubview(text)
        text.translatesAutoresizingMaskIntoConstraints = false
        text.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        text.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true

        // Do any additional setup after loading the view.
    }
    override func viewDidDisappear(_ animated: Bool) {
        secondViewController.ispresented = false
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
