//
//  popupVC.swift
//  BellmanHomeScreen
//
//  Created by Mostafa on 30/01/2020.
//  Copyright © 2020 Mostafa. All rights reserved.
//

import UIKit

class popupVC: UIViewController {


    let leftBottom:UIButton = {
        
        let button = UIButton(type: .system)
        
        button.setImage(#imageLiteral(resourceName: "hotspot_icon").withRenderingMode(.alwaysOriginal), for: [])
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .white
        button.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        button.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        button.layer.shadowOpacity = 1.0
        button.layer.shadowRadius = 0.0
        button.layer.masksToBounds = false
        return button
    }()
    let rightBottom:UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "small_grey_location_pin").withRenderingMode(.alwaysOriginal), for: [])
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .white
        button.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        button.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        button.layer.shadowOpacity = 1.0
        button.layer.shadowRadius = 0.0
        button.layer.masksToBounds = false
        return button
    }()
    let topleft:UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "events_icon").withRenderingMode(.alwaysOriginal), for: [])
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .white
        button.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        button.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        button.layer.shadowOpacity = 1.0
        button.layer.shadowRadius = 0.0
        button.layer.masksToBounds = false
        return button
    }()
    let topright:UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "attarctions_icon").withRenderingMode(.alwaysOriginal), for: [])
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .white
        button.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        button.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        button.layer.shadowOpacity = 1.0
        button.layer.shadowRadius = 0.0
        button.layer.masksToBounds = false
        return button
    }()
    func setupConstraints(){
        topleft.alpha = 0
        topright.alpha = 0
        rightBottom.alpha = 0
        leftBottom.alpha = 0

        view.addSubview(leftBottom)
        view.addSubview(rightBottom)
        view.addSubview(topleft)
        view.addSubview(topright)
        view.addSubview(middleBtn)
        middleBtn.Anchor(Top: nil, Left: nil, Bottom: view.bottomAnchor, Right: nil, TopPadding: 0, LeftPadding: 0, BottomPadding: -40, RightPadding: 0, Width: 60, Height: 60)
        leftBottom.Anchor(Top: nil, Left: nil, Bottom: view.bottomAnchor, Right: nil, TopPadding: 0, LeftPadding: 0, BottomPadding: -40, RightPadding: 0, Width: 60, Height: 60)
        rightBottom.Anchor(Top: nil, Left: nil, Bottom: view.bottomAnchor, Right: nil, TopPadding: 0, LeftPadding: 0, BottomPadding: -40, RightPadding: 0, Width: 60, Height: 60)
        topright.Anchor(Top: nil, Left: nil, Bottom: view.bottomAnchor, Right: nil, TopPadding: 0, LeftPadding: 0, BottomPadding: -40, RightPadding: 0, Width: 60, Height: 60)
        topleft.Anchor(Top: nil, Left: nil, Bottom: view.bottomAnchor, Right: nil, TopPadding: 0, LeftPadding: 0, BottomPadding: -40, RightPadding: 0, Width: 60, Height: 60)
                UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0, options: [], animations: {
                        self.leftBottom.Anchor(Top: self.middleBtn.topAnchor, Left: nil, Bottom: nil, Right: self.middleBtn.leftAnchor, TopPadding: 0, LeftPadding: 0, BottomPadding: 0, RightPadding: -40, Width: 60, Height: 60)

                                self.leftBottom.alpha = 1
                                self.view.layoutIfNeeded()
                            })
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                                    UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0, options: [], animations: {
                                    self.topleft.Anchor(Top: nil, Left: self.leftBottom.rightAnchor, Bottom: self.middleBtn.topAnchor, Right: nil, TopPadding: 0, LeftPadding: 0, BottomPadding: -20, RightPadding:0, Width: 60, Height: 60)

                                    self.topleft.alpha = 1
                                    self.view.layoutIfNeeded()
                                })
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                                        UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0, options: [], animations: {
                                            self.topright.Anchor(Top: nil, Left: self.middleBtn.rightAnchor, Bottom: self.middleBtn.topAnchor, Right: nil, TopPadding: 0, LeftPadding: 0, BottomPadding: -20, RightPadding:0, Width: 60, Height: 60)

                                        self.topright.alpha = 1
                                        self.view.layoutIfNeeded()
                                    })
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                                            UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0, options: [], animations: {
                                                self.rightBottom.Anchor(Top: self.middleBtn.topAnchor, Left: self.middleBtn.rightAnchor, Bottom: nil, Right: nil, TopPadding: 0, LeftPadding: 40, BottomPadding: 0, RightPadding: 0, Width: 60, Height: 60)

                                            self.rightBottom.alpha = 1
                                            self.view.layoutIfNeeded()
                                        })
                                    }
                                }
                            }
        
        middleBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true

    }
    func roundButtons(){
        topleft.clipsToBounds = true
        topleft.layer.cornerRadius = 30
        topright.clipsToBounds = true
        topright.layer.cornerRadius = 30
        rightBottom.clipsToBounds = true
        rightBottom.layer.cornerRadius = 30
        leftBottom.clipsToBounds = true
        leftBottom.layer.cornerRadius = 30
    }
    let middleBtn:UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "bellman_bottom-icon").withRenderingMode(.alwaysOriginal), for: [])
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleMiddleBtn), for: .touchUpInside)
        return button
    }()
    
    @objc func handleMiddleBtn(){
                    UIView.animate(withDuration: 0.1, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: [], animations: {
                        self.rightBottom.center = self.middleBtn.center
                        self.rightBottom.alpha = 0
        
                    }) { (true) in
                        UIView.animate(withDuration: 0.1, delay: 0.0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: [], animations: {
                            self.topright.center = self.middleBtn.center
                            self.topright.alpha = 0
                        })
        
                        {  (true) in
                        UIView.animate(withDuration: 0.1, delay: 0.0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: [], animations: {
                            self.topleft.center = self.middleBtn.center
                            self.topleft.alpha = 0
                        })
                        {  (true) in
                                    UIView.animate(withDuration: 0.1, delay: 0.0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: [], animations: {
                                        self.leftBottom.center = self.middleBtn.center
                                        self.leftBottom.alpha = 0
                                })
                            }
                            self.dismiss(animated: false, completion: nil)

                        }
                }
                


    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupConstraints()
        roundButtons()
    }
}
