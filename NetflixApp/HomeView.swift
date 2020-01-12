//
//  Home.swift
//  NetflixApp
//
//  Created by Alexander Römer on 12.01.20.
//  Copyright © 2020 Alexander Römer. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    @State private var txt  = ""
    @State private var show = false
    
    var body: some View{
        
        VStack(alignment: .leading, spacing: 20) {
            HStack(spacing: 10) {
                Button(action: {
                    
                }) {
                    Image("menu")
                        .renderingMode(.original)
                }
                
                Image("logo")
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    Image("Notifications")
                        .renderingMode(.original)
                }
            }
            
            HStack(spacing: 15) {
                Image(systemName: "magnifyingglass")
                    .font(.body)
                TextField("Search For Movies,Shows", text: $txt)
            }
            .padding()
            .background(Color("Color"))
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing: 15) {
                    Text("Netflix Originals")
                        .font(.title)
                    ZStack{
                        NavigationLink(destination: DetailView(show: $show), isActive: $show) {
                            Text("")
                        }
                        
                        Image("top")
                            .resizable()
                            .onTapGesture {
                                self.show.toggle()
                        }
                        
                        VStack{
                            Spacer()
                            HStack{
                                VStack(alignment: .leading, spacing: 10){
                                    Text("Marvel's The Defenders")
                                        .font(.body)
                                    Text("Season 1")
                                        .font(.caption)
                                }
                                
                                Spacer()
                                
                                Button(action: {
                                    
                                }) {
                                    Image("play")
                                        .renderingMode(.original)
                                }
                            }
                        }
                        .padding()
                    }
                    .frame(height: 190)
                    
                    HStack{
                        Spacer()
                        Button(action: {
                            
                        }) {
                            Text("View All")
                        }
                        .foregroundColor(Color("Color1"))
                    }
                    
                    Text("Continue Watching")
                    MiddleView()
                    BottomView()
                }
                
            }
            .padding(.bottom, 25)
        }
        .padding(.horizontal)
        .edgesIgnoringSafeArea(.bottom)
        .preferredColorScheme(.dark)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
