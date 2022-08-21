//
//  StretchViewController.swift
//  02images-resizable
//
//  Created by Glenn Adams on 8/21/22.
//

// demo: 1 pure stretch
//       2 stretch with gradient effect 

import UIKit

class StretchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .systemYellow
        
        let marsImage = UIImage(named: "mars")!
        let marsStretchedImage = marsImage.resizableImage(withCapInsets: .zero, resizingMode: .stretch)
        
        
        let marsImageView = UIImageView(image: marsStretchedImage)
        marsImageView.contentMode = .scaleToFill
        self.view.addSubview(marsImageView)
        marsImageView.frame = CGRect(x: 0, y: 50, width: 350, height: 150)
        marsImageView.autoresizingMask = .flexibleWidth
        
        let marsStretchedImage2 = marsImage.resizableImage(
            withCapInsets: UIEdgeInsets(top: marsImage.size.height/2.0 - 1,
                                        left: marsImage.size.width/2.0 - 1,
                                        bottom: marsImage.size.height/2.0 - 1,
                                        right: marsImage.size.width/2.0 - 1 ),
                            resizingMode: .stretch)
        
        let marsImageView2 = UIImageView(image: marsStretchedImage2)
        marsImageView2.contentMode = .scaleAspectFill
        marsImageView2.clipsToBounds = true
        
        self.view.addSubview(marsImageView2)
        marsImageView2.frame = CGRect(x: 0, y: 400, width: self.view.bounds.width, height: 150)
        
    }
    

 
}
