//
//  YAxis.swift
//
//  https://github.com/netzgut/integral-swift-autolayout
//
//  Copyright (c) 2021 Ben Weidig
//
//  This work is licensed under the terms of the MIT license.
//  For a copy, see LICENSE, or <https://opensource.org/licenses/MIT>
//

import UIKit

public typealias YAxisConstant = (axis: NSLayoutYAxisAnchor,
                                  constant: CGFloat)

public typealias YAxisMultiplier = (axis: NSLayoutYAxisAnchor,
                                    multiplier: CGFloat)

public extension NSLayoutYAxisAnchor {

    // MARK: - EQUALS

    static func |==|(lhs: NSLayoutYAxisAnchor,
                     rhs: NSLayoutYAxisAnchor) -> NSLayoutConstraint {

        lhs.constraint(equalTo: rhs)
    }

    static func |==|(lhs: NSLayoutYAxisAnchor,
                     rhs: YAxisConstant) -> NSLayoutConstraint {

        lhs.constraint(equalTo: rhs.axis,
                       constant: rhs.constant)
    }

    // MARK: - LESS THAN OR EQUEALS

    static func |<=|(lhs: NSLayoutYAxisAnchor,
                     rhs: NSLayoutYAxisAnchor) -> NSLayoutConstraint {

        lhs.constraint(lessThanOrEqualTo: rhs)

    }

    static func |<=|(lhs: NSLayoutYAxisAnchor,
                     rhs: YAxisConstant) -> NSLayoutConstraint {

        lhs.constraint(lessThanOrEqualTo: rhs.axis,
                       constant: rhs.constant)
    }

    // MARK: - GREATER THAN OR EQUEALS

    static func |>=|(lhs: NSLayoutYAxisAnchor,
                     rhs: NSLayoutYAxisAnchor) -> NSLayoutConstraint {

        lhs.constraint(greaterThanOrEqualTo: rhs)
    }

    static func |>=|(lhs: NSLayoutYAxisAnchor,
                     rhs: YAxisConstant) -> NSLayoutConstraint {

        lhs.constraint(greaterThanOrEqualTo: rhs.axis,
                       constant: rhs.constant)
    }

    // MARK: - SYSTEM SPACE

    static func |==|(lhs: NSLayoutYAxisAnchor,
                     rhs: YAxisMultiplier) -> NSLayoutConstraint {

        lhs.constraint(equalToSystemSpacingBelow: rhs.axis,
                       multiplier: rhs.multiplier)
    }

    static func |=~|(lhs: NSLayoutYAxisAnchor,
                     rhs: NSLayoutYAxisAnchor) -> NSLayoutConstraint {

        lhs.constraint(equalToSystemSpacingBelow: rhs,
                       multiplier: 1.0)
    }

    static func |<=|(lhs: NSLayoutYAxisAnchor,
                     rhs: YAxisMultiplier) -> NSLayoutConstraint {

        lhs.constraint(lessThanOrEqualToSystemSpacingBelow: rhs.axis,
                       multiplier: rhs.multiplier)
    }

    static func |<~|(lhs: NSLayoutYAxisAnchor,
                     rhs: NSLayoutYAxisAnchor) -> NSLayoutConstraint {

        lhs.constraint(lessThanOrEqualToSystemSpacingBelow: rhs,
                       multiplier: 1.0)
    }

    static func |>=|(lhs: NSLayoutYAxisAnchor,
                     rhs: YAxisMultiplier) -> NSLayoutConstraint {

        lhs.constraint(greaterThanOrEqualToSystemSpacingBelow: rhs.axis,
                       multiplier: rhs.multiplier)
    }

    static func |>~|(lhs: NSLayoutYAxisAnchor,
                     rhs: NSLayoutYAxisAnchor) -> NSLayoutConstraint {

        lhs.constraint(greaterThanOrEqualToSystemSpacingBelow: rhs,
                       multiplier: 1.0)
    }

    // MARK: - CONSTANTS / SYSTEM SPACE

    static func +(lhs: NSLayoutYAxisAnchor,
                  rhs: CGFloat) -> YAxisConstant {

        (axis: lhs,
         constant: rhs)
    }

    static func -(lhs: NSLayoutYAxisAnchor,
                  rhs: CGFloat) -> YAxisConstant {

        (axis: lhs,
         constant: -rhs)
    }

    static func *(lhs: CGFloat,
                  rhs: NSLayoutYAxisAnchor) -> YAxisMultiplier {

        (axis: rhs,
         multiplier: lhs)
    }
}

func t() {

    let left = UIView()
    let right = UIView()
    let constraint = left.rightAnchor.constraint(equalTo: right.leftAnchor, constant: 8.0)
    constraint.priority = .required

    // AFTER
    _ = left.rightAnchor |==| right.leftAnchor + 8.0 ~~ .required ~~ "Test"
}
