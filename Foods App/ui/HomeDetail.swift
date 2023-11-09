//
//  HomeDetail.swift
//  Foods App
//
//  Created by Fourcade7 on 06/11/23.
//

import Foundation

import SwiftUI
struct HomeDetailScreen:View{
    
    let food:Food
    
    @State var showsheet=false
    var body: some View{
        NavigationStack{
            
           
                VStack(alignment:.leading){
                   
                    ZStack(alignment: .bottomTrailing){
                        Image("\(food.image)")
                              .resizable()
                              .scaledToFill()
                              .frame(width: .infinity,height: 250)
                              .clipped()
                        Text("\(food.price) UZS")
                            .padding(5)
                            .background(.black)
                            .padding(10)
                            .foregroundColor(.white)
                            .frame(alignment:.bottomTrailing)
                    }
                    
                    Text("\(food.description)")
                        .padding(.leading,10)
                    
                    Text("цена: \(food.price) UZS")
                        .offset(x:10,y: 5)
                    
                    
                    Button("Заказать сейчас"){
                        showsheet = !showsheet
                    }.buttonStyle(.borderedProminent)
                        .padding(.leading,10)
                        .frame(height: 30)
                        .frame(maxWidth: .infinity)
                        .confirmationDialog("Change background", isPresented: $showsheet) {
                            Button("Red") {  }
                            Button("Green") { }
                            Button("Blue") {  }
                            Button("Cancel", role: .cancel) { }
                            Button("Cancel", role: .destructive) { }
                        } message: {
                            Text("Select a new color")
                        }
                       
                  
                        
                }
                .frame(maxWidth: .infinity,maxHeight:.infinity,alignment:.top)
                .navigationTitle(food.name)
           
                
        }
    }
}


struct HomeDetailPreview:PreviewProvider{
    static var previews: some View{
        HomeDetailScreen(food: Food(name: "Palov", image: "polov", description: "Oq Polov", price: 20000))
    }
}
