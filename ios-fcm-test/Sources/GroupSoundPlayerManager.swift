//
//  GroupSoundManager.swift
//  Aljo
//
//  Created by 한건희 on 10/27/24.
//

import Foundation
import AVFoundation

public final class GroupSoundPlayerManager {
    public static var shared = GroupSoundPlayerManager()
    private var soundPlayer: SoundPlayer? = SoundOnlyPlayer()
    private var soundSetting: SoundSetting = SoundSetting(volume: 0.5, soundSource: "")
    
    private init() { }
    
    public func play(soundPlayer: SoundPlayer) {
        self.soundPlayer = soundPlayer
        self.soundPlayer!.play(soundSetting: self.soundSetting)
    }
    
    public func stop() {
        // MARK: SoundPlayer 객체 초기화
        self.soundPlayer = nil
    }
}


