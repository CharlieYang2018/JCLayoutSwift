//
//  JCLayoutSwiftPriority.swift
//  MySwift
//
//  Created by Charlie Yang on 2018/10/15.
//  Copyright © 2018 Charlie. All rights reserved.
//

import UIKit

public class JCLayoutSwiftPriority : ExpressibleByFloatLiteral , Equatable{
    
    public typealias FloatLiteralType = Float
    
    let value : FloatLiteralType
    
    
    //inherit from ExpressibleByFloatLiteral
    required public init(floatLiteral value: Float) {
        self.value = value;
    }
    
    //inherit from Equatable
    public static func == (lhs: JCLayoutSwiftPriority, rhs: JCLayoutSwiftPriority) -> Bool {
        return lhs.value == rhs.value
    }
    
    //Required priority
    public static var Required: JCLayoutSwiftPriority{
        return 1000.0
    }
    
    //Hight priority
    public static var High : JCLayoutSwiftPriority{
        return 750.0
    }
    
    //Medium priority
    public static var Medium : JCLayoutSwiftPriority{
        return 501.0
    }
    
    //Low priority
    public static var Low : JCLayoutSwiftPriority{
        return 250.0
    }
    
    public static func > (_ lyot:JCLayoutSwiftPriority , _ ryot:JCLayoutSwiftPriority) -> Bool {
        return lyot.value>ryot.value
    }
    
    public static func < (_ lyot:JCLayoutSwiftPriority , _ ryot:JCLayoutSwiftPriority)->Bool{
        return lyot.value<ryot.value
    }
    
    public static func >= (_ lyot:JCLayoutSwiftPriority , _ ryot:JCLayoutSwiftPriority) -> Bool {
        return lyot.value>=ryot.value
    }
    
    public static func <= (_ lyot:JCLayoutSwiftPriority , _ ryot:JCLayoutSwiftPriority)->Bool{
        return lyot.value<=ryot.value
    }
    
}


