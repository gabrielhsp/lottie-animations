//
//  ScrollAnimation.swift
//  LottieAnimations
//
//  Created by Gabriel Henrique Santos Pereira on 04/04/19.
//  Copyright © 2019 Gabriel Henrique Santos Pereira. All rights reserved.
//

import UIKit
import Lottie

class ScrollAnimation: UIViewController, UIScrollViewDelegate {
    @IBOutlet weak var myScrollView: UIScrollView!
    @IBOutlet weak var myAnimation: LOTAnimatedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAnimation()
    }
    
    func setupAnimation() {
        myAnimation.animationView.setAnimation(named: "orbitGalaxy")
        myAnimation.animationView.contentMode = .scaleAspectFit
        
        myScrollView.delegate = self
        myScrollView.contentSize = CGSize(width: self.view.frame.width * 6, height: self.view.frame.height)
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let progress = scrollView.contentOffset.x / scrollView.contentSize.width
        
        myAnimation.animationView.animationProgress = CGFloat(progress)
    }
}
