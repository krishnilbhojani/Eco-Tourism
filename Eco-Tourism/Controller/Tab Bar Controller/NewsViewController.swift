//
//  NewsViewController.swift
//  Eco-Tourism
//
//  Created by Krishnil Bhojani on 06/03/20.
//  Copyright © 2020 AppFactory. All rights reserved.
//

import UIKit

class NewsHeaderView: UICollectionReusableView {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Recent News Related to Ecotourism"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 36)
//        label.textAlignment = .left
        label.textColor = .white
        return label
        
    }()
    
    let seperatorView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .lightGray
        return view
    }()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        setUpViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func setUpViews(){
        addSubview(titleLabel)
        addSubview(seperatorView)
        
        titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 50).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 10).isActive = true
        
        seperatorView.frame = CGRect(x: 10, y: frame.height-0.5, width: frame.width-20, height: 0.5)
    }
    
}

class NewsViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    private let newsHeaderIdentifier = "HeaderCell"
    private let reuseIdentifier = "NewsCell"
    
    let news: [News] = [
        News(thumbnailImage: #imageLiteral(resourceName: "kerela"), headlineText: "Kerala earned Rs 137 crore via eco-tourism", content: "Kerala, a state situated on the tropical Malabar Coast of southwestern India, is one of the most popular tourist destinations in the country. Named as one of the ten paradises of the world by National Geographic Traveler, Kerala is famous especially for its ecotourism initiatives and beautiful backwaters. Its unique culture and traditions, coupled with its varied demography, have made Kerala one of the most popular tourist destinations in the world. Growing at a rate of 13.31%, the tourism industry is a major contributor to the state's economy.\n\nUntil the early 1980s, Kerala was a relatively unknown destination, with most tourism circuits concentrated around the north of the country. Aggressive marketing campaigns launched by the Kerala Tourism Development Corporation—the government agency that oversees tourism prospects of the state—laid the foundation for the growth of the tourism industry. In the decades that followed, Kerala Tourism was able to transform itself into one of the niche holiday destinations in India. The tag line Kerala – God's Own Country was adopted in its tourism promotions and became a global superbrand. Kerala is regarded as one of the destinations with the highest brand recall. In 2010, Kerala attracted 660,000 foreign tourist arrivals.\n\nKerala is an established destination for both domestic as well as foreign tourists. Kerala is well known for its beaches, backwaters in Alappuzha and Kollam, mountain ranges and wildlife sanctuaries. Other popular attractions in the state include the beaches at Kovalam, Varkala, Kollam and Kappad; backwater tourism and lake resorts around Ashtamudi Lake, Kollam; hill stations and resorts at Munnar, Wayanad, Nelliampathi, Vagamon and Ponmudi; and national parks and wildlife sanctuaries at Periyar, Parambikulam and Eravikulam National Park. The 'backwaters' region—an extensive network of interlocking rivers, lakes, and canals that centre on Ashtamudi Lake, Kollam, also see heavy tourist traffic. Heritage sites, such as the Padmanabhapuram Palace, Hill Palace, and Mattancherry Palace, are also visited. The city of Kochi ranks first in the total number of international and domestic tourists in Kerala. To further promote tourism in Kerala, the Grand Kerala Shopping Festival was started by the Government of Kerala in 2007. Since then it has been held every year during the December–January period.\n\nThe state's tourism agenda promotes ecologically sustained tourism, which focuses on the local culture, wilderness adventures, volunteering and personal growth of the local population. Efforts are taken to minimise the adverse effects of traditional tourism on the natural environment, and enhance the cultural integrity of local people.\n\n\nFor more information visit: https://en.wikipedia.org/wiki/Tourism_in_Kerala"),
        News(thumbnailImage: #imageLiteral(resourceName: "odisha"), headlineText: "Odisha to develop 40 more eco-tourism spots", content: "BHUBANESWAR: In its bid to promote eco-tourism in the state, Odisha government today decided to develop 40 new spots besides starting online booking for accommodation at the existing ones, official sources said.\n\nThe decision in this regard was taken at a high level meeting held under the chairmanship of Chief Secretary A P Padhi, an official said after the meeting.\n\nPadhi directed the Forest and Environment Department to develop suitable facilities including waste disposal provision at eco-tourism spots.\n\nThe chief secretary focused on development of basic amenities and apposite waste disposal system at the spots.\n\n'It has been decided that a centralized online system for booking of accommodation at eco-tourist places will be developed and put in place within two months,' the official said.\n\nForest and Environment Secretary S C Mohapatra said that as of now 20 eco-tourism sites have been taken up and 40 new destinations have been identified for development. Target has been set to develop all these spots within a period of five years with investment of around Rs 100 crore, he said.\n\nThe accommodation facilities for 15 to 20 families will be developed in each major spot, Mohapatra said adding that there has been constant increase in tourist footfall in eco-tourist spots over last three years.\n\nIn the year the total footfall in eco-tourist spots was 2,76,206 which increased to 3,12,980 in the year 2014-15 and further to 3,47,965 in the year 2014-15. This year there is an increasing trend in the rate of footfall and is expected to cross the last year, he said.\n\nApart from these, 40 new spots have been identified in these forest and wild life divisions, Mohapatra said.\n\n\nFor more information visit: https://economictimes.indiatimes.com/industry/services/travel/odisha-to-develop-40-more-eco-tourism-spots/articleshow/50744383.cms"),
        News(thumbnailImage: #imageLiteral(resourceName: "gir"), headlineText: "Eco-tourism to get big push in new Gujarat", content: "VADODARA: The Gujarat government is working on a new policy to attract more holiday-makers with a focus on developing eco-tourism spots, especially wildlife, and attract more participation from the private sector.\n\nThe new tourism policy will replace the existing one which was announced in 2009, Saurabh Patel, Gujarat Finance Minister, who also holds the Tourism portfolio, said today.\n\n'We are working on a new tourism policy right now. Through the policy, we will try to develop new destinations and boost eco-tourism, especially wildlife tourism,' he said.\n\n'There are many destinations across the state which are close to nature and can be developed as tourist spots. To identify such destinations, the Tourism Department has roped in the Forest Department,' he told PTI.\n\nPatel was speaking after Gujarat bagged four National Tourism Awards 2013-14 at a function in New Delhi today. President Pranab Mukherjee gave away these awards to S J Haider, Gujarat Tourism Secretary who was deputed by Patel as he could not make it to the event.\n\nThe MLA from Akota constituency said 'Gujarat bagged four awards - Best State Award for Comprehensive Development of Tourism; Best Rural Tourism Project for Rann Utsav, Best Tourism Promotion Publicity Material for 'Gujarat's 50 Golden Destinations' coffee table book and Best Film Promotion Friendly State.'\n\nRann Utsav, Gujarat's annual winter desert festival, started as a three-day festival in 2005, but it has now become a three-month-long activity. The event recorded an estimated tourist inflow of 1.91 lakh in 2014-15.\n\nPatel said the government will focus on infrastructure development for the hospitality sector and attract more participation from the private sector.\n\n'Our objective is to be a part of the Incredible India campaign of the Union Ministry of Tourism. Given the growth in the state, we not only want to promote our festivals, religious, adventure destinations but also target MICE (meetings, incentives, conferences and exhibitions) sector. We are planning to develop home stay facilities to give tourists a chance to experience the local flavour,' he said.\n\nThe Tourism Department has a budget of Rs 400 crore which we want to use for developing tourism infrastructure as well as promote Gujarat in India and abroad, Patel said.\n\n'Rajasthan, Goa, Kerala and Andhra Pradesh nationally and Dubai, Singapore and Malaysia on international level are Gujarat's competitors in tourism sector,' he said.\n\n\nFor more information visit: https://economictimes.indiatimes.com/industry/services/travel/eco-tourism-to-get-big-push-in-new-gujarat/articleshow/49018597.cms"),
        News(thumbnailImage: #imageLiteral(resourceName: "panjab"), headlineText: "Punjab to release gharials in rivers to promote eco-tourism", content: "CHANDIGARH: Punjab chief minister Parkash Singh Badal on Friday approved the release of gharials in Sutlej and Beas rivers in the state to promote eco-tourism, an official spokesperson said on Friday.\n\n'To promote eco-tourism in Punjab, government has chalked out a programme for release of gharials - the last surviving species of the family Gavialidae - in the river Sutlej-Beas with Harike Wildlife Sanctuary as the starting point,' Dhirendra Singh, additional principal chief conservator of forests and wildlife department said.\n\nInitially 10 gharials would be released in the Harike Wildlife Sanctuary as a part of 'Gharial Recovery Action Plan' in the state during September this year, he said, adding that around 100 gharials will be released in the rivers during a span of two years.\n\nThe decision was taken after recommendations of the state board for wildlife for releasing the 'critically endangered species' in river system of Punjab, the spokesperson said.\n\nUnion ministry of environment forests and climate change had accorded permission for release of gharial in Harike Wildlife Sanctuary under Section 12 of Wildlife (Protection) Act, 1972, he said.\n\nGharial (Gavialis gangeticus), once found in the Indian Sub Continent in plenty, is now the most endangered large animals, Singh said, adding that in India only 200 breeding adults of gharials are left.\n\nIt has been listed in Schedule I of Indian Wildlife (Protection) Act, 1972 and as 'critically endangered' in the International Union for Conservation of Nature (IUCN) Red List of endangered species in 2007, he said.\n\nHistorical records reveal that gharial, one of the three crocodilian species found in India, was present in Indus river system, including Beas and Sutlej rivers, indicating healthy river system, the official said.\n\nSingh said, 'gharial is harmless and man-animal conflict is not an issue with it.'"),
        News(thumbnailImage: #imageLiteral(resourceName: "corbett"), headlineText: "New eco-tourism zone opened at Corbett Tiger Reserve", content: "DEHRADUN: A new eco-tourism zone was today opened at Uttarakhand's famous Corbett Tiger Reserve for tourists and wildlife lovers.\n\nThe zone -- Dhela eco-tourism centre-- which became functional today is in addition to five zones already operational at the Corbett Tiger Reserve which are opened every year for tourists and wildlife lovers on November 15.\n\nIn the new zone, tourists and wildlife lovers can also enjoy a nature trail from January 1 next year, state forest minister Dinesh Agrawal said. \n\nThe zones now operational at the famous tiger reserve are Dhikala, Lohachaud, Sonanadi, Jhirna, Bijrani and Dhela. \n\nOver two lakh tourists, including 5262 from abroad, visited Corbett Tiger Reserve last year and the state earned a revenue of Rs 7.5 crore, Agrawal said.\n\n\nFor more information visit: https://economictimes.indiatimes.com/magazines/travel/new-eco-tourism-zone-opened-at-corbett-tiger-reserve/articleshow/45335224.cms"),
        News(thumbnailImage: #imageLiteral(resourceName: "chandaka"), headlineText: "Eco-tourism push for Chandaka sanctuary in Odisha", content: "BHUBANESWAR: In its bid to promote eco-tourism in the state, Odisha government today decided to develop 40 new spots besides starting online booking for accommodation at the existing ones, official sources said.\n\nThe decision in this regard was taken at a high level meeting held under the chairmanship of Chief Secretary A P Padhi, an official said after the meeting.\n\nPadhi directed the Forest and Environment Department to develop suitable facilities including waste disposal provision at eco-tourism spots.\n\nThe chief secretary focused on development of basic amenities and apposite waste disposal system at the spots.\n\n'It has been decided that a centralized online system for booking of accommodation at eco-tourist places will be developed and put in place within two months,' the official said.\n\nForest and Environment Secretary S C Mohapatra said that as of now 20 eco-tourism sites have been taken up and 40 new destinations have been identified for development. Target has been set to develop all these spots within a period of five years with investment of around Rs 100 crore, he said.\n\nThe accommodation facilities for 15 to 20 families will be developed in each major spot, Mohapatra said adding that there has been constant increase in tourist footfall in eco-tourist spots over last three years.\n\nIn the year the total footfall in eco-tourist spots was 2,76,206 which increased to 3,12,980 in the year 2014-15 and further to 3,47,965 in the year 2014-15. This year there is an increasing trend in the rate of footfall and is expected to cross the last year, he said.\n\nApart from these, 40 new spots have been identified in these forest and wild life divisions, Mohapatra said.\n\n\nFor more information visit: https://economictimes.indiatimes.com/industry/services/travel/odisha-to-develop-40-more-eco-tourism-spots/articleshow/50744383.cms"),
        News(thumbnailImage: #imageLiteral(resourceName: "saputara"), headlineText: "Kerala to promote eco-tourism in Arippa forests", content: "Kerala, a state situated on the tropical Malabar Coast of southwestern India, is one of the most popular tourist destinations in the country. Named as one of the ten paradises of the world by National Geographic Traveler, Kerala is famous especially for its ecotourism initiatives and beautiful backwaters. Its unique culture and traditions, coupled with its varied demography, have made Kerala one of the most popular tourist destinations in the world. Growing at a rate of 13.31%, the tourism industry is a major contributor to the state's economy.\n\nUntil the early 1980s, Kerala was a relatively unknown destination, with most tourism circuits concentrated around the north of the country. Aggressive marketing campaigns launched by the Kerala Tourism Development Corporation—the government agency that oversees tourism prospects of the state—laid the foundation for the growth of the tourism industry. In the decades that followed, Kerala Tourism was able to transform itself into one of the niche holiday destinations in India. The tag line Kerala – God's Own Country was adopted in its tourism promotions and became a global superbrand. Kerala is regarded as one of the destinations with the highest brand recall. In 2010, Kerala attracted 660,000 foreign tourist arrivals.\n\nKerala is an established destination for both domestic as well as foreign tourists. Kerala is well known for its beaches, backwaters in Alappuzha and Kollam, mountain ranges and wildlife sanctuaries. Other popular attractions in the state include the beaches at Kovalam, Varkala, Kollam and Kappad; backwater tourism and lake resorts around Ashtamudi Lake, Kollam; hill stations and resorts at Munnar, Wayanad, Nelliampathi, Vagamon and Ponmudi; and national parks and wildlife sanctuaries at Periyar, Parambikulam and Eravikulam National Park. The 'backwaters' region—an extensive network of interlocking rivers, lakes, and canals that centre on Ashtamudi Lake, Kollam, also see heavy tourist traffic. Heritage sites, such as the Padmanabhapuram Palace, Hill Palace, and Mattancherry Palace, are also visited. The city of Kochi ranks first in the total number of international and domestic tourists in Kerala. To further promote tourism in Kerala, the Grand Kerala Shopping Festival was started by the Government of Kerala in 2007. Since then it has been held every year during the December–January period.\n\nThe state's tourism agenda promotes ecologically sustained tourism, which focuses on the local culture, wilderness adventures, volunteering and personal growth of the local population. Efforts are taken to minimise the adverse effects of traditional tourism on the natural environment, and enhance the cultural integrity of local people.\n\n\nFor more information visit: https://en.wikipedia.org/wiki/Tourism_in_Kerala"),
        News(thumbnailImage: #imageLiteral(resourceName: "tourists"), headlineText: "Eco-tourism board to start 'Jungle Caravan' for tourists", content: "VADODARA: The Gujarat government is working on a new policy to attract more holiday-makers with a focus on developing eco-tourism spots, especially wildlife, and attract more participation from the private sector.\n\nThe new tourism policy will replace the existing one which was announced in 2009, Saurabh Patel, Gujarat Finance Minister, who also holds the Tourism portfolio, said today.\n\n'We are working on a new tourism policy right now. Through the policy, we will try to develop new destinations and boost eco-tourism, especially wildlife tourism,' he said.\n\n'There are many destinations across the state which are close to nature and can be developed as tourist spots. To identify such destinations, the Tourism Department has roped in the Forest Department,' he told PTI.\n\nPatel was speaking after Gujarat bagged four National Tourism Awards 2013-14 at a function in New Delhi today. President Pranab Mukherjee gave away these awards to S J Haider, Gujarat Tourism Secretary who was deputed by Patel as he could not make it to the event.\n\nThe MLA from Akota constituency said 'Gujarat bagged four awards - Best State Award for Comprehensive Development of Tourism; Best Rural Tourism Project for Rann Utsav, Best Tourism Promotion Publicity Material for 'Gujarat's 50 Golden Destinations' coffee table book and Best Film Promotion Friendly State.'\n\nRann Utsav, Gujarat's annual winter desert festival, started as a three-day festival in 2005, but it has now become a three-month-long activity. The event recorded an estimated tourist inflow of 1.91 lakh in 2014-15.\n\nPatel said the government will focus on infrastructure development for the hospitality sector and attract more participation from the private sector.\n\n'Our objective is to be a part of the Incredible India campaign of the Union Ministry of Tourism. Given the growth in the state, we not only want to promote our festivals, religious, adventure destinations but also target MICE (meetings, incentives, conferences and exhibitions) sector. We are planning to develop home stay facilities to give tourists a chance to experience the local flavour,' he said.\n\nThe Tourism Department has a budget of Rs 400 crore which we want to use for developing tourism infrastructure as well as promote Gujarat in India and abroad, Patel said.\n\n'Rajasthan, Goa, Kerala and Andhra Pradesh nationally and Dubai, Singapore and Malaysia on international level are Gujarat's competitors in tourism sector,' he said.\n\n\nFor more information visit: https://economictimes.indiatimes.com/industry/services/travel/eco-tourism-to-get-big-push-in-new-gujarat/articleshow/49018597.cms")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        collectionView.register(NewsHeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: newsHeaderIdentifier)
        collectionView!.register(NewsCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.navigationBar.isHidden = true
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        .lightContent
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return news.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! NewsCell
        let currentNews = news[indexPath.row]
        cell.cellImageView.image = currentNews.thumbnailImage
        cell.newsHeadlineLabel.text = currentNews.headlineText
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .init(top: 10, left: 10, bottom: 0, right: 10)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = (collectionView.frame.width - 30)/2
        
        return .init(width: width, height: width*(9/16)+60)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: newsHeaderIdentifier, for: indexPath) as! NewsHeaderView
        return headerView
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return .init(width: collectionView.frame.width, height: 100)
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailVC = DetailViewController()
        detailVC.imageView.image = news[indexPath.row].thumbnailImage
        detailVC.detailsTextLabel.text = news[indexPath.row].content
        detailVC.title = news[indexPath.row].headlineText
        navigationController?.pushViewController(detailVC, animated: false)
    }

}
