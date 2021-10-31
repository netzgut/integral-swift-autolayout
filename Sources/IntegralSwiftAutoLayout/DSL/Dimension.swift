//
//  Dimension.swift
//
//  https://github.com/netzgut/integral-swift-autolayout
//
//  Copyright (c) 2021 Ben Weidig
//
//  This work is licensed under the terms of the MIT license.
//  For a copy, see LICENSE, or <https://opensource.org/licenses/MIT>
//

import UIKit

public typealias DimensionData = (dimension: NSLayoutDimension,
                                  multiplier: CGFloat,
                                  constant: CGFloat)

public func +(lhs: DimensionData,
              rhs: CGFloat) -> DimensionData {

    (dimension: lhs.dimension,
     multiplier: lhs.multiplier,
     constant: lhs.constant + rhs)
}

public func -(lhs: DimensionData,
              rhs: CGFloat) -> DimensionData {

    (dimension: lhs.dimension,
     multiplier: lhs.multiplier,
     constant: lhs.constant - rhs)
}

public extension NSLayoutDimension {

    // MARK: - EQUALS

    static func |==|(lhs: NSLayoutDimension,
                     rhs: NSLayoutDimension) -> NSLayoutConstraint {

        lhs.constraint(equalTo: rhs)
    }

    static func |==|(lhs: NSLayoutDimension,
                     rhs: CGFloat) -> NSLayoutConstraint {

        lhs.constraint(equalToConstant: rhs)
    }

    static func |==|(lhs: NSLayoutDimension,
                     rhs: DimensionData) -> NSLayoutConstraint {

        lhs.constraint(equalTo: rhs.dimension,
                       multiplier: rhs.multiplier,
                       constant: rhs.constant)
    }

    // MARK: - LESS THAN OR EQUEALS

    static func |<=|(lhs: NSLayoutDimension,
                     rhs: NSLayoutDimension) -> NSLayoutConstraint {

        lhs.constraint(lessThanOrEqualTo: rhs)
    }

    static func |<=|(lhs: NSLayoutDimension,
                     rhs: CGFloat) -> NSLayoutConstraint {

        lhs.constraint(lessThanOrEqualToConstant: rhs)
    }

    static func |<=|(lhs: NSLayoutDimension,
                     rhs: DimensionData) -> NSLayoutConstraint {

        lhs.constraint(lessThanOrEqualTo: rhs.dimension,
                       multiplier: rhs.multiplier,
                       constant: rhs.constant)
    }

    // MARK: - GREATER THAN OR EQUEALS

    static func |>=|(lhs: NSLayoutDimension,
                     rhs: NSLayoutDimension) -> NSLayoutConstraint {

        lhs.constraint(greaterThanOrEqualTo: rhs)
    }

    static func |>=|(lhs: NSLayoutDimension,
                     rhs: CGFloat) -> NSLayoutConstraint {

        lhs.constraint(greaterThanOrEqualToConstant: rhs)
    }

    static func |>=|(lhs: NSLayoutDimension,
                     rhs: DimensionData) -> NSLayoutConstraint {

        lhs.constraint(greaterThanOrEqualTo: rhs.dimension,
                       multiplier: rhs.multiplier,
                       constant: rhs.constant)
    }

    // MARK: - CONSTANTS

    static func +(lhs: NSLayoutDimension,
                  rhs: CGFloat) -> DimensionData {
        (dimension: lhs,
         multiplier: 1.0,
         constant: rhs)
    }

    static func -(lhs: NSLayoutDimension,
                  rhs: CGFloat) -> DimensionData {

        (dimension: lhs,
         multiplier: 1.0,
         constant: -rhs)
    }

    // MARK: - MULTIPLIER

    static func *(lhs: CGFloat,
                  rhs: NSLayoutDimension) -> DimensionData {

        (dimension: rhs,
         multiplier: lhs,
         constant: .zero)
    }
}
