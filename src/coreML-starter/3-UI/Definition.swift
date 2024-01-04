//
//  StoryView.swift
//  coreML-starter
//

import SwiftUI

struct Definition: View {
    @Environment(\.dismiss) var dismiss
    @State var soundPlayer = SoundPlayer()
    @State var storyName: String
    @State var audioName: String
    @State var storyText: String
    @State var translated: String
    @State var image: String
    @State var emoji: String
    @State var definition: String

    
    var body: some View {
        ZStack(){
            Color(red: 142/255, green: 202/255, blue: 230/255)
                .ignoresSafeArea()
            VStack(alignment: .center) {
                HStack(){
                    Text(storyName.capitalized)
                        .padding(.horizontal, 5.0)
                        .font(.system(size: 70, weight: .bold, design: .rounded))
                        .foregroundColor(.black)
                    // .padding([.top, .leading], 40.0)
                    //    HStack {
                    
                    //  }
                        .padding()
                    Text(translated)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 5.0)
                        .font(.system(size: 70, weight: .bold, design: .rounded))
                        .foregroundColor(.black)
                    
                    Button(action: {
                        
                        let audioFile = audioName.lowercased()
                        soundPlayer.playAudioFile(audioFile) // put in just the file name, including the file extension. Any audio file should work.
                    }
                    ) {
                        Image(systemName: "play.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .padding(.horizontal,40)
                    }
                    
                }
                
                Spacer()
                
                
                
                
                
                
                VStack {
                    HStack(alignment: .top){
                        VStack(){
                            Text("Definition:")
                                .multilineTextAlignment(.leading)
                                .padding(.horizontal, 5.0)
                                .font(.system(size: 30, weight: .bold, design: .rounded))
                                .foregroundColor(Color.init(red: 2/255, green: 48/255, blue: 71/255))
                                .background(.white)
                            Text(definition)
                                .multilineTextAlignment(.leading)
                                .padding(.horizontal, 5.0)
                                .font(.system(size: 20, weight: .medium, design: .rounded))
                                .foregroundColor(.black)
                            Text(emoji)
                                .multilineTextAlignment(.center)
                                .font(.system(size: 280))
                        }
                        .padding(.horizontal, 70)
                        VStack(){
                            Text("Slang Synonyms:")
                                .multilineTextAlignment(.leading)
                                .padding(.horizontal, 5.0)
                                .font(.system(size: 30, weight: .bold, design: .rounded))
                                .foregroundColor(Color.init(red: 2/255, green: 48/255, blue: 71/255))
                                .background(.white)
                            Text(storyText)
                                .multilineTextAlignment(.leading)
                                .padding(.horizontal, 5.0)
                                .font(.system(size: 20, weight: .medium, design: .rounded))
                                .foregroundColor(.black)
                        }
                        Spacer()
                        
                        VStack(alignment: .center) {
                            
                            //       Text("Play Audio")
                            //      .font(.largeTitle)
                            
                            
                        }
                        Spacer()
                    }// VStack
                    //.frame(width: 500)
                    .padding()
                    
                }
                
            }
        }
    }
        
        struct StoryView_Previews: PreviewProvider {
            static var previews: some View {
                Definition(storyName: "", audioName: "", storyText: "", translated: "", image:"", emoji: "", definition:"")
            }
        }
    }

