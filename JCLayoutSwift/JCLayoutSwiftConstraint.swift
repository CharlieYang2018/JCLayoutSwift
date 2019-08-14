//
//  JCLayoutSwiftConstraint.swift
//  MySwift
//
//  Created by Charlie Yang on 2018/10/12.
//  Copyright © 2018 Charlie. All rights reserved.
//

import UIKit


/// The constraint
public class JCLayoutSwiftConstraint{
    
    var connection = JCLayoutSwiftConstraintConnection.None
    
    var realConstraints = [NSLayoutConstraint]()
    
    
    internal init(with connection:JCLayoutSwiftConstraintConnection) {
        self.connection = connection;
    }
}


/// The connection between constarint
internal enum JCLayoutSwiftConstraintConnection : Int{
    
    case None       = 0x00
    
    case Left       = 0x01
    
    case Right      = 0x02
    
    case Top        = 0x04
    
    case Bottom     = 0x08
    
    case Width      = 0x10
    
    case Height     = 0x20
    
    case CenterX    = 0x40
    
    case CenterY    = 0x80
    
    case Center     = 0x100
    
    case Edges      = 0x200
    
    func convertAutoLayouAttibutes() -> NSLayoutConstraint.Attribute {
        switch self {
        case .Left:
            return .left
        case .Right:
            return .right
        case .Top:
            return .top
        case .Bottom:
            return .bottom
        case .Width:
            return .width
        case .Height:
            return .height
        case .CenterX:
            return .centerX
        case .CenterY:
            return .centerY
        default:
            return .notAnAttribute
        }
    }
}

/// The relation type
internal enum JCLayoutSwiftConstraintRealtion : Int{
    
    case Equal          = 0
    
    case GreaterThan    = 1
    
    case LessThan       = 2
    
    func convertAutoLayoutRelation() -> NSLayoutConstraint.Relation {
        switch self {
        case .GreaterThan:
            return .greaterThanOrEqual
        case .LessThan:
            return .lessThanOrEqual
        default:
            return .equal
        }
    }
}

