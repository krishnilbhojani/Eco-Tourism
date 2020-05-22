//
//  CategoryCell.swift
//  Eco-Tourism
//
//  Created by Krishnil Bhojani on 04/03/20.
//  Copyright © 2020 AppFactory. All rights reserved.
//

import UIKit

class StateCell: UICollectionViewCell, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    
    var currentStateIndex: Int?
    
//    var stateArr =  HardCode().stateArray()
    
    var selectedState : State?
    
    var homeViewController: HomeViewController?
    
    fileprivate let CellID = "PlaceCell"
    
    let stateNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "State Name"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 34)
        return label
    }()
    
    let placeCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.showsHorizontalScrollIndicator = false
        return collectionView
    }()
    
    let finalStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.alignment = .center
        stack.spacing = 10
        return stack
    }()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        currentStateIndex = 0
//        self.currentStateIndex = homeViewController?.currentStateIndex
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews(){
        
//        guard let index = currentStateIndex else {return}
        
        stateNameLabel.text = selectedState?.name
        
        placeCollectionView.delegate = self
        placeCollectionView.dataSource = self
        placeCollectionView.register(PlaceCell.self, forCellWithReuseIdentifier: CellID)
        
        addSubview(stateNameLabel)
        addSubview(placeCollectionView)
        
        stateNameLabel.frame = CGRect(x: 14, y: 0, width: frame.width, height: 40)
        placeCollectionView.frame = CGRect(x: 0, y: 50, width: frame.width, height: frame.height-50)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if let placeCount = selectedState?.places.count{
            return placeCount
        }
        
        return 0
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellID, for: indexPath) as! PlaceCell
        
        if let state = selectedState {
            cell.name.text = state.places[indexPath.row].name
            let imageName = state.places[indexPath.row].imageName
            cell.imageView.image = UIImage(named: imageName)
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: placeCollectionView.frame.height-50, height: placeCollectionView.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .init(top: 0, left: 14, bottom: 0, right: 14)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let placeDetailVC = PlaceDetailViewController()
        
        if let selectedPlace = selectedState?.places[indexPath.row]{
            placeDetailVC.title = selectedPlace.name
            placeDetailVC.imageView.image = UIImage(named: selectedPlace.imageName)
        }
        
        homeViewController?.showPlaceDetails(for: placeDetailVC)
    }
    
}
