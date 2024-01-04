//
//  AboutView.swift
//  coreML-starter
//
//

import SwiftUI

struct AboutView: View {
    
    var body: some View {
        ZStack {
            Color(red: 142/255, green: 202/255, blue: 230/255)
                .ignoresSafeArea()
            VStack(alignment: .center) {
                Text("Created by Amy Bian, Saisha Lakkoju, and Sharon Oh through XCode and Co-ML.\nSpecial thanks to Mary Beth and the KWK instructional team for all their help :)")
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                    .foregroundColor(Color.black)
            }
        }
    }
}
