//
//  ViewController.swift
//  Example
//
//  Created by Will on 2022/3/28.
//

import UIKit
import AnchorLayout

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        // gray view in center with size (height: 100, width: 100)
        let grayView = UIView()
        grayView.backgroundColor = .gray
        grayView.anchorSize(h: 100, w: 100)
        view.addSubview(grayView)
        grayView.centerInSuperView()
        
        // brown view below gray view with size (height: 50)
        let brownView = UIView()
        brownView.backgroundColor = .brown
        brownView.anchorSize(h: 50)
        view.addSubview(brownView)
        brownView.anchor(top: grayView.bottomAnchor, leading: grayView.leadingAnchor, bottom: nil, trailing: grayView.trailingAnchor)
        
        // blue view add to the right of grayView & brownView
        // set width as 120
        let blueView = UIView()
        blueView.backgroundColor = .blue
        blueView.anchorSize(w: 120)
        view.addSubview(blueView)
        blueView.anchor(top: grayView.topAnchor, leading: grayView.trailingAnchor, bottom: brownView.bottomAnchor, trailing: nil)
        
        
        // add yellow view into blue view and fill with padding 10
        let yellowView = UIView()
        yellowView.backgroundColor = .yellow
        blueView.addSubview(yellowView)
        yellowView.fillSuperview(padding: .init(top: 10, left: 10, bottom: 10, right: 10))
    }


}

