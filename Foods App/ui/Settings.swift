//
//  Settings.swift
//  Foods App
//
//  Created by Fourcade7 on 05/11/23.
//

import Foundation
import SwiftUI

struct SettingsScreen:View{
    @State var name:String=""
    //var users=[Food]()
    var users=["Маша","Паша"]
    @State var selecteduser="Маша"
    
    var amount=["10$","20$","30$","40$"]
    @State var selectedamount="10$"
    
    @State var checked=false
    
    @State var showalert=false
    var body: some View{
        NavigationStack{
            VStack{
                Form{
                    TextField("Имя", text: $name)
                    Picker("Рабочие", selection: $selecteduser, content: {
                        ForEach(users,id:\.self){ item in
                            Text(item)
                        }
                    })
                    Section("Дополнительная плата"){
                        Picker("Рабочие", selection: $selectedamount){
                            ForEach(amount,id:\.self){ item in
                                Text(item)
                            }
                        }.pickerStyle(.segmented)
                        
                        Toggle("каждый месяц", isOn: $checked)
                            .tint(.green)
                        
                        Button(action: {
                                   showalert = !showalert
                        }, label: {
                            Text("Сохронить")
                        }).buttonStyle(.borderless)
                            .alert("Alert", isPresented: $showalert) {
                                Button("OK", role: .cancel) { }
                                Button("OK", role: .destructive) { }
                                Button("OK", role: .none) { }
                            }
                    }
                }
                
            }.navigationTitle("Настройка")
        }
    }
}

struct SettingsPreview:PreviewProvider{
    static var previews: some View{
        SettingsScreen()
    }
}
