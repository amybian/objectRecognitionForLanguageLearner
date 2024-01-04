// ContentView.swift
// slanguage about
//
// Created by Scholar on 6/29/23.
//
import SwiftUI
struct Instructions: View {
  var body: some View {
    ZStack(alignment: .center) {
      Color(#colorLiteral(red: 142/255, green: 202/255, blue: 230/255, alpha: 1))
        .ignoresSafeArea()
      VStack {
        Text("Using Slanguage")
          //.font(.largeTitle)
          .fontWeight(.bold)
          .multilineTextAlignment(.center)
          .foregroundColor(Color.init(red: 2/255, green: 48/255, blue: 71/255))
          .font(.system(size: 75, design: .rounded))
        Text("Take a photo of an item to learn more about its slang in your chosen language!")
          .multilineTextAlignment(.center)
          .font(.system(size: 20, weight: .bold, design: .rounded))
          .foregroundColor(Color.white)
          .padding(.bottom,30)
          .padding(.top,10)
        Text("Supported Items:")
          //.font(.body)
          .fontWeight(.bold)
          .font(.system(size: 30, weight: .bold, design: .rounded))
          .foregroundColor(Color.white)
          .padding(.top,20)
        ZStack(alignment: .center) {
          HStack(spacing: 10) {
            VStack {
              Text("☕️")
              Text("Coffee")
            }
            .padding()
            VStack {
              Text("🥤")
              Text("Soda")
            }
            .padding()
            VStack {
              Text("📱")
              Text("Phone")
            }
            .padding()
            VStack {
              Text("💵")
              Text("Money")
            }
            .padding()
            VStack {
              Text("👟")
              Text("Shoes")
            }
            .padding()
          }
          .padding()
        }
        .background(Rectangle()
          .frame(width: 500, height: 100)
          .foregroundColor(.white)
          .cornerRadius(20))
        .padding()
        
          
          
         
          
          NavigationLink(destination: Languages()) {
              Text("Continue")
                  .foregroundColor(.black)
                  .padding(.horizontal, 33.3)
                  .padding(.vertical, 10)
                  .background(Color.white)
                  .cornerRadius(20)
                  .font(.system(size: 20, weight: .bold, design: .rounded))
                  .padding(.top, 50.0)
          }
      }
    }
  }
}

struct Instructions_Previews: PreviewProvider {
  static var previews: some View {
    Instructions()
  }
}
