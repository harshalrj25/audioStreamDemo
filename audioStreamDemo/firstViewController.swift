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
        playList.add("https://firebasestorage.googleapis.com/v0/b/gitaudiohosting.appspot.com/o/bensound-memories.mp3?alt=media&token=ec3d5ca3-1ac3-4874-9a6c-cd4c331e79aa")
        playList.add("https://www.hrupin.com/wp-content/uploads/mp3/testsong_20_sec.mp3")
        playList.add("https://freemusicarchive.org/music/listen/49f8b926bd143156cfd276367165f80894237149")
 
        let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PlayerViewController") as! PlayerViewController
        controller.playList = playList
        self.present(controller, animated: true, completion: {
            
        })
    }
}
