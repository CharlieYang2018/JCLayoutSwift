//
//  JCLayoutSwiftItem.swift
//  MySwift
//
//  Created by Charlie Yang on 2018/10/12.
//  Copyright © 2018 Charlie. All rights reserved.
//

import UIKit


/// The layout item.Every item incude one or more constraint
public class JCLayoutSwiftItem{
    
    var constraints = [JCLayoutSwiftConstraint]()
    
    var offsetValue : Float = 0
    
    var multiplieValue : Float = 1.0
    
    weak var from : JCLayoutSwiftView?
    
    var to : JCLayoutSwiftTarget?
    
    var priority : JCLayoutSwiftPriority = .Required
    
    
    var relationValue : JCLayoutSwiftConstraintRealtion = .Equal
    
    
    
    init(with constraint:JCLayoutSwiftConstraintConnection,from target:JCLayoutSwiftView) {
        let newConstraint = JCLayoutSwiftConstraint(with:constraint)
        self.constraints.append(newConstraint)
        let toTarget = JCLayoutSwiftTarget()
        if constraint != .Width && constraint != .Height {
            toTarget.target = target.superview
            
        }
        self.to = toTarget
    }
    
    
    //TODO:add left constraint
    var left : JCLayoutSwiftItem{
        let newConstraint = JCLayoutSwiftConstraint(with:.Left)
        self.constraints.append(newConstraint)
        return self
    }
    
    //TODO:add right constraint
    var right : JCLayoutSwiftItem{
        let newConstraint = JCLayoutSwiftConstraint(with:.Right)
        self.constraints.append(newConstraint)
        return self
    }
    
    //TODO:add top constraint
    var top : JCLayoutSwiftItem{
        let newConstraint = JCLayoutSwiftConstraint(with:.Top)
        self.constraints.append(newConstraint)
        return self
    }
    
    
    //TODO:add bottom contraint
    var bottom : JCLayoutSwiftItem{
        let newConstraint = JCLayoutSwiftConstraint(with:.Bottom)
        self.constraints.append(newConstraint)
        return self
    }
    
    //TODO:add centerX constraint
    var centerX : JCLayoutSwiftItem{
        let newConstraint = JCLayoutSwiftConstraint(with:.CenterX)
        self.constraints.append(newConstraint)
        return self
    }
    
    //TODO:add centerY constraint
    var centerY : JCLayoutSwiftItem{
        let newConstraint = JCLayoutSwiftConstraint(with:.CenterY)
        self.constraints.append(newConstraint)
        return self
    }
    
    //TODO:add center constraint
    var center : JCLayoutSwiftItem{
        let newConstraint = JCLayoutSwiftConstraint(with:.Center)
        self.constraints.append(newConstraint)
        return self
    }
    
    //TODO:add edges constraint
    var edges : JCLayoutSwiftItem{
        let newConstraint = JCLayoutSwiftConstraint(with:.Edges)
        self.constraints.append(newConstraint)
        return self
    }
    
    //TODO:add offset
    @discardableResult
    func offset(_ value:Float) -> JCLayoutSwiftItem {
        self.offsetValue = value
        return self;
    }
    
    //TODO:add muiltiplie
    @discardableResult
    func multiplie(_ value:Float) -> JCLayoutSwiftItem {
        self.multiplieValue = value
        return self
    }
    
    //TODO:add relation equal
    @discardableResult
    func equalTo(_ target:JCLayoutSwiftTarget) -> JCLayoutSwiftItem {
        self.relationValue = .Equal
        self.to = target
        return self
    }
    
    @discardableResult
    func equal(_ view:JCLayoutSwiftView) -> JCLayoutSwiftItem {
        self.relationValue = .Equal
        let toTarget = JCLayoutSwiftTarget()
        toTarget.target = view
        self.to = toTarget
        
        return self
    }
    
    func v_equal(_ value:Float) {
        self.relationValue = .Equal
        self.to?.target = nil
        self.offsetValue = value
    }
    
    //TODO:add relation grater than
    @discardableResult
    func greaterThan(_ target:JCLayoutSwiftTarget) -> JCLayoutSwiftItem {
        self.relationValue = .GreaterThan;
        self.to = target
        return self
    }
    
    
    //TODO:add relation less than
    @discardableResult
    func lessThan(_ target:JCLayoutSwiftTarget) -> JCLayoutSwiftItem {
        self.relationValue = .LessThan;
        self.to = target
        return self
    }
    
    //TODO:add priority
    @discardableResult
    func priority(_ value:JCLayoutSwiftPriority) -> JCLayoutSwiftItem{
        self.priority = value;
        return self
    }
    
    
    //TODO:create auto layout constraint
    func createAutoLayoutConstarint(_ target:JCLayoutSwiftView) {
        self.from = target
        //1.
        for constraint in self.constraints {
            if constraint.connection == .Center{
                //1.
                let autoCenterX = NSLayoutConstraint(item: self.from!, attribute: .centerX, relatedBy: self.relationValue.convertAutoLayoutRelation(), toItem: self.to?.target, attribute: .centerX, multiplier: CGFloat(self.multiplieValue), constant: CGFloat(self.offsetValue))
                constraint.realConstraints.append(autoCenterX)
                
                //2.
                let autoCenterY = NSLayoutConstraint(item: self.from!, attribute: .centerY, relatedBy: self.relationValue.convertAutoLayoutRelation(), toItem: self.to?.target, attribute: .centerY, multiplier: CGFloat(self.multiplieValue), constant: CGFloat(self.offsetValue))
                constraint.realConstraints.append(autoCenterY)
                
                 NSLayoutConstraint.activate(constraint.realConstraints)
                
            }else if constraint.connection == .Edges{
                //1.
                let autoLeft = NSLayoutConstraint(item: self.from!, attribute: .left, relatedBy: self.relationValue.convertAutoLayoutRelation(), toItem: self.to?.target, attribute: .left, multiplier: CGFloat(self.multiplieValue), constant: CGFloat(self.offsetValue))
                constraint.realConstraints.append(autoLeft)
                
                //2.
                let autoRight = NSLayoutConstraint(item: self.from!, attribute: .right, relatedBy: self.relationValue.convertAutoLayoutRelation(), toItem: self.to?.target, attribute: .right, multiplier: CGFloat(self.multiplieValue), constant: CGFloat(self.offsetValue))
                constraint.realConstraints.append(autoRight)
                
                //3.
                let autoTop = NSLayoutConstraint(item: self.from!, attribute: .top, relatedBy: self.relationValue.convertAutoLayoutRelation(), toItem: self.to?.target, attribute: .top, multiplier: CGFloat(self.multiplieValue), constant: CGFloat(self.offsetValue))
                constraint.realConstraints.append(autoTop)
                
                //4.
                let autoBottom = NSLayoutConstraint(item: self.from!, attribute: .bottom, relatedBy: self.relationValue.convertAutoLayoutRelation(), toItem: self.to?.target, attribute: .bottom, multiplier: CGFloat(self.multiplieValue), constant: CGFloat(self.offsetValue))
                constraint.realConstraints.append(autoBottom)
                
                
                NSLayoutConstraint.activate(constraint.realConstraints)
                
            }else{
                //1.
                let leftAttribute = constraint.connection.convertAutoLayouAttibutes()
                
                var rightAttribute = self.to!.constraintConnection.convertAutoLayouAttibutes()
                if rightAttribute == .notAnAttribute{
                    switch leftAttribute{
                    case .left:
                        rightAttribute = .left
                    case .right:
                        rightAttribute = .right
                    case .top:
                        rightAttribute = .top
                    case .bottom:
                        rightAttribute = .bottom
                    case .centerX:
                        rightAttribute = .centerX
                    case .centerY:
                        rightAttribute = .centerY
                    
                    default:
                        rightAttribute = .notAnAttribute
                    }
                }
                let autoConstraint  = NSLayoutConstraint(item: self.from!, attribute:leftAttribute , relatedBy: self.relationValue.convertAutoLayoutRelation(), toItem: self.to?.target, attribute:rightAttribute , multiplier: CGFloat(self.multiplieValue), constant: CGFloat(self.offsetValue))
                constraint.realConstraints.append(autoConstraint)
                
                //2.
                 NSLayoutConstraint.activate(constraint.realConstraints)
            }
            
        }
    }
}

