//
//  gridCell.swift
//  BellmanHomeScreen
//
//  Created by Mostafa on 29/01/2020.
//  Copyright © 2020 Mostafa. All rights reserved.
//

import UIKit

class gridCell: UICollectionViewCell {
    let gridImage:UIImageView = {
        let image = UIImageView()
        return image
    }()
    let categoryTitle:UILabel = {
        let label = UILabel()
        label.textColor = .lightGray
        label.text = "restaurant"
        return label
    }()
    let subCategoryTitle:UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "Mama"
        return label
    }()

        
    func setupConstraints(){
        addSubview(gridImage)
        gridImage.Anchor(Top: topAnchor, Left: leftAnchor, Bottom: nil, Right: rightAnchor, TopPadding: 0, LeftPadding: 0, BottomPadding: 0, RightPadding: 0, Width: 0, Height: 160)
        addSubview(categoryTitle)
        addSubview(subCategoryTitle)
        subCategoryTitle.Anchor(Top: gridImage.bottomAnchor, Left: leftAnchor, Bottom: nil, Right: rightAnchor, TopPadding: 8, LeftPadding: 12, BottomPadding: 0, RightPadding: -12, Width: 0, Height: 0)
        categoryTitle.Anchor(Top: subCategoryTitle.bottomAnchor, Left: leftAnchor, Bottom: nil, Right: rightAnchor, TopPadding: 0, LeftPadding: 12, BottomPadding: 0, RightPadding: -12, Width: 0, Height: 0)

    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
