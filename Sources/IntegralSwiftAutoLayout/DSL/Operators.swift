//
//  Operators.swift
//
//  https://github.com/netzgut/integral-swift-autolayout
//
//  Copyright (c) 2021 Ben Weidig
//
//  This work is licensed under the terms of the MIT license.
//  For a copy, see LICENSE, or <https://opensource.org/licenses/MIT>
//

import Foundation

infix operator |==|: AssignmentPrecedence
infix operator |<=|: AssignmentPrecedence
infix operator |>=|: AssignmentPrecedence

infix operator |=~|: AssignmentPrecedence
infix operator |<~|: AssignmentPrecedence
infix operator |>~|: AssignmentPrecedence

precedencegroup BelowAssignmentPrecedence {
    lowerThan: AssignmentPrecedence
    associativity: left
}

infix operator ~~: BelowAssignmentPrecedence
