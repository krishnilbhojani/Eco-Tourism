//
//  HomeViewController.swift
//  Eco-Tourism
//
//  Created by Krishnil Bhojani on 22/01/20.
//  Copyright © 2020 AppFactory. All rights reserved.
//

import UIKit

class HomeViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    fileprivate let cellID = "CellID"

    var stateArr = [State]()
    
    let searchBar: UISearchBar = {
        let sb = UISearchBar()
        sb.barTintColor = .black
        sb.searchTextField.backgroundColor = #colorLiteral(red: 0.1150266005, green: 0.1186998733, blue: 0.1193884835, alpha: 1)
        sb.tintColor = .white
        sb.searchTextField.placeholder = "Search"
        sb.searchTextField.textColor = .white
        sb.searchTextField.tintColor = .white
        sb.showsCancelButton = true
        sb.translatesAutoresizingMaskIntoConstraints = false
        return sb
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.isHidden = true

        tabBarItem.image = UIImage(named: "home")

        collectionView.showsVerticalScrollIndicator = false
        collectionView.register(StateCell.self, forCellWithReuseIdentifier: cellID)
                
        searchBar.delegate = self
        
        setUpViews()
        loadData()
    }
    
    func setUpViews(){
        view.addSubview(searchBar)
        
        searchBar.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        searchBar.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        searchBar.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        searchBar.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    
    }
    
    private func loadData(){

        stateArr = HardCode().stateArray()

    }
    

    override var preferredStatusBarStyle: UIStatusBarStyle{
        .lightContent
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.navigationBar.isHidden = true
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return stateArr.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as! StateCell
        
        cell.stateNameLabel.text = stateArr[indexPath.row].name
        cell.selectedState = stateArr[indexPath.row]
        cell.homeViewController = self
        cell.placeCollectionView.reloadData()
        
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: collectionView.frame.width, height: 300)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 60, left: 0, bottom: 0, right: 0)
    }
    
    func showPlaceDetails(for viewController: UIViewController){
        navigationController?.pushViewController(viewController, animated: true)
    }
    
}

extension HomeViewController: UISearchBarDelegate{
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.searchTextField.text = ""
        searchBar.resignFirstResponder()
    }
}
