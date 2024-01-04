//
//  PredictionResultView.swift
//  coreML-starter
//

import SwiftUI

struct PredictionResultView: View {
    private(set) var labelData: Classification
    @State var soundPlayer = SoundPlayer()
    @State private var isPlaying = false
    @State private var showingSheet = false
    @State var labelName: String = ""

    
    var body: some View {
        ZStack(){
            Color(red: 142/255, green: 202/255, blue: 230/255)
                .ignoresSafeArea()
            HStack(alignment: .center){
                VStack(alignment: .center) {
                    
                    Text(labelData.label.capitalized)
                        .font(.system(size: 80, weight: .bold, design: .rounded))
                        .foregroundColor(.black)
                        .padding(30)
                        .padding([.top, .leading], 10)
                    
                    Spacer()
                    
                    VStack(alignment: .center) {
                        
                        //                if labelName != "" {
                        VStack{
                            Image(labelData.image)
                                .frame(height: 200)
                        }
                        
                        VStack{
                            Button("Learn More") {
                                
                                showingSheet.toggle()
                                labelName = labelData.label
                            }
                            .padding(.top,20)
                            .padding(.bottom,20)
                            .sheet(isPresented: $showingSheet) {
                                Definition(storyName: labelName, audioName: labelData.audio, storyText: labelData.text, translated: labelData.translation, image: labelData.image, emoji: labelData.emoji, definition: labelData.definition)
                            }
                            //  .buttonStyle(RoundedRectButtonStyle(buttonColor: .blue))
                            .foregroundColor(.black)
                            .padding(.horizontal, 33.3)
                            // .padding(.vertical, 10)
                            .background(Color.white)
                            .cornerRadius(20)
                            .font(.system(size: 25, weight: .bold, design: .rounded))
                            .padding(.top, 50.0)
                            
                        }
                        .padding(.vertical, 60)
                    }
                    //                }
                }// VStack
            }
            .frame(width: 400)
            .padding()
        }
     
    }
       
}

struct PredictionResultView_Previews: PreviewProvider {
    static var previews: some View {

        PredictionResultView(labelData: Classification(), labelName: "")
    }
    
}
