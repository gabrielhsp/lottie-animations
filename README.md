# Lottie Animations
A xcode project to build animations using [Lottie](https://airbnb.design/lottie/)

All the animations inside this project are from [Lottie Files](https://lottiefiles.com/)

To add an animation inside your project, you just need to download the animation JSON file, add inside your assets library.

An example of how to create an animation using `ScrollView` it's:

```swift
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

```
