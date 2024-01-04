//
//  AboutView.swift
//  coreML-starter
//
//

import SwiftUI

struct AboutView: View {
    var classifierViewModel: ClassifierViewModel
    
    var body: some View {
        VStack {
            Text(classifierViewModel.dataWhenAboutTapped.description)
                .font(.title)
            Text("Add some info about who created the app!")
        }
    }
}
