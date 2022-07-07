//
//  DetailsView.swift
//  FavoriteBikers
//
//  Created by Mahmut Yazar on 7.07.2022.
//

import SwiftUI

struct DetailsView: View {
    
    var chosenFavoriteElement : FavoriteElements
    
    var body: some View {
        VStack {
        
            Image(chosenFavoriteElement.imagename)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            Text(chosenFavoriteElement.name)
                .font(.largeTitle)
                .padding()
            
            Text(chosenFavoriteElement.nation)
                .padding()
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(chosenFavoriteElement: jasper)
    }
}
}
