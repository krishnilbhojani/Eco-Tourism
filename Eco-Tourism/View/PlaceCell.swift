//
//  PlaceCell.swift
//  Eco-Tourism
//
//  Created by Krishnil Bhojani on 04/03/20.
//  Copyright © 2020 AppFactory. All rights reserved.
//

import UIKit

class PlaceCell: UICollectionViewCell{
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = .lightGray
        return imageView
    }()
    
    let name: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Place Name"
        label.numberOfLines = 2
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews(){

        addSubview(imageView)
        addSubview(name)
        
        imageView.frame = CGRect(x: 0, y: 0, width: frame.width, height: frame.width)
        
        name.topAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        name.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        name.widthAnchor.constraint(equalToConstant: frame.width - 15).isActive = true
        name.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }
    
}
