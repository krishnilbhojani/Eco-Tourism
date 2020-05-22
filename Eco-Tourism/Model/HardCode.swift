//
//  HardCode.swift
//  Eco-Tourism
//
//  Created by Krishnil Bhojani on 04/03/20.
//  Copyright © 2020 AppFactory. All rights reserved.
//

import Foundation

class HardCode {
    
    func stateArray() -> [State]{
        
        let newPlace0 = Place(name: "Kullu", stateName: "Himachal Pradesh", imageName: "kullu.himachal")
        let newPlace1 = Place(name: "Shimla", stateName: "Himachal Pradesh", imageName: "shimla.himachal")
        let newPlace2 = Place(name: "Chamba", stateName: "Himachal Pradesh", imageName: "chamba.himachal")
        let newPlace3 = Place(name: "Kangra", stateName: "Himachal Pradesh", imageName: "kangra.himachal")
        let newPlace4 = Place(name: "Una", stateName: "Himachal Pradesh", imageName: "una.himachal")
        let newPlace5 = Place(name: "Kasauli", stateName: "Himachal Pradesh", imageName: "kasauli.himachal")

        let places = [newPlace0, newPlace1, newPlace2, newPlace3, newPlace4, newPlace5]
        let himachalPradesh = State(name: "Himachal Pradesh", places: places)
        
        let newPlaceOfUttarPradesh1 = Place(name: "Agra", stateName: "Uttar Pradesh", imageName: "agra")
        let newPlaceOfUttarPradesh2 = Place(name: "Ayodhya", stateName: "Uttar Pradesh", imageName: "ayodhya")
        let newPlaceOfUttarPradesh3 = Place(name: "Fatehpur Sikri", stateName: "Uttar Pradesh", imageName: "fatepur")
        let newPlaceOfUttarPradesh4 = Place(name: "Hastinapur Bird Sanctuary", stateName: "Uttar Pradesh", imageName: "hastinapur")
        let newPlaceOfUttarPradesh5 = Place(name: "Mathura", stateName: "Uttar Pradesh", imageName: "mathura")
        let newPlaceOfUttarPradesh6 = Place(name: "Nawabganj Bird Sanctuary", stateName: "Uttar Pradesh", imageName: "nawabganj")
        let newPlaceOfUttarPradesh7 = Place(name: "Sur Sarovar Bird Sanctuary", stateName: "Uttar Pradesh", imageName: "surSarovar")
        let newPlaceOfUttarPradesh8 = Place(name: "Vrindavan", stateName: "Uttar Pradesh", imageName: "vrindavan")
        
        let placesOfUttarPradesh = [newPlaceOfUttarPradesh1,newPlaceOfUttarPradesh2,newPlaceOfUttarPradesh3,newPlaceOfUttarPradesh4,newPlaceOfUttarPradesh5,newPlaceOfUttarPradesh6,newPlaceOfUttarPradesh7,newPlaceOfUttarPradesh8]
        let uttarPradesh = State(name: "Uttar Pradesh", places: placesOfUttarPradesh)
        
        let newPlaceOfGujarat1 = Place(name: "Dwarka", stateName: "Gujarat", imageName: "dwarka")
        let newPlaceOfGujarat2 = Place(name: "Gir Sanctuary", stateName: "Gujarat", imageName: "gir")
        let newPlaceOfGujarat3 = Place(name: "Saputara Hill Station", stateName: "Gujarat", imageName: "saputara")
        let newPlaceOfGujarat4 = Place(name: "Somnath", stateName: "Gujarat", imageName: "somnath")
        let newPlaceOfGujarat5 = Place(name: "Statue of Unity", stateName: "Gujarat", imageName: "statueOfUnity")
        let newPlaceOfGujarat6 = Place(name: "Sun Temple", stateName: "Gujarat", imageName: "sunTemple")
        
        let placesOfGujarat = [newPlaceOfGujarat1,newPlaceOfGujarat2,newPlaceOfGujarat3,newPlaceOfGujarat4,newPlaceOfGujarat5,newPlaceOfGujarat6]
        let gujarat = State(name: "Gujarat", places: placesOfGujarat)
        
        let newPlaceOfAndhraPradesh1 = Place(name: "Araku Valley", stateName: "Andhra Pradesh", imageName: "arukuValley")
        let newPlaceOfAndhraPradesh6 = Place(name: "Indira Gandhi Zoological Park", stateName: "Andhra Pradesh", imageName: "indira")
        let newPlaceOfAndhraPradesh3 = Place(name: "Borra Caves", stateName: "Andhra Pradesh", imageName: "borra")
        let newPlaceOfAndhraPradesh4 = Place(name: "Belum Caves", stateName: "Andhra Pradesh", imageName: "belum")
        let newPlaceOfAndhraPradesh5 = Place(name: "Horsley Hills", stateName: "Andhra Pradesh", imageName: "horsley")
        let newPlaceOfAndhraPradesh2 = Place(name: "Talakona Waterfall", stateName: "Andhra Pradesh", imageName: "talakona")
        
        let placesOfAndhra = [newPlaceOfAndhraPradesh1,newPlaceOfAndhraPradesh2,newPlaceOfAndhraPradesh3,newPlaceOfAndhraPradesh4,newPlaceOfAndhraPradesh5,newPlaceOfAndhraPradesh6]
        let andhraPradesh = State(name: "Andhra Pradesh", places: placesOfAndhra)
        
        return [himachalPradesh, uttarPradesh, gujarat, andhraPradesh]
    }
    
}
