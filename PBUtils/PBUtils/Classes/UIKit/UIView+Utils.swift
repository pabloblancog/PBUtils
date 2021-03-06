//
//  UIView+Utils.swift
//  PBUtils
//
//  Created by Pablo Blanco González on 11/04/2020.
//  Copyright © 2020 PabloBlanco. All rights reserved.
//

import UIKit

public extension UIView {
    
    var width: CGFloat {
        return self.frame.width
    }
    
    var height: CGFloat {
        return self.frame.height
    }
}

public extension UIView {
    
    func isFullyVisible(inView: UIView) -> Bool {
        let intersectionFrame = inView.bounds.intersection(self.frame)
        return intersectionFrame.equalTo(self.frame)
    }
    
    func addShadow(color: UIColor = .black, shadowOpacity: Float = 0.25) {
        layer.shadowColor = color.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 0)
        layer.shadowRadius = 5
        layer.shadowOpacity = shadowOpacity
        layer.masksToBounds = false
    }
}

public extension UIView {
    
    struct Margins {
        var top: CGFloat
        var leading: CGFloat
        var bottom: CGFloat
        var trailing: CGFloat
    }
    
    static let zeroMargins = Margins(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0)
    
    func addSubview(_ viewToAdd: UIView,
                    margins: Margins) {
        self.addSubview(viewToAdd,
                        topSpacing: margins.top,
                        leadingSpacing: margins.leading,
                        bottomSpacing: margins.bottom,
                        trailingSpacing: margins.trailing)
        
    }
    
    func addSubview(_ viewToAdd: UIView,
                    topSpacing: CGFloat,
                    leadingSpacing: CGFloat,
                    bottomSpacing: CGFloat,
                    trailingSpacing: CGFloat) {
        
        addSubview(viewToAdd)
        viewToAdd.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            viewToAdd.topAnchor.constraint(equalTo: topAnchor, constant: topSpacing),
            viewToAdd.leadingAnchor.constraint(equalTo: leadingAnchor, constant: leadingSpacing),
            viewToAdd.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -trailingSpacing),
            viewToAdd.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -bottomSpacing)
        ])
    }
    
    func addSubview(_ viewToAdd: UIView,
                    width: CGFloat,
                    height: CGFloat) {
        
        addSubview(viewToAdd)
        viewToAdd.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            viewToAdd.centerXAnchor.constraint(equalTo: centerXAnchor),
            viewToAdd.centerYAnchor.constraint(equalTo: centerYAnchor),
            viewToAdd.heightAnchor.constraint(equalToConstant: height),
            viewToAdd.widthAnchor.constraint(equalToConstant: width)
        ])
    }
}

public extension UIView {
    
    static func backgroundView(frame: CGRect, color: UIColor, cornerRadius: CGFloat = 0.0, corners: CACornerMask?) -> UIView {
        let subView = UIView(frame: frame)
        subView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        subView.addBackground(color: color)
        subView.setCorners(cornerRadius: cornerRadius, corners: corners)
        return subView
    }
    
    func addBackground(color: UIColor) {
        backgroundColor = color
        addShadow(color: .black)
    }
    
    func setCorners(cornerRadius: CGFloat = 0.0, corners: CACornerMask? = nil) {
        autoresizingMask = [.flexibleWidth, .flexibleHeight]
        layer.cornerRadius = cornerRadius
        layer.maskedCorners = corners ?? [.layerMaxXMaxYCorner,
                                          .layerMaxXMinYCorner,
                                          .layerMinXMaxYCorner,
                                          .layerMinXMinYCorner]
    }
}
