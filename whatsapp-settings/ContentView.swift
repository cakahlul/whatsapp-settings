//
//  ContentView.swift
//  whatsapp-settings
//
//  Created by Ahlul Esasjana on 25/08/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Form {
                Section(){
                    NavigationLink(destination: Profile()){
                        HStack(){
                            Image("avatar")
                                .resizable()
                                    .frame(width: 50, height: 50)
                                    .clipShape(Circle())
                                        
                            
                            VStack(alignment: .leading){
                                Text("Orang Keren").font(.headline)
                                Text("Code Geek").font(.caption)
                            }
                           
                        }
                        .padding(.vertical, 10)
                    }
                        
                }
                
                
                Section(header: Text("General Settings")){
                    HStack(spacing: 20){
                        Image(systemName: "star.fill")
                            .frame(width: 35, height: 35)
                            .background(Color.orange)
                            .cornerRadius(10)
                            .foregroundColor(Color.white)
                        Text("Starred Message")
                    }
                    
                    HStack(spacing: 20){
                        Image(systemName: "desktopcomputer")
                            .frame(width: 35, height: 35)
                            .background(Color.green)
                            .cornerRadius(10)
                            .foregroundColor(Color.white)
                        Text("Whatsapp Web/Desktop")
                    }
                }
                
                Section(header: Text("Account Settings")){
                    HStack(spacing: 20){
                        Image(systemName: "person")
                            .frame(width: 35, height: 35)
                            .background(Color.blue)
                            .cornerRadius(10)
                            .foregroundColor(Color.white)
                        Text("Account")
                    }
                    
                    HStack(spacing: 20){
                        Image(systemName: "phone.circle")
                            .frame(width: 35, height: 35)
                            .background(Color.green)
                            .cornerRadius(10)
                            .foregroundColor(Color.white)
                        Text("Chat")
                    }
                }
                
            }.navigationTitle(Text("Settings"))
            .padding(.horizontal, -20)
        }
    }
}

struct Profile: View {
    var body: some View{
        NavigationView{
            
        }.navigationTitle(Text("Profile"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
