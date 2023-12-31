//
//  ClassificationView.swift
//  coreML-starter
//
//  
//

import SwiftUI

struct ClassificationView: View {
    @EnvironmentObject var predictionStatus: PredictionStatus
    @StateObject var classifierViewModel = ClassifierViewModel()
    
    var body: some View {
        let predictionLabel = predictionStatus.topLabel
        
        GeometryReader { geo in
            HStack(alignment: .top) {
                LiveCameraRepresentable() {
                    predictionStatus.setLivePrediction(with: $0, label: $1, confidence: $2)
                }
                
                PredictionResultView(labelData: classifierViewModel.getPredictionData(label: predictionLabel))
                
            }// HStack
            .background(Color.init(red: 142/255, green: 202/255, blue: 230/255))
            .onAppear(perform: classifierViewModel.loadJSON)
            .frame(width: geo.size.width)
        }
    }
}

struct ClassificationView_Previews: PreviewProvider {
    static var previews: some View {
        ClassificationView()
    }
}
