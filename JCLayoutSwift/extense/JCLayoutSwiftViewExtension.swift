//
//  JCLayoutSwiftViewExtension.swift
//  MySwift
//
//  Created by Charlie Yang on 2018/10/12.
//  Copyright © 2018 Charlie. All rights reserved.
//

import UIKit

public extension JCLayoutSwiftView{
    
    public var let_left : JCLayoutSwiftTarget{
        let swiftTarget = JCLayoutSwiftTarget()
        swiftTarget.target = self
        swiftTarget.constraintConnection = .Left
        
        return swiftTarget
    }
    
    public var let_right : JCLayoutSwiftTarget{
        let swiftTarget = JCLayoutSwiftTarget()
        swiftTarget.target = self
        swiftTarget.constraintConnection = .Right
        
        return swiftTarget
    }
    
    public var let_top : JCLayoutSwiftTarget{
        let swiftTarget = JCLayoutSwiftTarget()
        swiftTarget.target = self
        swiftTarget.constraintConnection = .Top
        
        return swiftTarget
    }
    
    public var let_bottom : JCLayoutSwiftTarget{
        let swiftTarget = JCLayoutSwiftTarget()
        swiftTarget.target = self
        swiftTarget.constraintConnection = .Bottom
        
        return swiftTarget
    }
    
    public var let_centerX : JCLayoutSwiftTarget{
        let swiftTarget = JCLayoutSwiftTarget()
        swiftTarget.target = self
        swiftTarget.constraintConnection = .CenterX
        
        return swiftTarget
    }
    
    public var let_centerY : JCLayoutSwiftTarget{
        let swiftTarget = JCLayoutSwiftTarget()
        swiftTarget.target = self
        swiftTarget.constraintConnection = .CenterY
        
        return swiftTarget
    }
    
    public var let_Center : JCLayoutSwiftTarget{
        let swiftTarget = JCLayoutSwiftTarget()
        swiftTarget.target = self
        swiftTarget.constraintConnection = .Center
        
        return swiftTarget
    }
    
    public var let_edges : JCLayoutSwiftTarget{
        let swiftTarget = JCLayoutSwiftTarget()
        swiftTarget.target = self
        swiftTarget.constraintConnection = .Edges
        
        return swiftTarget
    }
  
    public var let_width : JCLayoutSwiftTarget{
      let swiftTarget = JCLayoutSwiftTarget()
      swiftTarget.target = self
      swiftTarget.constraintConnection = .Width
      
      return swiftTarget
    }

    public var let_height : JCLayoutSwiftTarget{
      let swiftTarget = JCLayoutSwiftTarget()
      swiftTarget.target = self
      swiftTarget.constraintConnection = .Height
      
      return swiftTarget
    }
    
    public var jcLayoutManager : JCLayoutManager {
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
