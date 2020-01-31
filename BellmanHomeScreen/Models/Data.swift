//
//  Data.swift
//  BellmanHomeScreen
//
//  Created by Mostafa on 30/01/2020.
//  Copyright © 2020 Mostafa. All rights reserved.
//

import Foundation
class singleData{
    var category:String
    var image:String
    var description:String
    init(category:String,image:String,description:String) {
        self.category = category
        self.image = image
        self.description = description
    }
}
class Data{
    var attractions:[singleData]?
    var hotspot:[singleData]?
    var events:[singleData]?

}
