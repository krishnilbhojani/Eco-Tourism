//
//  PhotoCell.swift
//  Eco-Tourism
//
//  Created by Krishnil Bhojani on 08/03/20.
//  Copyright © 2020 AppFactory. All rights reserved.
//

import UIKit

class PhotoCell: UICollectionViewCell {
    
    let cellImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "road3")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        setUpViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpViews(){
        backgroundColor = .yellow
        
        addSubview(cellImageView)
        
        cellImageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        cellImageView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        cellImageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        cellImageView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        
    }
    
}
