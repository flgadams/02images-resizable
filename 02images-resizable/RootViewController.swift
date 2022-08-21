//
//  ViewController.swift
//  template-swift-no-sb
//
//  Created by Glenn Adams on 7/30/22.
// A Swift project template for UIKit apps, no storyboards
// ways to shrink or tile an image (mars)
import UIKit

class RootViewController: UIViewController {

    
    lazy var tileButton:UIButton = {  //snip zxuibtnl
        let ui = UIButton(type: .system)
        ui.setTitle("Tile", for: .normal)
        ui.titleLabel?.font = .systemFont(ofSize: 20)
        ui.setTitleColor(UIColor.white, for: UIControl.State.normal)
        ui.backgroundColor = UIColor.orange
        ui.layer.borderWidth = 1
        ui.layer.cornerRadius = 16
        ui.addTarget(self, action: #selector(tileButtonTouchSelector), for: .touchUpInside)
        return ui
    }()
    
    @objc fileprivate func tileButtonTouchSelector(sender:Any) {
        let file = "\(#file)".components(separatedBy: "/").last!; NSLog("\n\u{2705} \(#function) Line \(#line) of \(file)\n")
       
        present(TileViewController(), animated: true)
    }
    
    lazy var stretchButton:UIButton = {  //snip zxuibtnl
        let ui = UIButton(type: .system)
        ui.setTitle("Stretch", for: .normal)
        ui.titleLabel?.font = .systemFont(ofSize: 20)
        ui.setTitleColor(UIColor.white, for: UIControl.State.normal)
        ui.backgroundColor = UIColor.orange
        ui.layer.borderWidth = 1
        ui.layer.cornerRadius = 16
        ui.addTarget(self, action: #selector(stretchButtonTouchSelector), for: .touchUpInside)
        return ui
    }()
    @objc fileprivate func stretchButtonTouchSelector(sender:Any) {
        let file = "\(#file)".components(separatedBy: "/").last!; NSLog("\n\u{2705} \(#function) Line \(#line) of \(file)\n")
        present(StretchViewController(), animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemGray
        
        self.view.addSubview(tileButton)
        tileButton.frame = CGRect(x: 0, y: 50, width: self.view.bounds.width, height: 50)
        tileButton.autoresizingMask = [.flexibleWidth]
        
        self.view.addSubview(stretchButton)
        stretchButton.frame = CGRect(x: 0, y: 100, width: self.view.bounds.width, height: 50)
        stretchButton.autoresizingMask = [.flexibleWidth]
    
        
        
        
        
        
    }
}

