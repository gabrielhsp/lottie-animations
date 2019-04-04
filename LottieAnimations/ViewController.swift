//
//  ViewController.swift
//  LottieAnimations
//
//  Created by Gabriel Henrique Santos Pereira on 04/04/19.
//  Copyright © 2019 Gabriel Henrique Santos Pereira. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController {
    @IBOutlet weak var viewAnimada: LOTAnimatedControl!
    @IBOutlet weak var switchButton: LOTAnimatedSwitch!
    @IBOutlet weak var playButton: LOTAnimatedSwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupAnimation()
        setupSwitch()
        setupPlay()
    }
    
    func setupAnimation() {
        viewAnimada.animationView.setAnimation(named: "flyAroundWorld")
        viewAnimada.animationView.loopAnimation = true
        viewAnimada.animationView.animationSpeed = 0.5
        viewAnimada.animationView.contentMode = .scaleAspectFit
        viewAnimada.animationView.play()
    }
    
    func setupPlay() {
        playButton.animationView.setAnimation(named: "playButton")
        playButton.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(togglePlay(_ :))))
    }
    
    @objc func togglePlay(_ gesture: UITapGestureRecognizer) {
        playButton.isOn = !playButton.isOn
        
        if playButton.isOn {
            playButton.animationView.play(fromProgress: 0, toProgress: 0.5, withCompletion: nil)
        } else {
            playButton.animationView.play(fromProgress: 0.5, toProgress: 0, withCompletion: nil)
        }
    }
    
    func setupSwitch() {
        switchButton.animationView.setAnimation(named: "switchButton")
        switchButton.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(toggleButton(_ :))))
    }
    
    @objc func toggleButton(_ gesture: UITapGestureRecognizer) {
        switchButton.isOn = !switchButton.isOn
        
        if switchButton.isOn {
            switchButton.animationView.play(fromProgress: 0, toProgress: 0.25, withCompletion: nil)
        } else {
            switchButton.animationView.play(fromProgress: 0.25, toProgress: 0, withCompletion: nil)
        }
    }
}

