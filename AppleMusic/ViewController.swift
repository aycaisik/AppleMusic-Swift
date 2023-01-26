//
//  ViewController.swift
//  AppleMusic
//
//  Created by Ayça Işık on 25.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - UI Elements
    @IBOutlet var albumImageView: UIImageView!
    
    @IBOutlet var reverseBackgroundView: UIView!
    @IBOutlet var reverseButton: UIButton!
    
    @IBOutlet var playPauseBackgroundView: UIView!
    @IBOutlet var playPauseButton: UIButton!
    
    @IBOutlet var forwardBackgroundView: UIView!
    @IBOutlet var forwardButton: UIButton!

    // MARK: - Properties
    var isPlaying: Bool = true {
        didSet {
            if isPlaying {
                playPauseButton.setImage(UIImage(named: "pause"), for: .normal)
            }else {
                playPauseButton.setImage(UIImage(named: "play"), for: .normal)
            }
        }
    }
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        reverseBackgroundView.layer.cornerRadius = 35
        reverseBackgroundView.clipsToBounds = true
        reverseBackgroundView.alpha = 0
        
        playPauseBackgroundView.layer.cornerRadius = 35
        playPauseBackgroundView.clipsToBounds = true
        playPauseBackgroundView.alpha = 0
        
        forwardBackgroundView.layer.cornerRadius = 35
        forwardBackgroundView.clipsToBounds = true
        forwardBackgroundView.alpha = 0
    }
    
    // MARK: - Actions
    @IBAction func playPauseButtonTapped(_ button: UIButton) {
        if isPlaying {
            UIView.animate(withDuration: 0.5) {
                self.albumImageView.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
            }
        }else {
            UIView.animate(withDuration: 0.5) {
                self.albumImageView.transform = .identity
            }
        }
        
        isPlaying.toggle()
    }
        
        
        
    }
    
   
