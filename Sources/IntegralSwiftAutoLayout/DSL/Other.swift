//
//  Others.swift
//
//  https://github.com/netzgut/integral-swift-autolayout
//
//  Copyright (c) 2021 Ben Weidig
//
//  This work is licensed under the terms of the MIT license.
//  For a copy, see LICENSE, or <https://opensource.org/licenses/MIT>
//

import UIKit

public extension NSLayoutConstraint {

    static func ~~(lhs: NSLayoutConstraint,
                   rhs: UILayoutPriority) -> NSLayoutConstraint {

        lhs.priority = rhs
        return lhs
    }

    static func ~~(lhs: NSLayoutConstraint,
                   rhs: Float) -> NSLayoutConstraint {

        lhs.priority = UILayoutPriority(rhs)
        return lhs
    }

    static func ~~(lhs: NSLayoutConstraint,
                   rhs: String) -> NSLayoutConstraint {

        lhs.identifier = rhs
        return lhs
    }
}
