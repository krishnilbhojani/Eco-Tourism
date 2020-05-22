//
//  PhotoLibraryViewController.swift
//  Eco-Tourism
//
//  Created by Krishnil Bhojani on 08/03/20.
//  Copyright © 2020 AppFactory. All rights reserved.
//

import UIKit

class PhotoLibraryViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    private let reuseIdentifier = "Cell"
    
    let photos: [UIImage] = [#imageLiteral(resourceName: "surSarovar"),#imageLiteral(resourceName: "ayodhya"),#imageLiteral(resourceName: "belum"),#imageLiteral(resourceName: "dwarka"),#imageLiteral(resourceName: "tourists"),#imageLiteral(resourceName: "statueOfUnity"),#imageLiteral(resourceName: "sunTemple"),#imageLiteral(resourceName: "somnath"),#imageLiteral(resourceName: "mathura"),#imageLiteral(resourceName: "kangra.himachal"),#imageLiteral(resourceName: "kerela"),#imageLiteral(resourceName: "arukuValley"),#imageLiteral(resourceName: "agra"),#imageLiteral(resourceName: "una.himachal"),#imageLiteral(resourceName: "sunTemple"),#imageLiteral(resourceName: "shimla.himachal"),#imageLiteral(resourceName: "chamba.himachal"),#imageLiteral(resourceName: "gir"),#imageLiteral(resourceName: "fatepur"),#imageLiteral(resourceName: "kerelaArippa")]

    override func viewDidLoad() {
        super.viewDidLoad()

        self.collectionView!.register(PhotoCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        
        title = "Photo Library"
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 15
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! PhotoCell
        cell.cellImageView.image = photos[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .init(top: 0, left: 10, bottom: 0, right: 10)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let constant = (collectionView.frame.width - 40)/3
        
        return .init(width: constant, height: constant)
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let imagePopOverController = ImagePopOverController()
        imagePopOverController.cellImageView.image = photos[indexPath.row]
        imagePopOverController.modalPresentationStyle = .overCurrentContext
        imagePopOverController.modalTransitionStyle = .crossDissolve
        
        present(imagePopOverController, animated: true, completion: nil)
    }

}
