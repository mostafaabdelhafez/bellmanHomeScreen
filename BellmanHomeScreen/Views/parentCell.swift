//
//  parentCell.swift
//  BellmanHomeScreen
//
//  Created by Mostafa on 29/01/2020.
//  Copyright © 2020 Mostafa. All rights reserved.
//

import UIKit
import Kingfisher
class parentCell: UITableViewCell {
    var arrayofData = [singleData]()
    let noData:UILabel = {
        let label = UILabel()
        label.text = "NO DATA HERE"
        label.isHidden = true
        return label
    }()
    let gridCollectionview:UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = .white
        layout.scrollDirection = .horizontal
        return cv
    }()
    func setupConstraints(){
        
        self.addSubview(gridCollectionview)
        gridCollectionview.Anchor(Top: topAnchor, Left: leftAnchor, Bottom: bottomAnchor, Right: rightAnchor, TopPadding: 0, LeftPadding: 5, BottomPadding: 0, RightPadding: -5, Width: 0, Height: 0)
        addSubview(noData)
        noData.translatesAutoresizingMaskIntoConstraints  = false
        noData.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 0).isActive = true
        noData.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 0).isActive = true

    }
    func setupCollectionview(){
        gridCollectionview.delegate = self
        gridCollectionview.dataSource = self
        gridCollectionview.register(gridCell.self, forCellWithReuseIdentifier: "gridCell")
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupConstraints()
        setupCollectionview()
        backgroundColor = .white
    }
    
    required init?(coder: NSCoder) {
        
        
        fatalError("init(coder:) has not been implemented")
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
     
        
        
    }

}

extension parentCell:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return arrayofData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "gridCell", for: indexPath) as! gridCell
        cell.subCategoryTitle.text = arrayofData[indexPath.row].category
        cell.categoryTitle.text = arrayofData[indexPath.row].description
        if let url = URL(string: arrayofData[indexPath.row].image){
            cell.gridImage.kf.setImage(with: url)
            cell.gridImage.kf.indicatorType = .activity

        }
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 160, height: 220)
    }
    
    
    
}
