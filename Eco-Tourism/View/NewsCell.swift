//
//  NewsCell.swift
//  Eco-Tourism
//
//  Created by Krishnil Bhojani on 06/03/20.
//  Copyright © 2020 AppFactory. All rights reserved.
//

import UIKit

class NewsCell: UICollectionViewCell {
    
    let cellImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "fall")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
//        imageView.layer.cornerRadius = 22
//        imageView.layer.masksToBounds = true
        return imageView
    }()
    
//    let profileImageView: UIImageView = {
//        let imageView = UIImageView()
//        imageView.image = #imageLiteral(resourceName: "road3")
//        imageView.contentMode = .scaleAspectFill
//        imageView.clipsToBounds = true
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//        imageView.layer.cornerRadius = 22
//        imageView.layer.masksToBounds = true
//        return imageView
//    }()
    
//    let profileNameLabel: UILabel = {
//        let label = UILabel()
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.textColor = .white
//        label.font = UIFont.boldSystemFont(ofSize: 16)
//        label.text = "Name"
//        return label
//    }()
    
    let newsHeadlineLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 16)
        label.text = "Here is the news"
        return label
    }()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        setUpViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpViews(){
        addSubview(cellImageView)
//        addSubview(profileImageView)
//        addSubview(profileNameLabel)
        addSubview(newsHeadlineLabel)
        
//        cellImageView.frame = CGRect(x: 0, y: 0, width: frame.width, height: frame.height)
        
        cellImageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        cellImageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        cellImageView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        cellImageView.heightAnchor.constraint(equalToConstant: frame.width * (9/16)).isActive = true
        
//        profileImageView.topAnchor.constraint(equalTo: cellImageView.bottomAnchor, constant: 8).isActive = true
//        profileImageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
//        profileImageView.heightAnchor.constraint(equalToConstant: 44).isActive = true
//        profileImageView.widthAnchor.constraint(equalToConstant: 44).isActive = true
//
//        profileNameLabel.topAnchor.constraint(equalTo: cellImageView.bottomAnchor, constant: 12).isActive = true
//        profileNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 56).isActive = true
//        profileNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
//        profileNameLabel.heightAnchor.constraint(equalToConstant: 22).isActive = true
        
        newsHeadlineLabel.topAnchor.constraint(equalTo: cellImageView.bottomAnchor, constant: 8).isActive = true
        newsHeadlineLabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        newsHeadlineLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true

    }
    
}
