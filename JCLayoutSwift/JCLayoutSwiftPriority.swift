//
//  JCLayoutSwiftPriority.swift
//  MySwift
//
//  Created by Linda Wang on 2018/10/15.
//  Copyright © 2018 Charlie. All rights reserved.
//

import UIKit

internal class JCLayoutSwiftPriority : ExpressibleByFloatLiteral , Equatable{
    
    typealias FloatLiteralType = Float
    
    let value : FloatLiteralType
    
    
    //inherit from ExpressibleByFloatLiteral
    required init(floatLiteral value: Float) {
        self.value = value;
    }
    
    //inherit from Equatable
    static func == (lhs: JCLayoutSwiftPriority, rhs: JCLayoutSwiftPriority) -> Bool {
        return lhs.value == rhs.value
    }
    
    //Required priority
    static var Required: JCLayoutSwiftPriority{
        return 1000.0
    }
    
    //Hight priority
    static var High : JCLayoutSwiftPriority{
        return 750.0
    }
    
    //Medium priority
    static var Medium : JCLayoutSwiftPriority{
        return 501.0
    }
    
    //Low priority
    static var Low : JCLayoutSwiftPriority{
        return 250.0
    }
    
    static func > (_ lyot:JCLayoutSwiftPriority , _ ryot:JCLayoutSwiftPriority) -> Bool {
        return lyot.value>ryot.value
    }
    
    static func < (_ lyot:JCLayoutSwiftPriority , _ ryot:JCLayoutSwiftPriority)->Bool{
        return lyot.value<ryot.value
    }
    
    static func >= (_ lyot:JCLayoutSwiftPriority , _ ryot:JCLayoutSwiftPriority) -> Bool {
        return lyot.value>=ryot.value
    }
    
    static func <= (_ lyot:JCLayoutSwiftPriority , _ ryot:JCLayoutSwiftPriority)->Bool{
        return lyot.value<=ryot.value
    }
    
}


