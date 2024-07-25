//
//  ScreenTitleView.swift
//  TutorApp
//
//  Created by Bereket Yibrah  on 6/16/24.
//

import SwiftUI

struct ScreenTitleView: View {
    var body: some View {
        VStack{
            ScreenView(appsInfo: Apps.icons[15])
        }
    }
}

#Preview {
    ScreenTitleView()
}
struct ScreenView: View {
    var appsInfo:AppInfo
    var body: some View {
        VStack{
            Image(appsInfo.ImageName)
                .resizable()
                .frame(width: 63,height: 63)
            Text(appsInfo.name)
                .font(.caption)
                .bold()
                .italic()
        }
    }
}
