//
//  TileViewController.swift
//  02images-resizable
//
//  Created by Glenn Adams on 8/21/22.
//
// tiling an image without and with cap insets
//

import UIKit

class TileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .systemTeal
        
        let marsImage = UIImage(named: "mars")!
        let marsTiledImage = marsImage.resizableImage(withCapInsets: .zero, resizingMode: .tile)
        
        
        let marsImageView = UIImageView(image: marsTiledImage)
        marsImageView.contentMode = .scaleToFill
        self.view.addSubview(marsImageView)
        marsImageView.frame = CGRect(x: 0, y: 50, width: 250, height: 150)
        marsImageView.autoresizingMask = .flexibleWidth
        
        let marsTiledImage2 = marsImage.resizableImage(withCapInsets: UIEdgeInsets(
            top: marsImage.size.height/4,
            left: marsImage.size.width/4,
            bottom: marsImage.size.height/4,
            right: marsImage.size.width/4), resizingMode: .tile)
        
        let marsImageView2 = UIImageView(image: marsTiledImage2)
        marsImageView2.contentMode = .scaleToFill
        self.view.addSubview(marsImageView2)
        marsImageView2.image = marsTiledImage2
        marsImageView2.frame = CGRect(x: 0, y: 300, width: 450, height: 150)
        marsImageView2.autoresizingMask = .flexibleWidth
    }
    



}
