//
//  TutorViewModel.swift
//  TutorApp
//
//  Created by Bereket Yibrah  on 6/16/24.
//

import SwiftUI

class TutorViewModel: ObservableObject{
    @Published var IsshowingDetailView = false
    var SelectedIcon:AppInfo?{
        didSet{
            IsshowingDetailView = true
        }
    }
}
