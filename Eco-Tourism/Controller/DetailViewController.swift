//
//  PlaceDetailViewController.swift
//  Eco-Tourism
//
//  Created by Krishnil Bhojani on 06/03/20.
//  Copyright © 2020 AppFactory. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "fall")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let detailsTextLabel: UILabel = {
        let label = UILabel()
        label.text = "Ayodhya is a city and the administrative headquarters of Faizabad district (officially Ayodhya district) of Uttar Pradesh, India. It shares municipal corporation with its neighbouring twin town of Faizabad. The city is identified with the legendary city of Ayodhya, and as such, is the birthplace of Rama and setting of the epic Ramayana. The accuracy of this identification is central to the Ayodhya dispute: modern scholars variously believe that the present-day Ayodhya is same as the legendary Ayodhya, or that the legendary city is a mythical place that came to be identified with the present-day Ayodhya only during the Gupta period around the 4th-5th century CE.\n\nThe present-day city is identified as the location of Saketa, which was an important city of the Kosala mahajanapada in the first millennium BCE, and later served as its capital. The early Buddhist and Jain canonical texts mention that the religious leaders Gautama Buddha and Mahavira visited and lived in the city. The Jain texts also describe it as the birthplace of five tirthankaras namely, Rishabhanatha, Ajitanatha, Abhinandananatha, Sumatinath and Anantnath, and associate it with the legendary chakravartins. From the Gupta period onwards, several sources mention Ayodhya and Saketa as the name of the same city.\n\nOwing to the belief as the birthplace of Rama, Ayodhya (Awadh) has been regarded as one of the seven most important pilgrimage sites (Saptapuri) for Hindus. It is believed that the birth spot of Rama was marked by a temple, which is said to have been demolished by the orders of the Mughal emperor Babur and a disputed mosque erected in its place. The Ayodhya dispute concerns the activism by the Hindu groups to rebuild a grand Rama's temple at the site of Janmabhoomi.[4] The five judges Supreme Court bench heard the title dispute cases from August to October 2019. On 9 November 2019, the Supreme Court, headed by Chief Justice Ranjan Gogoi, vacated the previous decision and ruled that the land belonged to the government per tax records. It further ordered the land to be handed over to a trust to build the Hindu temple. It also ordered to the government to give alternate 5 acre land to Sunni Waqf Board to build the mosque.\n\n\nFor more information visit: https://en.wikipedia.org/wiki/Ayodhya"
        label.textAlignment = .justified
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        return label
    }()
    
    let scrollView: UIScrollView = {
        let sv = UIScrollView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        setUpViews()
    }
    
    func setUpViews() {
        view.addSubview(scrollView)
        
        scrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        scrollView.addSubview(imageView)
        
        imageView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 500).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
        
        scrollView.addSubview(detailsTextLabel)
        
        detailsTextLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 16).isActive = true
        detailsTextLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 516).isActive = true
        detailsTextLabel.rightAnchor.constraint(equalTo: scrollView.rightAnchor, constant: -16).isActive = true
        detailsTextLabel.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -16).isActive = true
        detailsTextLabel.widthAnchor.constraint(equalToConstant: view.frame.width - 32).isActive = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super .viewWillAppear(true)
        
        navigationController?.navigationBar.barTintColor = .black
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.isHidden = false
        
    }
    
    
}
