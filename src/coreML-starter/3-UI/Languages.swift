//
// Created by Scholar on 6/28/23.
//
import SwiftUI
import AVKit
struct Languages: View {
  var body: some View {
    ZStack(alignment: .center) {
      Color(red: 142/255, green: 202/255, blue: 230/255)

      .ignoresSafeArea()
      VStack(spacing: 20) {
        Text("PICK A LANGUAGE:")
          .font(.system(size: 50, weight: .black, design: .default))
          .foregroundColor(Color.init(red: 251/255, green: 133/255, blue: 0/255))
          NavigationLink(destination: ClassificationView()) {
              Text("English")
                .foregroundColor(Color.init(red: 142/255, green: 202/255, blue: 230/255))
                .padding(.horizontal, 123)
                .padding(.vertical, 30)
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .background(Color.init(red: 2/255, green: 48/255, blue: 71/255))
                .cornerRadius(10)
          }
          
          NavigationLink(destination: ClassificationView()) {
              Text("Chinese (中文)")                .foregroundColor(Color.init(red: 142/255, green: 202/255, blue: 230/255))
                  .padding(.horizontal, 72)
                  .padding(.vertical, 30)
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .background(Color.init(red: 2/255, green: 48/255, blue: 71/255))
                .cornerRadius(10)
          }
         
            
        Button(action: {
          // Add your button action here
          print("Korean button tapped")
        }) {
          Text("Korean (한국어)")
            .foregroundColor(Color.init(red: 142/255, green: 202/255, blue: 230/255))
            .padding(.horizontal, 70)
            .padding(.vertical, 30)
            .font(.system(size: 30, weight: .bold, design: .rounded))
            .background(Color.init(red: 2/255, green: 48/255, blue: 71/255))
            .cornerRadius(10)
        }
        Button(action: {
          // Add your button action here
          print("French button tapped")
        }) {
          Text("French (Français)")
            .foregroundColor(Color.init(red: 142/255, green: 202/255, blue: 230/255))
            .padding(.horizontal, 51)
            .padding(.vertical, 30)
            .font(.system(size: 30, weight: .bold, design: .rounded))
            .background(Color.init(red: 2/255, green: 48/255, blue: 71/255))
            .cornerRadius(10)
        }
        Button(action: {
          // Add your button action here
          print("Spanish button tapped")
        }) {
          Text("Spanish (Español)")
            .foregroundColor(Color.init(red: 142/255, green: 202/255, blue: 230/255))
            .padding(.horizontal, 45)
            .padding(.vertical, 30)
            .font(.system(size: 30, weight: .bold, design: .rounded))
            .background(Color.init(red: 2/255, green: 48/255, blue: 71/255))
            .cornerRadius(10)
        }
      }
    }
  }
}
struct Languages_Previews: PreviewProvider {
  static var previews: some View {
    Languages()
  }
}
