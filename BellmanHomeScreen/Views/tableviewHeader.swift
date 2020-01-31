//
//  tableviewHeader.swift
//  BellmanHomeScreen
//
//  Created by Mostafa on 29/01/2020.
//  Copyright © 2020 Mostafa. All rights reserved.
//

import UIKit

class tableviewHeader: UITableViewHeaderFooterView {
    let icon = UIImageView(frame: CGRect(x: 0, y: 0, width: 25, height: 25))
    let Hotsopt = UILabel()
    let viewAll:UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("viewall", for: [])
        button.setTitleColor(.purple, for: UIControl.State.init())
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 12)
        return button
    }()
    let arrawIcon = UIImageView(frame: CGRect(x: 0, y: 0, width: 25, height: 25))
    func setupConstraints(){
        arrawIcon.image = #imageLiteral(resourceName: "view_all_icon")
        arrawIcon.contentMode = .scaleAspectFit
        let stack = UIStackView(arrangedSubviews: [icon,Hotsopt])
        stack.axis = .horizontal
        stack.spacing = 8
        addSubview(stack)
        stack.Anchor(Top: nil, Left: leftAnchor, Bottom:nil, Right: nil, TopPadding: 0, LeftPadding: 12, BottomPadding: 0, RightPadding: 0, Width: 0, Height: 0)
        stack.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 0).isActive = true
        let viewallStack = UIStackView(arrangedSubviews: [viewAll,arrawIcon])
        viewallStack.spacing = 4
        addSubview(viewallStack)
        viewallStack.Anchor(Top: nil, Left: nil, Bottom: nil, Right: rightAnchor, TopPadding: 0, LeftPadding: 0, BottomPadding: 0, RightPadding: -12, Width: 0, Height: 0)
        viewallStack.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 0).isActive = true
    }
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        setupConstraints()
        backgroundColor = .white
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
