//
//  JCLayoutSwiftViewExtension.swift
//  MySwift
//
//  Created by Linda Wang on 2018/10/12.
//  Copyright © 2018 Charlie. All rights reserved.
//

import UIKit

internal extension JCLayoutSwiftView{
    
    var let_left : JCLayoutSwiftTarget{
        let swiftTarget = JCLayoutSwiftTarget()
        swiftTarget.target = self
        swiftTarget.constraintConnection = .Left
        
        return swiftTarget
    }
    
    var let_right : JCLayoutSwiftTarget{
        let swiftTarget = JCLayoutSwiftTarget()
        swiftTarget.target = self
        swiftTarget.constraintConnection = .Right
        
        return swiftTarget
    }
    
    var let_top : JCLayoutSwiftTarget{
        let swiftTarget = JCLayoutSwiftTarget()
        swiftTarget.target = self
        swiftTarget.constraintConnection = .Top
        
        return swiftTarget
    }
    
    var let_bottom : JCLayoutSwiftTarget{
        let swiftTarget = JCLayoutSwiftTarget()
        swiftTarget.target = self
        swiftTarget.constraintConnection = .Bottom
        
        return swiftTarget
    }
    
    var let_centerX : JCLayoutSwiftTarget{
        let swiftTarget = JCLayoutSwiftTarget()
        swiftTarget.target = self
        swiftTarget.constraintConnection = .CenterX
        
        return swiftTarget
    }
    
    var let_centerY : JCLayoutSwiftTarget{
        let swiftTarget = JCLayoutSwiftTarget()
        swiftTarget.target = self
        swiftTarget.constraintConnection = .CenterY
        
        return swiftTarget
    }
    
    var let_Center : JCLayoutSwiftTarget{
        let swiftTarget = JCLayoutSwiftTarget()
        swiftTarget.target = self
        swiftTarget.constraintConnection = .Center
        
        return swiftTarget
    }
    
    var let_edges : JCLayoutSwiftTarget{
        let swiftTarget = JCLayoutSwiftTarget()
        swiftTarget.target = self
        swiftTarget.constraintConnection = .Edges
        
        return swiftTarget
    }
    
    var jcLayoutManager : JCLayoutManager {
        var isExist : JCLayoutManager?  = objc_getAssociatedObject(self, &managerToken) as? JCLayoutManager
        if  isExist == nil {
            let layout = JCLayoutManager(self)
            objc_setAssociatedObject(self, &managerToken, layout, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            isExist = layout
        }
        return isExist!
    }
    
    
}

fileprivate var managerToken : UInt8 = 0
