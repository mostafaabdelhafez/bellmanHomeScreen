//
//  ViewController.swift
//  BellmanHomeScreen
//
//  Created by Mostafa on 28/01/2020.
//  Copyright © 2020 Mostafa. All rights reserved.
//

import UIKit

class baseViewController: UIViewController {
    let firstButton:UIButton = {
        let button = UIButton(type: .system)
        button.addTarget(self, action: #selector(handleFirstButton), for: .touchUpInside)
        button.setImage(#imageLiteral(resourceName: "Home_grey_bottom_icon-1").withRenderingMode(.alwaysOriginal), for: .normal)
        return button
    }()
    let secondButton:UIButton = {
        let button = UIButton(type: .system)
        button.addTarget(self, action: #selector(handleSecondButton), for: .touchUpInside)
        button.setImage(#imageLiteral(resourceName: "search_grey_bottom_icon").withRenderingMode(.alwaysOriginal), for: .normal)
        return button
    }()
    let thirdButton:UIButton = {
        let button = UIButton(type: .system)
        button.addTarget(self, action: #selector(handleThirdButton), for: .touchUpInside)
        button.setImage(#imageLiteral(resourceName: "Group 100").withRenderingMode(.alwaysOriginal), for: .normal)
        return button
    }()
    let fourthButton:UIButton = {
        let button = UIButton(type: .system)
        button.addTarget(self, action: #selector(handleFourthButton), for: .touchUpInside)
        button.setImage(#imageLiteral(resourceName: "profile_grey_bottom_icon").withRenderingMode(.alwaysOriginal), for: .normal)
        return button
    }()

    @objc func handleFirstButton(){
        print(children.last?.title)
        
        let Home = storyboard!.instantiateViewController(withIdentifier: "homeViewController") as! homeViewController
        if homeViewController.ispresented == false{
            secondViewController.ispresented = false
            thirdViewController.ispresented = false
            fourthViewController.ispresented = false

            addChild(Home)
            containerView.addSubview(Home.view)
            Home.didMove(toParent: self)
            Home.view.Anchor(Top:containerView.topAnchor, Left: containerView.leftAnchor, Bottom: containerView.bottomAnchor, Right: containerView.rightAnchor, TopPadding: 0, LeftPadding: 0, BottomPadding: 0, RightPadding: 0, Width: 0, Height: 0)

            
        }
        
    }
    @objc func handleSecondButton(){
        
     let Home = storyboard!.instantiateViewController(withIdentifier: "secondViewController") as! secondViewController
        if secondViewController.ispresented == false{
            homeViewController.ispresented = false
            thirdViewController.ispresented = false
            fourthViewController.ispresented = false

     addChild(Home)
     containerView.addSubview(Home.view)
     Home.didMove(toParent: self)
     Home.view.Anchor(Top:containerView.topAnchor, Left: containerView.leftAnchor, Bottom: containerView.bottomAnchor, Right: containerView.rightAnchor, TopPadding: 0, LeftPadding: 0, BottomPadding: 0, RightPadding: 0, Width: 0, Height: 0)
        }
        
    }
    @objc func handleThirdButton(){
    let Home = storyboard!.instantiateViewController(withIdentifier: "thirdViewController") as! thirdViewController
        if thirdViewController.ispresented == false{
            
            homeViewController.ispresented = false
            secondViewController.ispresented = false
            fourthViewController.ispresented = false


    addChild(Home)
    containerView.addSubview(Home.view)
    Home.didMove(toParent: self)
    Home.view.Anchor(Top:containerView.topAnchor, Left: containerView.leftAnchor, Bottom: containerView.bottomAnchor, Right: containerView.rightAnchor, TopPadding: 0, LeftPadding: 0, BottomPadding: 0, RightPadding: 0, Width: 0, Height: 0)

        }
        
    }
    @objc func handleFourthButton(){
       let Home = storyboard!.instantiateViewController(withIdentifier: "fourthViewController") as! fourthViewController
        if fourthViewController.ispresented == false{
            homeViewController.ispresented = false
            thirdViewController.ispresented = false
            secondViewController.ispresented = false

       addChild(Home)
       containerView.addSubview(Home.view)
       Home.didMove(toParent: self)
       Home.view.Anchor(Top:containerView.topAnchor, Left: containerView.leftAnchor, Bottom: containerView.bottomAnchor, Right: containerView.rightAnchor, TopPadding: 0, LeftPadding: 0, BottomPadding: 0, RightPadding: 0, Width: 0, Height: 0)
        }
         
    }

    var leftbottomCenter:CGPoint!
    var topleftCenter:CGPoint!
    var rightbottomCenter:CGPoint!
    var righttopCenter:CGPoint!
    let curvedImage:UIImageView = {
        let image = UIImageView()
        image.image = #imageLiteral(resourceName: "bottom-bar_curvy")
        image.contentMode = .scaleAspectFill
        image.isUserInteractionEnabled = true
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
        button.addTarget(self, action: #selector(handleMiddleBtn), for: .touchUpInside)
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
        button.addTarget(self, action: #selector(handleMiddleBtn), for: .touchUpInside)
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
        button.addTarget(self, action: #selector(handleMiddleBtn), for: .touchUpInside)
        button.backgroundColor = .white
        button.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        button.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        button.layer.shadowOpacity = 1.0
        button.layer.shadowRadius = 0.0
        button.layer.masksToBounds = false


        return button
    }()
    let customTabbarHomeButton:UIButton = {
        let button = UIButton(type: .system)
        return button
    }()
    @objc func handleMiddleBtn(){
        let popup = storyboard?.instantiateViewController(withIdentifier: "popupVC") as! popupVC
        self.present(popup, animated: false, completion: nil)
    }
    func setupConstraints(){
        self.view.addSubview(headerImage)
        headerImage.Anchor(Top: view.topAnchor, Left: view.leftAnchor, Bottom: nil, Right: view.rightAnchor, TopPadding: -100, LeftPadding: 0, BottomPadding: 0, RightPadding: 0, Width: 0, Height: 250)
        view.addSubview(containerView)
        containerView.Anchor(Top:headerImage.bottomAnchor, Left: view.leftAnchor, Bottom:view.bottomAnchor, Right: view.rightAnchor, TopPadding: 30, LeftPadding: 0, BottomPadding: -120, RightPadding: 0, Width: 0, Height: 0)
        view.addSubview(curvedImage)
        curvedImage.translatesAutoresizingMaskIntoConstraints = false
        curvedImage.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        curvedImage.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        curvedImage.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        curvedImage.heightAnchor.constraint(equalToConstant: 80).isActive = true
        view.addSubview(middleButton)
        middleButton.centerXAnchor.constraint(equalTo: curvedImage.centerXAnchor, constant: 0).isActive = true
        middleButton.topAnchor.constraint(equalTo: curvedImage.topAnchor, constant: -20).isActive = true
        containerView.addSubview(leftBottom)
        containerView.addSubview(rightBottom)
        containerView.addSubview(topleft)
        containerView.addSubview(topright)
        leftBottom.Anchor(Top: middleButton.topAnchor, Left: nil, Bottom: nil, Right: middleButton.leftAnchor, TopPadding: 0, LeftPadding: 0, BottomPadding: 0, RightPadding: -40, Width: 60, Height: 60)
        rightBottom.Anchor(Top: middleButton.topAnchor, Left: middleButton.rightAnchor, Bottom: nil, Right: nil, TopPadding: 0, LeftPadding: 40, BottomPadding: 0, RightPadding: 0, Width: 60, Height: 60)
        topleft.Anchor(Top: nil, Left: leftBottom.rightAnchor, Bottom: middleButton.topAnchor, Right: nil, TopPadding: 0, LeftPadding: 0, BottomPadding: -20, RightPadding:0, Width: 60, Height: 60)
        topright.Anchor(Top: nil, Left: nil, Bottom: middleButton.topAnchor, Right: rightBottom.leftAnchor, TopPadding: 0, LeftPadding: 0, BottomPadding: -20, RightPadding:0, Width: 60, Height: 60)
        
        let leftbuttonsStackview = UIStackView(arrangedSubviews: [firstButton,secondButton])
        let rightbuttonsStackview = UIStackView(arrangedSubviews: [thirdButton,fourthButton])

        leftbuttonsStackview.axis = .horizontal
        leftbuttonsStackview.spacing = 4
        curvedImage.addSubview(firstButton)
        curvedImage.addSubview(secondButton)
        curvedImage.addSubview(thirdButton)
        curvedImage.addSubview(fourthButton)
        firstButton.Anchor(Top: curvedImage.topAnchor, Left: curvedImage.leftAnchor, Bottom: curvedImage.bottomAnchor, Right: nil, TopPadding: 0, LeftPadding: 20, BottomPadding: 0, RightPadding: 0, Width: 0, Height: 0)
        secondButton.Anchor(Top: curvedImage.topAnchor, Left: firstButton.rightAnchor, Bottom: curvedImage.bottomAnchor, Right: nil, TopPadding: 0, LeftPadding: 30, BottomPadding: 0, RightPadding: 0, Width: 0, Height: 0)
        fourthButton.Anchor(Top: curvedImage.topAnchor, Left: nil, Bottom: curvedImage.bottomAnchor, Right: curvedImage.rightAnchor, TopPadding: 0, LeftPadding: 0, BottomPadding: 0, RightPadding: -20, Width: 0, Height: 0)
        thirdButton.Anchor(Top: curvedImage.topAnchor, Left: nil, Bottom: curvedImage.bottomAnchor, Right: fourthButton.leftAnchor, TopPadding: 0, LeftPadding: 0, BottomPadding: 0, RightPadding: -30, Width: 0, Height: 0)
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
    
    func hidePopButtons(){
        leftbottomCenter = leftBottom.center
        leftBottom.center = middleButton.center
        topleftCenter = topleft.center
        topleft.center = middleButton.center
        righttopCenter = topright.center
        topright.center = middleButton.center
        rightbottomCenter = rightBottom.center
        rightBottom.center = middleButton.center
        topleft.alpha = 0
        topright.alpha = 0
        rightBottom.alpha = 0
        leftBottom.alpha = 0
    }
    let containerView:UIView = {
        let v = UIView()
        v.isUserInteractionEnabled = true
        return v
    }()
    
    let headerImage : UIImageView = {
        let image = UIImageView()
        image.image = #imageLiteral(resourceName: "big_header")
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    override func viewDidAppear(_ animated: Bool) {
        
    self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    override func viewDidLayoutSubviews(){
    hidePopButtons()
    }
    func setupViewController(){
        let Home = storyboard!.instantiateViewController(withIdentifier: "homeViewController") as! homeViewController
        addChild(Home)
        containerView.addSubview(Home.view)
        Home.didMove(toParent: self)
        Home.view.Anchor(Top:containerView.topAnchor, Left: containerView.leftAnchor, Bottom: containerView.bottomAnchor, Right: containerView.rightAnchor, TopPadding: 0, LeftPadding: 0, BottomPadding: 0, RightPadding: 0, Width: 0, Height: 0)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupConstraints()
        roundButtons()
        setupViewController()
    }
    


}


