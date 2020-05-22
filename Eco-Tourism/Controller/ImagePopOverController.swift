//
//  ImagePopOverController.swift
//  Eco-Tourism
//
//  Created by Krishnil Bhojani on 09/03/20.
//  Copyright © 2020 AppFactory. All rights reserved.
//

import UIKit

class ImagePopOverController: UIViewController {

    let containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 10
        view.layer.masksToBounds = true
        return view
    }()
    
    let cancelButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Back", for: UIControl.State.normal)
        button.setTitleColor(.white, for: UIControl.State.normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
        button.widthAnchor.constraint(equalToConstant:  40).isActive = true
        button.addTarget(self, action: #selector(cancelButtonPressed), for: .touchUpInside)
        return button
    }()
    
    let cellImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "road3")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.5)
        
        setUpViews()
        
    }
    
    func setUpViews(){
        
        view.addSubview(containerView)
        containerView.addSubview(cancelButton)
        containerView.addSubview(cellImageView)
        
        let constant = view.frame.width - 200

        containerView.widthAnchor.constraint(equalToConstant: constant).isActive = true
        containerView.heightAnchor.constraint(equalToConstant: constant+40).isActive = true
        containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true

        cancelButton.leadingAnchor.constraint(equalTo: containerView.leadingAnchor).isActive = true
        cancelButton.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -(constant-70)).isActive = true
        cancelButton.topAnchor.constraint(equalTo: containerView.topAnchor).isActive = true
        cancelButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        cellImageView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor).isActive = true
        cellImageView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor).isActive = true
        cellImageView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 40).isActive = true
        cellImageView.heightAnchor.constraint(equalToConstant: constant).isActive = true
        
    }
    
    @objc func cancelButtonPressed(){
        dismiss(animated: true, completion: nil)
    }
    

}
