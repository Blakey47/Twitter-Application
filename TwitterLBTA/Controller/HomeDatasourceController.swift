//
//  HomeDatasourceController.swift
//  TwitterLBTA
//
//  Created by Darragh on 9/27/17.
//  Copyright © 2017 Darragh. All rights reserved.
//

import LBTAComponents

class HomeDatasourceController: DatasourceController {
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let homeDatasource = HomeDatasource()
        self.datasource = homeDatasource
    }
    
    // Placing the header on the screen
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    
    // Placing the footer on the screen
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 100)
    }
    
    
}














