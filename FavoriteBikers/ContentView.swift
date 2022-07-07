//
//  ContentView.swift
//  FavoriteBikers
//
//  Created by Mahmut Yazar on 7.07.2022.
//

import SwiftUI

struct ContentView: View {
   var body: some View {
       
       NavigationView {
       
       List {
           
           ForEach(myFavorites) { favorite in
               
               Section(header: Text(favorite.title)) {
                   
                   ForEach(favorite.elements) { element in
                       
                       NavigationLink(destination: DetailsView(chosenFavoriteElement: element)) {
                           
                           Text(element.name)
                   
                       }
                   }
               }
           }
       }.navigationBarTitle(Text("Cyclers"))
   }
}

                

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
