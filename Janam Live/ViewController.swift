//
//  ViewController.swift
//  Janam TV Live Streaming
//
//  Created by Alen John Abraham on 12/05/16.
//  Copyright © 2016 Alen John Abraham. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation


class ViewController: UIViewController {
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        let nav = self.navigationController?.navigationBar
        nav?.barStyle = UIBarStyle.Black
        nav?.barTintColor=UIColor.blackColor()
        nav?.tintColor = UIColor.orangeColor()
        nav?.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func HighQuality(sender: UIButton)
    {
        let videoURL = NSURL(string: "http://live.wmncdn.net/janamtv1/live.stream/playlist.m3u8")
        let player = AVPlayer(URL: videoURL!)
        let playerViewController = AVPlayerViewController()
        playerViewController.player = player
        self.presentViewController(playerViewController, animated: true) {
            playerViewController.player!.play()
        }
  
    }
    @IBAction func PlayLowQuality(sender: UIButton) {
        let videoURL = NSURL(string: "http://live.wmncdn.net/janamtvmobile/72781e965e0681e980034a778ee7067b.sdp/playlist.m3u8")
        let player = AVPlayer(URL: videoURL!)
        let playerViewController = AVPlayerViewController()
        playerViewController.player = player
        self.presentViewController(playerViewController, animated: true) {
            playerViewController.player!.play()
        }
        
    }

    @IBAction func playMediumQuality(sender: UIButton) {
        print("medium clicked")
        let videoURL = NSURL(string: "http://live.wmncdn.net/janamtvmobile/bbb19eae240ec100af921d511efc86a0.sdp/playlist.m3u8")
        let player = AVPlayer(URL: videoURL!)
        let playerViewController = AVPlayerViewController()
        playerViewController.player = player
        self.presentViewController(playerViewController, animated: true) {
            playerViewController.player!.play()
        }

    }
}

