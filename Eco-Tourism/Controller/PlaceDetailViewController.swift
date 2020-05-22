//
//  PlaceDetailViewController.swift
//  Eco-Tourism
//
//  Created by Krishnil Bhojani on 07/03/20.
//  Copyright © 2020 AppFactory. All rights reserved.
//

import UIKit

class PlaceDetailViewController: DetailViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
    }
    
    override func setUpViews() {
        super .setUpViews()
        
        let photoLibrary = UIBarButtonItem(image: #imageLiteral(resourceName: "photos.filled"), style: .plain, target: self, action: #selector(photoLibraryPressed))
        
        navigationItem.rightBarButtonItem = photoLibrary
        
    }
    
    @objc func photoLibraryPressed(){
        navigationController?.pushViewController(PhotoLibraryViewController(collectionViewLayout: UICollectionViewFlowLayout()), animated: true)
    }

}
