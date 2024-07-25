//
//  ContentView.swift
//  TutorApp
//
//  Created by Bereket Yibrah  on 6/16/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel =  TutorViewModel()
    var column : [GridItem] = [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())]
    var body: some View {
        VStack {
            NavigationView{
                ScrollView{
                    LazyVGrid(columns: column)  {
                        ForEach(Apps.icons){
                            appsInfo in
                            ScreenView(appsInfo: appsInfo)
                                .onTapGesture {
                                    viewModel.SelectedIcon=appsInfo
                                }
                        }
                    }
                }
                .navigationTitle("Apple's Icons")
                .navigationViewStyle(.automatic)
                .fullScreenCover(isPresented: $viewModel.IsshowingDetailView, content: {
                    IconsDetailView(appsInfo: viewModel.SelectedIcon ?? Apps.icons[0], IsshowingDetailView: $viewModel.IsshowingDetailView)
                })
                
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
