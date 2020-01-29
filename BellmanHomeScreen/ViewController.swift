//
//  ViewController.swift
//  BellmanHomeScreen
//
//  Created by Mostafa on 28/01/2020.
//  Copyright © 2020 Mostafa. All rights reserved.
//

import UIKit

class baseViewController: UIViewController {
    var leftbottomCenter:CGPoint!
    var topleftCenter:CGPoint!
    var rightbottomCenter:CGPoint!
    var righttopCenter:CGPoint!


    let curvedImage:UIImageView = {
        let image = UIImageView()
        image.image = #imageLiteral(resourceName: "bottom-bar_curvy")
        image.contentMode = .scaleAspectFill
        return image
    }()
    let middleButton:UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "bellman_bottom-icon").withRenderingMode(.alwaysOriginal), for: [])
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleMiddleBtn), for: .touchUpInside)
        return button
    }()
    let leftBottom:UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "hotspot_icon").withRenderingMode(.alwaysOriginal), for: [])
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleMiddleBtn), for: .touchUpInside)
        button.backgroundColor = .lightGray

        return button
    }()
    let rightBottom:UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "location_white").withRenderingMode(.alwaysOriginal), for: [])
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleMiddleBtn), for: .touchUpInside)
        button.backgroundColor = .lightGray

        return button
    }()
    let topleft:UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "events_icon").withRenderingMode(.alwaysOriginal), for: [])
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleMiddleBtn), for: .touchUpInside)
        button.backgroundColor = .lightGray
        return button
    }()
    let topright:UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "attarctions_icon").withRenderingMode(.alwaysOriginal), for: [])
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleMiddleBtn), for: .touchUpInside)
        button.backgroundColor = .lightGray

        return button
    }()



    @objc func handleMiddleBtn(){
        print(leftbottomCenter)
        if leftBottom.center == middleButton.center{
            UIView.animate(withDuration: 0.1, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0, options: [], animations: {
                self.leftBottom.center = self.leftbottomCenter
            }) { (true) in
                UIView.animate(withDuration: 0.1, delay: 0.0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0, options: [], animations: {
                    self.topleft.center = self.topleftCenter
                })
                {  (true) in
                UIView.animate(withDuration: 0.1, delay: 0.0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0, options: [], animations: {
                    self.topright.center = self.righttopCenter
                })
                {  (true) in
                            UIView.animate(withDuration: 0.1, delay: 0.0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0, options: [], animations: {
                                self.rightBottom.center = self.rightbottomCenter
                        })
                    }
                }
            }
        }
        else{
            
            UIView.animate(withDuration: 0.1, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: [], animations: {
                self.rightBottom.center = self.middleButton.center
                
            }) { (true) in
                UIView.animate(withDuration: 0.1, delay: 0.0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: [], animations: {
                    self.topright.center = self.middleButton.center
                })

                {  (true) in
                UIView.animate(withDuration: 0.1, delay: 0.0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: [], animations: {
                    self.topleft.center = self.middleButton.center
                })
                {  (true) in
                            UIView.animate(withDuration: 0.1, delay: 0.0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: [], animations: {
                                self.leftBottom.center = self.middleButton.center

                        })
                    }
                }
            }
        }
    }
    func setupConstraints(){
        view.addSubview(curvedImage)
        curvedImage.translatesAutoresizingMaskIntoConstraints = false
        curvedImage.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        curvedImage.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        curvedImage.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        curvedImage.heightAnchor.constraint(equalToConstant: 80).isActive = true
        view.addSubview(middleButton)
        middleButton.centerXAnchor.constraint(equalTo: curvedImage.centerXAnchor, constant: 0).isActive = true
        middleButton.topAnchor.constraint(equalTo: curvedImage.topAnchor, constant: -20).isActive = true
        view.addSubview(leftBottom)
        view.addSubview(rightBottom)
        view.addSubview(topleft)
        view.addSubview(topright)

        leftBottom.Anchor(Top: middleButton.topAnchor, Left: nil, Bottom: nil, Right: middleButton.leftAnchor, TopPadding: 0, LeftPadding: 0, BottomPadding: 0, RightPadding: -40, Width: 0, Height: 0)
        rightBottom.Anchor(Top: middleButton.topAnchor, Left: middleButton.rightAnchor, Bottom: nil, Right: nil, TopPadding: 0, LeftPadding: 40, BottomPadding: 0, RightPadding: 0, Width: 0, Height: 0)
        topleft.Anchor(Top: nil, Left: leftBottom.rightAnchor, Bottom: middleButton.topAnchor, Right: nil, TopPadding: 0, LeftPadding: 0, BottomPadding: -20, RightPadding:0, Width: 0, Height: 0)
        topright.Anchor(Top: nil, Left: nil, Bottom: middleButton.topAnchor, Right: rightBottom.leftAnchor, TopPadding: 0, LeftPadding: 0, BottomPadding: -20, RightPadding:0, Width: 0, Height: 0)
        

    }
    func roundButtons(){
        topleft.clipsToBounds = true
        topleft.layer.cornerRadius = topleft.frame.height / 2
        topright.clipsToBounds = true
        topright.layer.cornerRadius = topleft.frame.height / 2
        rightBottom.clipsToBounds = true
        rightBottom.layer.cornerRadius = topleft.frame.height / 2
        leftBottom.clipsToBounds = true
        leftBottom.layer.cornerRadius = topleft.frame.height / 2

    }
    
    
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        let height: CGFloat = 700 //whatever height you want to add to the existing height
//        let bounds = self.navigationController!.navigationBar.bounds
//        self.navigationController?.navigationBar.frame = CGRect(x: 0, y: 0, width: bounds.width, height: bounds.height + height)
//
//    }

    override func viewDidLayoutSubviews() {
        
        leftbottomCenter = leftBottom.center
        leftBottom.center = middleButton.center
        topleftCenter = topleft.center
        topleft.center = middleButton.center
        righttopCenter = topright.center
        topright.center = middleButton.center
        rightbottomCenter = rightBottom.center
        rightBottom.center = middleButton.center


    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupConstraints()
        
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        let customNavigationBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: 120))
        let i = UIImageView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 120))
        i.image = #imageLiteral(resourceName: "big_header")
        i.backgroundColor = .red
        customNavigationBar.setBackgroundImage(i.image, for: UIBarMetrics.default)
        self.view.addSubview(customNavigationBar)
        roundButtons()
    }


}


