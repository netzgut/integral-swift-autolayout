//
//  XAxis.swift
//
//  https://github.com/netzgut/integral-swift-autolayout
//
//  Copyright (c) 2021 Ben Weidig
//
//  This work is licensed under the terms of the MIT license.
//  For a copy, see LICENSE, or <https://opensource.org/licenses/MIT>
//

import UIKit

public typealias XAxisConstant = (axis: NSLayoutXAxisAnchor,
                                  constant: CGFloat)

public typealias XAxisMultiplier = (axis: NSLayoutXAxisAnchor,
                                    multiplier: CGFloat)

public extension NSLayoutXAxisAnchor {

    // MARK: - EQUALS

    static func |==|(lhs: NSLayoutXAxisAnchor,
                     rhs: NSLayoutXAxisAnchor) -> NSLayoutConstraint {

        lhs.constraint(equalTo: rhs)
    }

    static func |==|(lhs: NSLayoutXAxisAnchor,
                     rhs: XAxisConstant) -> NSLayoutConstraint {

        lhs.constraint(equalTo: rhs.axis,
                       constant: rhs.constant)
    }

    // MARK: - LESS THAN OR EQUEALS

    static func |<=|(lhs: NSLayoutXAxisAnchor,
                     rhs: NSLayoutXAxisAnchor) -> NSLayoutConstraint {

        lhs.constraint(lessThanOrEqualTo: rhs)

    }

    static func |<=|(lhs: NSLayoutXAxisAnchor,
                     rhs: XAxisConstant) -> NSLayoutConstraint {

        lhs.constraint(lessThanOrEqualTo: rhs.axis,
                       constant: rhs.constant)
    }

    // MARK: - GREATER THAN OR EQUEALS

    static func |>=|(lhs: NSLayoutXAxisAnchor,
                     rhs: NSLayoutXAxisAnchor) -> NSLayoutConstraint {

        lhs.constraint(greaterThanOrEqualTo: rhs)
    }

    static func |>=|(lhs: NSLayoutXAxisAnchor,
                     rhs: XAxisConstant) -> NSLayoutConstraint {

        lhs.constraint(greaterThanOrEqualTo: rhs.axis,
                       constant: rhs.constant)
    }

    // MARK: - SYSTEM SPACE

    static func |==|(lhs: NSLayoutXAxisAnchor,
                     rhs: XAxisMultiplier) -> NSLayoutConstraint {

        lhs.constraint(equalToSystemSpacingAfter: rhs.axis,
                       multiplier: rhs.multiplier)
    }

    static func |=~|(lhs: NSLayoutXAxisAnchor,
                     rhs: NSLayoutXAxisAnchor) -> NSLayoutConstraint {

        lhs.constraint(equalToSystemSpacingAfter: rhs,
                       multiplier: 1.0)
    }

    static func |<=|(lhs: NSLayoutXAxisAnchor,
                     rhs: XAxisMultiplier) -> NSLayoutConstraint {

        lhs.constraint(lessThanOrEqualToSystemSpacingAfter: rhs.axis,
                       multiplier: rhs.multiplier)
    }

    static func |<~|(lhs: NSLayoutXAxisAnchor,
                     rhs: NSLayoutXAxisAnchor) -> NSLayoutConstraint {

        lhs.constraint(lessThanOrEqualToSystemSpacingAfter: rhs,
                       multiplier: 1.0)
    }

    static func |>=|(lhs: NSLayoutXAxisAnchor,
                     rhs: XAxisMultiplier) -> NSLayoutConstraint {

        lhs.constraint(greaterThanOrEqualToSystemSpacingAfter: rhs.axis,
                       multiplier: rhs.multiplier)
    }

    static func |>~|(lhs: NSLayoutXAxisAnchor,
                     rhs: NSLayoutXAxisAnchor) -> NSLayoutConstraint {

        lhs.constraint(greaterThanOrEqualToSystemSpacingAfter: rhs,
                       multiplier: 1.0)
    }

    // MARK: - CONSTANTS / SYSTEM SPACE

    static func +(lhs: NSLayoutXAxisAnchor,
                  rhs: CGFloat) -> XAxisConstant {

        (axis: lhs,
         constant: rhs)
    }

    static func -(lhs: NSLayoutXAxisAnchor,
                  rhs: CGFloat) -> XAxisConstant {

        (axis: lhs,
         constant: -rhs)
    }

    static func *(lhs: CGFloat,
                  rhs: NSLayoutXAxisAnchor) -> XAxisMultiplier {

        (axis: rhs,
         multiplier: lhs)
    }
}
