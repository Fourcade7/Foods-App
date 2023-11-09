//
//  Home.swift
//  Foods App
//
//  Created by Fourcade7 on 05/11/23.
//

import Foundation
import SwiftUI

struct HomeScreen:View{
    let repository=Repository()
    var body: some View{
        NavigationStack{
            VStack{
               
                List{
                    ForEach(repository.foods, id: \.self) { item in
                       NavigationLink(destination: {
                           HomeDetailScreen(food: item)
                       }, label: {
                           HomeItem(food: item)
                       })
                    }
                }.listStyle(.sidebar)
                
                
                
                
            }.navigationTitle("Меню")
        }
    }
}

struct HomeItem:View{
    let food:Food
    var body: some View{
        VStack{
            HStack{
                Image(food.image)
                    .resizable()
                    .cornerRadius(10)
                    .frame(width: 50,height: 50)
                    
                
                VStack(alignment: .leading){
                    Text(food.name)
                    Text("\(food.price) UZS")
                }.frame(alignment: .center)
                
                Spacer()
                Button("Купить"){
                    
                }.buttonStyle(.borderedProminent)
                    
            }
        }
    }
}

struct HomePreview:PreviewProvider{
    static var previews: some View{
        HomeScreen()
    }
}
