//
//  Extension.swift
//  AnchorLayout
//
//  Created by Will on 2022/3/28.
//

import UIKit

extension UIView {

    public func fillSuperview(padding: UIEdgeInsets) {
        anchor(top: superview?.topAnchor, leading: superview?.leadingAnchor, bottom: superview?.bottomAnchor,  trailing: superview?.trailingAnchor, padding: padding)
    }
    
    public func fillSuperview() {
        fillSuperview(padding: .zero)
    }
    
    public func anchor(top: NSLayoutYAxisAnchor?, leading: NSLayoutXAxisAnchor?, bottom: NSLayoutYAxisAnchor?,  trailing: NSLayoutXAxisAnchor?, padding: UIEdgeInsets = .zero, size: CGSize = .zero) {
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            topAnchor.constraint(equalTo: top, constant: padding.top).isActive = true
        }
        
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: -padding.bottom).isActive = true
        }
        
        if let leading = leading {
            leadingAnchor.constraint(equalTo: leading, constant: padding.left).isActive = true
        }
        
        if let trailing = trailing {
            trailingAnchor.constraint(equalTo: trailing, constant: -padding.right).isActive = true
        }
        
        if size.width != 0 {
            widthAnchor.constraint(equalToConstant: size.width).isActive = true
        }
        
        if size.height != 0 {
            heightAnchor.constraint(equalToConstant: size.height).isActive = true
        }
    }
    
    public func anchorSize(h: CGFloat = 0, w: CGFloat = 0) {
        if h != 0 {
            heightAnchor.constraint(equalToConstant: h).isActive = true
        }
        
        if w != 0 {
            widthAnchor.constraint(equalToConstant: w).isActive = true
        }
    }
    
    public func anchorSize(to view: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
    }
    
    public func centerInSuperView() {
        translatesAutoresizingMaskIntoConstraints = false
        if let x = superview?.centerXAnchor {
            centerXAnchor.constraint(equalTo: x).isActive = true
        }
        if let y = superview?.centerYAnchor {
            centerYAnchor.constraint(equalTo: y).isActive = true
        }
    }
    
    public func addFillSubview(_ view: UIView) {
        self.addSubview(view)
        view.fillSuperview()
    }

}

