//
// LaunchScreenView.swift
// coreML-starter
//
//
//
import SwiftUI
import AVKit
struct LaunchScreenView: View {
  private var videoURLString = "https://player.vimeo.com/external/317887716.hd.mp4?s=34c0c277af1eba7238d77b6896016e29acccfbc0&profile_id=172&oauth2_token_id=57447761" // Replace with your video URL
  
    @ViewBuilder
    var videoPlayer: some View {
        if let videoURL = URL(string: videoURLString) {
            let player = AVPlayer(url: videoURL)
          VideoPlayer(player: player)
            .frame(width: 2000, height: 1000)
            .ignoresSafeArea()
            .edgesIgnoringSafeArea(.all)
            .aspectRatio(contentMode: .fill) // Adjust the video aspect ratio
            .onAppear {
                player.play()
            }
            .onDisappear {
                player.pause()
            }
        }
    }
    
var body: some View {
    ZStack {
      videoPlayer
      VStack {
        VStack {
          // header image:
          // TODO: replace with your own image. Drag an image from your computer to assets.xcassets and add the name of your image below
       Image("Logo")
          .resizable()
          .aspectRatio(contentMode: .fit)
          .padding(.top, 10.0)
          .frame(width: 250)
          // title
          // TODO: Replace app title
          Text("Slanguage.")
            .font(.system(size: 95, design: .rounded))
            .fontWeight(.bold)
            .padding()
            .foregroundColor(.white)
            //.padding()
          // info
          // TODO: Replace with description of your app
          VStack(spacing: 20) {
            Text("Language redefined")
              .padding(.top, 20.0)
              .font(.system(size: 35, design: .rounded))
              .foregroundColor(.white)
          }
          .padding()
          .multilineTextAlignment(.center)
          // item list
          // TODO: replace with the names of your items
//          HStack(spacing: 10) {
//            VStack {
//              Text(":coffee:️")
//              Text("Coffee")
//            }
//            .padding()
//
//            VStack {
//              Text(":cup_with_straw:")
//              Text("Soda")
//            }
//            .padding()
//
//            VStack {
//              Text(":iphone:")
//              Text("Phone")
//            }
//            .padding()
//
//            VStack {
//              Text(":dollar:")
//              Text("Money")
//            }
//            .padding()
//
//            VStack {
//              Text(":athletic_shoe:")
//              Text("Shoes")
//            }
//            .padding()
//          }
//          .background(Color(UIColor.secondarySystemBackground))
//          .cornerRadius(10)
//          .padding()
          // start button
          NavigationLink(destination: Instructions()) {
            Text("Start Now")
              .foregroundColor(.black)
              .padding(.horizontal, 33.3)
              .padding(.vertical, 10)
              .background(Color.white)
              .cornerRadius(20)
              .font(.system(size: 20, weight: .bold, design: .rounded))
              .padding(.top, 50.0)
          }
          // about page
          NavigationLink(destination: AboutView()) {
            Text("Credits")
              .foregroundColor(Color.white)
              .padding(.top, 20.0)
          }
        }
        .padding(.all, 10.0)
        //.frame(maxWidth: 500) FRAME WIDTH
        //  .background(Color.white)
        .cornerRadius(25)
        .shadow(radius: 5)
      } // VStack
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(Color(hex: 0xD5F4FF))
    .edgesIgnoringSafeArea(.all)
    .navigationBarHidden(true)
  }
}
class AVPlayerManager {
  static let shared = AVPlayerManager()
  private let player = AVPlayer()
  private init() {}
  func play() {
    player.play()
  }
}
struct LaunchScreenView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      if #available(iOS 15.0, *) {
        LaunchScreenView()
          .previewDevice(PreviewDevice(rawValue: "iPad Pro (12.9-inch)"))
          .previewInterfaceOrientation(.landscapeLeft)
      } else {
        // Fallback on earlier versions
      }
    }
  }
}
