//  SoundPlayer.swift
//  coreML-starter

import Foundation
import AudioToolbox
import AVFoundation


class SoundPlayer {

    @Published var audioPlayer: AVAudioPlayer = AVAudioPlayer()

    init() {
        startAudioSession()
    }

    private func startAudioSession() {
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
        } catch let error {
            print("Failed to start audio session: ", error)
        }
    }
    
    func stopSound() {
        self.audioPlayer.stop()
    }

    func playAudioFile(_ filename: String) {
        let split = filename.components(separatedBy: ".")
        let title = split[0]
        let ext = split[1]

        if let url = Bundle.main.url(forResource: title, withExtension: ext) {
            print("Yay!", url)

            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                DispatchQueue.global(qos: .userInteractive).async {
                    self.audioPlayer.prepareToPlay()
                    self.audioPlayer.play()
                }
            } catch let error {
                print("Sound could not be played due to error:", error)
            }
        }
    }

}


