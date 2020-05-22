//
//  SettingsCell.swift
//  Eco-Tourism
//
//  Created by Krishnil Bhojani on 13/03/20.
//  Copyright © 2020 AppFactory. All rights reserved.
//

import UIKit

class SettingsCell: UICollectionViewCell {

    let cellLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 54)
        label.textColor = .white
        label.text = "Settings"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let seperatorView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        backgroundColor = .black
        setUpViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpViews(){
        addSubview(seperatorView)
        addSubview(cellLabel)
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-8-[v0]-8-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0" : seperatorView]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-8-[v0]-8-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0" : cellLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0" : cellLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[v0(0.8)]|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0" : seperatorView]))
        
    }
    
}
