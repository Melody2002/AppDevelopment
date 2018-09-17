//
//  ViewController.swift
//  Xylophone
//
//  Created by Melody Wen on 09/15/2018.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    var audioPlayer : AVAudioPlayer!
    
    let soundArray = ["note1","note2","note3","note4","note5","note6","note7"]
    
//Gloval Variables Using
//  var selectedSoundFileName : String = ""
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//    }
//
//    @IBAction func notePressed(_ sender: UIButton) {
//        selectedSoundFileName = soundArray[sender.tag - 1]
//
//        print(selectedSoundFileName)
//
//        playSound()
//
//    }
//
//    func playSound() {
//
//        let soundURL = Bundle.main.url(forResource: selectedSoundFileName, withExtension: "wav")
//
//        do{
//            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
//        }
//        catch{
//            print(error)
//        }
//
//        //brave: no problem need to be caught
//        //try! audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
//
//        audioPlayer.play()
//    }

    
//No Global, Using local Variables only
        override func viewDidLoad() {
            super.viewDidLoad()
        }
    
        @IBAction func notePressed(_ sender: UIButton) {
    
            playSound(selectedSoundFileName : soundArray[sender.tag - 1])
    
        }
    
    func playSound(selectedSoundFileName : String) {
    
            let soundURL = Bundle.main.url(forResource: selectedSoundFileName, withExtension: "wav")
    
            do{
                audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
            }
            catch{
                print(error)
            }
    
            //brave: no problem need to be caught
            //try! audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
    
            audioPlayer.play()
        }

}

