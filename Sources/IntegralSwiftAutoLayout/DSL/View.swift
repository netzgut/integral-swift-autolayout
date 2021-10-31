//
//  View.swift
//
//  https://github.com/netzgut/integral-swift-autolayout
//
//  Copyright (c) 2021 Ben Weidig
//
//  This work is licensed under the terms of the MIT license.
//  For a copy, see LICENSE, or <https://opensource.org/licenses/MIT>
//

import UIKit

public typealias ViewWithOffset = (view: UIView,
                                   offset: CGFloat)

func +(lhs: UIView,
       rhs: CGFloat) -> ViewWithOffset {

    (view: lhs,
     offset: rhs)
}

public extension UIView {

    static func |==|(lhs: UIView,
                     rhs: UIView) -> [NSLayoutConstraint] {

        [lhs.topAnchor.constraint(equalTo: rhs.topAnchor),
         lhs.leftAnchor.constraint(equalTo: rhs.leftAnchor),
         lhs.rightAnchor.constraint(equalTo: rhs.rightAnchor),
         lhs.bottomAnchor.constraint(equalTo: rhs.bottomAnchor)]
    }

    static func |==|(lhs: UIView,
                     rhs: ViewWithOffset) -> [NSLayoutConstraint] {

        [lhs.topAnchor.constraint(equalTo: rhs.view.topAnchor,
                                  constant: rhs.offset),
         lhs.leftAnchor.constraint(equalTo: rhs.view.leftAnchor,
                                   constant: rhs.offset),
         lhs.rightAnchor.constraint(equalTo: rhs.view.rightAnchor,
                                    constant: -rhs.offset),
         lhs.bottomAnchor.constraint(equalTo: rhs.view.bottomAnchor,
                                     constant: -rhs.offset)]
    }
}
