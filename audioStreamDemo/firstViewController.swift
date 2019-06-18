//
//  firstViewController.swift
//  audioStreamDemo
//
//  Created by Harshal Jadhav on 11/05/17.
//  Copyright © 2017 Harshal Jadhav. All rights reserved.
//

import UIKit

class firstViewController: UIViewController {
    let playList: NSMutableArray = NSMutableArray()
    
    @IBAction func clicked(_ sender: Any) {
        // add string urls to the playlist for streaming audio files
        playList.add("https://www.bensound.org/bensound-music/bensound-happyrock.mp3")
        playList.add("https://www.bensound.org/bensound-music/bensound-summer.mp3")
        playList.add("https://www.bensound.org/bensound-music/bensound-creativeminds.mp3")
        let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PlayerViewController") as! PlayerViewController
        controller.playList = playList
        self.present(controller, animated: true, completion: {
            
        })
    }
}
