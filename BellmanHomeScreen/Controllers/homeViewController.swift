//
//  homeViewController.swift
//  BellmanHomeScreen
//
//  Created by Mostafa on 29/01/2020.
//  Copyright © 2020 Mostafa. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
import Kingfisher
class homeViewController: UIViewController {
    static var ispresented = false
    var attractionsArray = [singleData]()
    var eventsArray = [singleData]()
    var hotspotArray = [singleData]()
    var allData = Data()
    let tableHeaderTitles = ["Hotspot","Attractions","Events"]
    let tableHeaderImages = [#imageLiteral(resourceName: "hotspot_icon"),#imageLiteral(resourceName: "events_icon"),#imageLiteral(resourceName: "attarctions_icon")]
    func setupNetworking(){
        
        let url = "http://bellman-bd.restart-technology.com/api/home"
        Alamofire.request(url, method: .get).responseJSON { (response) in
            switch response.result{
            case .success:
                print("success")
                if let json = JSON(rawValue: response.result.value){
                    guard let allData = json["data"].dictionary else{return}
                    if let attractions = allData["attractions"]?.array{
                        
                        print(attractions.count)
                        for singleAttractions in attractions{
                            var photo = ""
                            if let photos = singleAttractions["photos"].array {
                                if photos.count > 0 {
                                   photo = photos[0].string ?? ""
                                }
                            }
                            print(photo)
                            
                            let attractionParsing = singleData(category: singleAttractions["name"].string ?? "", image: photo, description:singleAttractions["description"].string ?? "")
                            self.attractionsArray.append(attractionParsing)
                            
                        }

                    }
                    if let hotspot = allData["hot_spots"]?.array{
                        print(hotspot.count)
                        for singleHotspot in hotspot{
                            print(singleHotspot["name"].string ?? "")
                            var photo = ""
                            if let photos = singleHotspot["photos"].array {
                                if photos.count > 0 {
                                   photo = photos[0].string ?? ""
                                }
                            }

                        let hotspotParsing = singleData(category: singleHotspot["name"].string ?? "", image: photo, description:singleHotspot["description"].string ?? "")
                            self.hotspotArray.append(hotspotParsing)
                        }
                    }
                    
                    if let events = allData["events"]?.array{
                        print("event : \(events.count)")
                        for singleEvent in events{
                            print(singleEvent["name"].string ?? "")
                            let EventsParsing = singleData(category: singleEvent["name"].string ?? "", image: "",description:singleEvent["description"].string ?? "")
                            self.eventsArray.append(EventsParsing)
                        }
                        
                    }
                    let alldata = Data()
                    alldata.attractions = self.attractionsArray
                    alldata.events = self.eventsArray
                    alldata.hotspot = self.hotspotArray
                    self.allData = alldata
                    print(self.allData.attractions!.count)
                    
                    self.parentTableview.reloadData()
                    
                }
            case .failure(let err):
                print("failed")
                print(err.localizedDescription)
            }
        }
        
        
        
    }
    
    let parentTableview:UITableView = {
        let tv = UITableView(frame: .zero, style: .grouped)
        return tv
    }()
    
    func setupConstraints(){
        view.addSubview(parentTableview)
        parentTableview.Anchor(Top: view.topAnchor, Left: view.leftAnchor, Bottom: view.bottomAnchor, Right: view.rightAnchor, TopPadding: 0, LeftPadding: 0, BottomPadding: 0, RightPadding: 0, Width: 0, Height: 0)
    }
    func setupTableview(){
        parentTableview.delegate = self
        parentTableview.dataSource = self
        parentTableview.register(parentCell.self, forCellReuseIdentifier: "parentCell")
        parentTableview.register(tableviewHeader.self, forHeaderFooterViewReuseIdentifier: "tableviewHeader")
        parentTableview.backgroundColor = .clear
        parentTableview.separatorStyle = .none
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        homeViewController.ispresented = true

        setupTableview()
        setupConstraints()
        setupNetworking()
        view.backgroundColor = .clear
    }
    override func viewDidDisappear(_ animated: Bool) {
        

        
    }

}
extension homeViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "parentCell", for: indexPath) as! parentCell
        if indexPath.section == 0 {
            if let hotspot = allData.hotspot{
                cell.arrayofData = hotspot
                cell.gridCollectionview.reloadData()
                
            }
        }
        if indexPath.section == 1 {
            if let attractions = allData.attractions{
                cell.arrayofData = attractions
                cell.gridCollectionview.reloadData()
            }

        }
        if indexPath.section == 2 {
            if let events = allData.events{
                cell.arrayofData = events
                cell.gridCollectionview.reloadData()
                if events.count == 0{
                    
                    cell.gridCollectionview.isHidden = true
                    cell.noData.isHidden = false
                }
            }
        }
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 220
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "tableviewHeader") as! tableviewHeader
        header.backgroundView?.backgroundColor = .white
        header.contentView.backgroundColor = .white
        header.icon.image = tableHeaderImages[section]
        header.Hotsopt.text = tableHeaderTitles[section]
        header.viewAll.addTarget(self, action: #selector(handleViewall), for: .touchUpInside)
        return header
    }
    @objc func handleViewall(){
        
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView()
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0
    }
    
}
