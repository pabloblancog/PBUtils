//
//  ReusableViewProtocol.swift
//  PBUtils
//
//  Created by Pablo Blanco González on 11/04/2020.
//  Copyright © 2020 PabloBlanco. All rights reserved.
//

import UIKit

public protocol ReusableViewProtocol: class {
    static var defaultReuseIdentifier: String { get }
}

public extension ReusableViewProtocol where Self: UIView {
    static var defaultReuseIdentifier: String {
        return String(describing: self)
    }
}

extension UICollectionViewCell: ReusableViewProtocol { }

extension UITableViewCell: ReusableViewProtocol { }

extension UITableViewHeaderFooterView: ReusableViewProtocol { }
