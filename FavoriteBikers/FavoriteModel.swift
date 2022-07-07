//
//  FavoriteModel.swift
//  FavoriteBikers
//
//  Created by Mahmut Yazar on 7.07.2022.
//

import Foundation

struct FavoriteModel : Identifiable {
    var id = UUID()
    var title : String
    var elements = [FavoriteElements]()
}


struct FavoriteElements : Identifiable {
    
    var id = UUID()
    var name : String
    var imagename : String
    var nation : String
    
}

//Foreigners

let jasper = FavoriteElements(name: "Jasper Philippsen", imagename: "jasper", nation: "Belgium")
let noah = FavoriteElements(name: "Noah Granigan", imagename: "noah", nation: "United States")
let mark = FavoriteElements(name: "Mark Cavendish", imagename: "mark", nation: "United Kingdom")
let jay = FavoriteElements(name: "Jay Vine", imagename: "jay", nation: "Australia")

let favoriteForeigners = FavoriteModel(title: "FOREIGNERS", elements: [jasper, noah, mark, jay])

//Locals

let ahmet = FavoriteElements(name: "Ahmet Orken", imagename: "ahmet", nation: "Turkiye")
let oguzhan = FavoriteElements(name: "Oguzhan Tiryaki", imagename: "oguzhan", nation: "Turkiye")
let onur = FavoriteElements(name: "Onur Balkan", imagename: "onur", nation: "Turkiye")

let favoriteLocals = FavoriteModel(title: "LOCALS", elements: [ahmet, oguzhan, onur])

let myFavorites = [favoriteLocals, favoriteForeigners]
