//
//  UIViewController+Utils.swift
//  PBUtils
//
//  Created by Pablo Blanco González on 11/04/2020.
//  Copyright © 2020 PabloBlanco. All rights reserved.
//

import UIKit

public extension UIViewController {
    static func loadFromNib() -> Self {
        func instantiateFromNib<T: UIViewController>() -> T {
            return T.init(nibName: String(describing: T.self), bundle: Bundle(for: T.self))
        }
        return instantiateFromNib()
    }
}

public extension UIViewController {
    
    func setNavigationLargeTitle(title: String, color: UIColor = .black, font: UIFont = UIFont.systemFont(ofSize: 30, weight: .bold)) {
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: color,
                                                                        NSAttributedString.Key.font: font]
        self.title = title
    }
}
