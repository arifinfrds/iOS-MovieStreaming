//
//  ViewController.swift
//  MovieStreaming
//
//  Created by Arifin Firdaus on 10/16/19.
//  Copyright © 2019 arifinfrds. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController {
    
    private var player: AVPlayer?
    private var playerViewController = AVPlayerViewController()


    override func viewDidLoad() {
        super.viewDidLoad()
        setupPlayerViewController()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        showPlayerViewController()
    }
    
    private func setupPlayerViewController() {
        let source = "http://techslides.com/demos/sample-videos/small.mp4"
        guard let url = URL(string: source) else { return }
        let player = AVPlayer(url: url)
        playerViewController.player = player
    }
    
    private func showPlayerViewController() {
        present(playerViewController, animated: true) {
            self.playerViewController.player?.play()
        }
    }


}

