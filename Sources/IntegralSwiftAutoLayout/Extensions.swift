//
//  Extensions.swift
//
//  https://github.com/netzgut/integral-swift-autolayout
//
//  Copyright (c) 2021 Ben Weidig
//
//  This work is licensed under the terms of the MIT license.
//  For a copy, see LICENSE, or <https://opensource.org/licenses/MIT>
//

import UIKit

public extension UIView {

    func activate(_ constraints: NSLayoutConstraint...) {

        activate(constraints)
    }

    func activate(_ constraints: [NSLayoutConstraint]) {

        NSLayoutConstraint.activate(constraints)
    }

    func deactivate(_ constraints: NSLayoutConstraint...) {

        deactivate(constraints)
    }

    func deactivate(_ constraints: [NSLayoutConstraint]) {

        NSLayoutConstraint.deactivate(constraints)
    }

    func anchorsEqualTo(_ other: UIView) -> [NSLayoutConstraint] {

        [self.topAnchor.constraint(equalTo: other.topAnchor),
         self.leftAnchor.constraint(equalTo: other.leftAnchor),
         self.rightAnchor.constraint(equalTo: other.rightAnchor),
         self.bottomAnchor.constraint(equalTo: other.bottomAnchor)]
    }

    func anchorsEqualTo(_ other: UIView,
                        _ constant: CGFloat) -> [NSLayoutConstraint] {

        [self.topAnchor.constraint(equalTo: other.topAnchor,
                                   constant: constant),
         self.leftAnchor.constraint(equalTo: other.leftAnchor,
                                    constant: constant),
         self.rightAnchor.constraint(equalTo: other.rightAnchor,
                                     constant: -constant),
         self.bottomAnchor.constraint(equalTo: other.bottomAnchor,
                                      constant: -constant)]
    }
}

public extension NSLayoutDimension {

    func equalTo(_ constant: CGFloat) -> NSLayoutConstraint {

        constraint(equalToConstant: constant)
    }

    func equalTo(_ anchor: NSLayoutDimension,
                 _ constant: CGFloat = .zero) -> NSLayoutConstraint {

        constraint(equalTo: anchor,
                   constant: constant)
    }

    func equalTo(_ anchor: NSLayoutDimension,
                 multiplier: CGFloat = 1.0,
                 constant: CGFloat = .zero) -> NSLayoutConstraint {

        constraint(equalTo: anchor,
                   multiplier: multiplier,
                   constant: constant)
    }

    func lessThanOrEqualTo(_ constant: CGFloat) -> NSLayoutConstraint {

        constraint(lessThanOrEqualToConstant: constant)
    }

    func lessThanOrEqualTo(_ anchor: NSLayoutDimension,
                           _ constant: CGFloat = .zero) -> NSLayoutConstraint {

        constraint(lessThanOrEqualTo: anchor,
                   constant: constant)
    }

    func lessThanOrEqualTo(_ anchor: NSLayoutDimension,
                 multiplier: CGFloat = 1.0,
                 constant: CGFloat = .zero) -> NSLayoutConstraint {

        constraint(lessThanOrEqualTo: anchor,
                   multiplier: multiplier,
                   constant: constant)
    }

    func greaterThanOrEqualTo(_ constant: CGFloat) -> NSLayoutConstraint {

        constraint(greaterThanOrEqualToConstant: constant)
    }

    func greaterThanOrEqualTo(_ anchor: NSLayoutDimension,
                              _ constant: CGFloat = .zero) -> NSLayoutConstraint {

        constraint(greaterThanOrEqualTo: anchor,
                   constant: constant)
    }

    func greaterThanOrEqualTo(_ anchor: NSLayoutDimension,
                 multiplier: CGFloat = 1.0,
                 constant: CGFloat = .zero) -> NSLayoutConstraint {

        constraint(greaterThanOrEqualTo: anchor,
                   multiplier: multiplier,
                   constant: constant)
    }
}

public extension NSLayoutXAxisAnchor {

    func equalTo(_ anchor: NSLayoutXAxisAnchor,
                 _ constant: CGFloat = .zero) -> NSLayoutConstraint {
        constraint(equalTo: anchor,
                   constant: constant)
    }

    func equalToSystemSpacingAfter( _ anchor: NSLayoutXAxisAnchor,
                                    _ multiplier: CGFloat = 1.0) -> NSLayoutConstraint {
        constraint(equalToSystemSpacingAfter: anchor,
                   multiplier: multiplier)
    }

    func lessThanOrEqualTo(_ anchor: NSLayoutXAxisAnchor,
                           _ constant: CGFloat = .zero) -> NSLayoutConstraint {
        constraint(lessThanOrEqualTo: anchor,
                   constant: constant)
    }

    func lessThanOrEqualToSystemSpacingAfter(_ anchor: NSLayoutXAxisAnchor,
                                             _ multiplier: CGFloat) -> NSLayoutConstraint {
        constraint(lessThanOrEqualToSystemSpacingAfter: anchor,
                   multiplier: multiplier)
    }

    func greaterThanOrEqualTo(_ anchor: NSLayoutXAxisAnchor,
                              _ constant: CGFloat = .zero) -> NSLayoutConstraint {
        constraint(greaterThanOrEqualTo: anchor,
                   constant: constant)
    }

    func greaterThanOrEqualToSystemSpacingAfter(_ anchor: NSLayoutXAxisAnchor,
                                                _ multiplier: CGFloat) -> NSLayoutConstraint {
        constraint(greaterThanOrEqualToSystemSpacingAfter: anchor,
                   multiplier: multiplier)
    }
}

public extension NSLayoutYAxisAnchor {

    func equalTo(_ anchor: NSLayoutYAxisAnchor,
                 _ constant: CGFloat = .zero) -> NSLayoutConstraint {
        constraint(equalTo: anchor,
                   constant: constant)
    }

    func equalToSystemSpacingBelow( _ anchor: NSLayoutYAxisAnchor,
                                    _ multiplier: CGFloat = 1.0) -> NSLayoutConstraint {
        constraint(equalToSystemSpacingBelow: anchor,
                   multiplier: multiplier)
    }

    func lessThanOrEqualTo(_ anchor: NSLayoutYAxisAnchor,
                           _ constant: CGFloat = .zero) -> NSLayoutConstraint {
        constraint(lessThanOrEqualTo: anchor,
                   constant: constant)
    }

    func lessThanOrEqualToSystemSpacingBelow(_ anchor: NSLayoutYAxisAnchor,
                                             _ multiplier: CGFloat) -> NSLayoutConstraint {
        constraint(lessThanOrEqualToSystemSpacingBelow: anchor,
                   multiplier: multiplier)
    }

    func greaterThanOrEqualTo(_ anchor: NSLayoutYAxisAnchor,
                              _ constant: CGFloat = .zero) -> NSLayoutConstraint {
        constraint(greaterThanOrEqualTo: anchor,
                   constant: constant)
    }

    func greaterThanOrEqualToSystemSpacingBelow(_ anchor: NSLayoutYAxisAnchor,
                                                _ multiplier: CGFloat) -> NSLayoutConstraint {
        constraint(greaterThanOrEqualToSystemSpacingBelow: anchor,
                   multiplier: multiplier)
    }
}

public extension NSLayoutConstraint {

    func identifier(_ identifier: String) -> Self {
        self.identifier = identifier
        return self
    }

    func priority(_ priority: UILayoutPriority) -> Self {
        self.priority = priority
        return self
    }

    func priority(_ rawPriority: Float) -> Self {
        self.priority = UILayoutPriority(rawPriority)
        return self
    }
}
