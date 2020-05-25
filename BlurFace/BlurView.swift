//
//  BlurView.swift
//  BlurFace
//
//  Created by artyom korotkov on 5/19/20.
//  Copyright © 2020 artyom korotkov. All rights reserved.
//

import UIKit

class BlurView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        let numOfRows = 5
        let height = frame.height / CGFloat(numOfRows)
        let width = height
        let numOfViewsPerRow = frame.width / width
        for j in 0...numOfRows {
            for i in 0...Int(numOfViewsPerRow) {
                let blurEffect = UIBlurEffect(style: .light)
                let blurEffectView = UIVisualEffectView(effect: blurEffect)
                blurEffectView.frame = CGRect(x: CGFloat(i) * width, y: CGFloat(j) * height, width: width, height: height)
                self.addSubview(blurEffectView)
            }
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
