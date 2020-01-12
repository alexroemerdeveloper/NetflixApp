//
//  MiddleViiew.swift
//  NetflixApp
//
//  Created by Alexander Römer on 12.01.20.
//  Copyright © 2020 Alexander Römer. All rights reserved.
//

import SwiftUI

struct MiddleView: View {
    
    var body: some View{
        
        VStack(spacing: 15) {
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack(spacing: 15){
                    ForEach(datas) { i in
                        VStack(alignment: .leading,spacing: 0){
                            Image(i.image)
                            HStack{
                                Spacer()
                                Button(action: {
                                    
                                }) {
                                    Image("play")
                                        .renderingMode(.original)
                                        .resizable()
                                        .frame(width: 25, height: 25)
                                }
                                .padding(.top, -12)
                            }
                            
                            VStack(alignment: .leading){
                                Text(i.name)
                                Text(i.epname)
                                    .foregroundColor(.gray)
                                
                                ZStack{
                                    Capsule()
                                        .fill(Color.gray)
                                    
                                    HStack{
                                        Capsule()
                                            .fill(Color("Color1"))
                                            .frame(width: i.percentage)
                                        Spacer()
                                    }
                                }
                                .frame(height: 5)
                                
                            }
                            .padding(.horizontal,10)
                            .padding(.bottom, 10)
                        }
                        .background(Color("Color"))
                        .padding(.bottom)
                    }
                }
            }
        }
    }
}

struct MiddleView_Previews: PreviewProvider {
    static var previews: some View {
        MiddleView()
    }
}
