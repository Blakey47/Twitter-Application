//
//  HomeDatasource.swift
//  TwitterLBTA
//
//  Created by Darragh on 11/8/17.
//  Copyright © 2017 Darragh. All rights reserved.
//

import LBTAComponents

class HomeDatasource: Datasource {
    
    let users: [User] = {
        let darraghUser = User(name: "Darragh Blake", username: "@darraghblake", bioText: "An ambitious individual aiming to land his first permanent job as an iOS Developer! Building this project programmatically!", profileImage: #imageLiteral(resourceName: "profile_image"))
        
        let rayUser = User(name: "Ray Wenderlich", username: "@rwenderlich", bioText: "Ray Wenderlich is an iPhone developer and tweets topics related to iPhone, software, and gaming. Check out our conference.", profileImage: #imageLiteral(resourceName: "ray_profile_image"))
        
        return [darraghUser, rayUser]
    }()
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        return users.count
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        return users[indexPath.item]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self]
    }
    
}
