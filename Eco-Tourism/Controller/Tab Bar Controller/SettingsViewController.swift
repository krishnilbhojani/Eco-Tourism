//
//  SettingViewController.swift
//  Eco-Tourism
//
//  Created by Krishnil Bhojani on 13/03/20.
//  Copyright © 2020 AppFactory. All rights reserved.
//

import UIKit

class SettingsViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout{
    
    fileprivate let cellID = "CellID"
    
    let settingOptions = ["Image Quality", "Content Quality", ""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        collectionView.register(SettingsCell.self, forCellWithReuseIdentifier: cellID)
        
        setUpViews()
    }

    func setUpViews(){
    
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: collectionView.frame.width, height: 150)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    
}

