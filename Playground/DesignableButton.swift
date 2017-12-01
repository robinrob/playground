//
//  MyButton.swift
//  Playground
//
//  Created by  Robin Smith on 01/12/2017.
//  Copyright © 2017  Robin Smith. All rights reserved.
//

import UIKit


@IBDesignable class DesignableButton: UIButton {
//    required init(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//    }
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//
//        setButtonStyle()
//    }
//
//    override func awakeFromNib() {
//        setButtonStyle()
//    }
//
//    func setButtonStyle() {
//        self.layer.backgroundColor = Color.red
//    }
    
    @IBInspectable var borderColor: UIColor = UIColor.white {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 2.0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    override public func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = 0.5 * bounds.size.width
        clipsToBounds = true
    }
}
