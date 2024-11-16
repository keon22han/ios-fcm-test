//
//  SoundMode.swift
//  Aljo
//
//  Created by 한건희 on 10/27/24.
//

import Foundation
import AVFoundation

public class SoundPlayer {
    var soundPlayer : AVAudioPlayer?
    
    init() {
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default, options: [])
            try AVAudioSession.sharedInstance().setActive(true)
        } catch {
            print("Error: AVAudioSession 설정 실패")
        }
    }
    
    func play(soundSetting: SoundSetting) {
        guard let path = Bundle.main.path(forResource: "\(soundSetting.soundSource)", ofType: "mp3") else { return }
        
        let url = URL(filePath: path)
        
        do {
            soundPlayer = try AVAudioPlayer(contentsOf: url)
            soundPlayer?.volume = soundSetting.volume
            soundPlayer?.numberOfLoops = -1
            soundPlayer?.prepareToPlay()
            soundPlayer?.play()
        } catch {
            print("Error: mp3 파일 재생에 실패했습니다.")
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 10 * 60) {
            self.soundPlayer?.stop()
        }
    }
}


