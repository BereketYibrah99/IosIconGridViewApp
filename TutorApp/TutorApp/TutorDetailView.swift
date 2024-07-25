//
//  TutorDetailView.swift
//  TutorApp
//
//  Created by Bereket Yibrah  on 6/16/24.
//

import SwiftUI

struct TutorDetailView: View {
    var body: some View {
        VStack{
           
        }
    }
}

#Preview {
    TutorDetailView()
}
struct IconsDetailView: View {
    var appsInfo:AppInfo
    @Binding var IsshowingDetailView:Bool
    var body: some View {
        VStack{
            HStack{
                Text("    ")
                
                VStack{
                   
                    Button(){
                        IsshowingDetailView=false
                    }
                label:{
                    Image(systemName: "xmark")
                        .resizable()
                        .frame(width: 27,height: 27)
                        .foregroundColor(Color(.label))
                   
                    
                }
                   
                }
                Spacer()
            }
            Spacer()
            VStack(spacing:20){
                Image(appsInfo.ImageName)
                    .resizable()
                    .frame(width: 63,height: 63)
                Text(appsInfo.name)
                    .font(.title2)
                    .bold()
                    .italic()
                Text(appsInfo.description)
                    .font(.headline)
                    .italic()
                    
                
            }
            .padding(30)
                Button(){
                    
                }
            label:{
                
                Text("LearnMore")
                    .frame(width: 300,height: 54)
                    .background(.blue)
                    .foregroundColor(.white)
                    .font(.title)
                    .foregroundColor(Color(.label))
                    .cornerRadius(10)
                    .bold()
                
            }
            .padding(30)
            
            
        }
    }
}

