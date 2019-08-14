//
//  JCLayoutSwiftMaker.swift
//  MySwift
//
//  Created by Charlie Yang on 2018/10/12.
//  Copyright © 2018 Charlie. All rights reserved.
//

import Foundation


/// The constraint maker
public class JCLayouSwiftMaker{
    
    public weak var view : JCLayoutSwiftView?
    
    //1.
    public var items = [JCLayoutSwiftItem]()
    
    //TODO:the left constraint firstly
    public var left : JCLayoutSwiftItem{
        let item = JCLayoutSwiftItem(with: .Left , from : self.view!)
        self.items.append(item)
        return item;
    }
    
    //TODO:the right constraint firstly
    public var right : JCLayoutSwiftItem{
        let item = JCLayoutSwiftItem(with: .Right, from : self.view!)
        self.items.append(item)
        return item;
    }
    
    //TODO:the top constraint firstly
    public var top : JCLayoutSwiftItem{
        let item = JCLayoutSwiftItem(with: .Top, from : self.view!)
        self.items.append(item)
        return item
    }
    
    //TODO:the bottom constraint firstly
    public var bottom : JCLayoutSwiftItem{
        let item = JCLayoutSwiftItem(with: .Bottom, from : self.view!)
        self.items.append(item)
        return item
    }
    
    //TODO:the width constraint firstly
    public var width : JCLayoutSwiftItem{
        let item = JCLayoutSwiftItem(with: .Width, from : self.view!)
        self.items.append(item)
        return item
    }
    
    //TODO:the height constraint firstly
    public var height : JCLayoutSwiftItem{
        let item = JCLayoutSwiftItem(with: .Height, from : self.view!)
        self.items.append(item)
        return item
    }
    
    //TODO:the centerX constraint firstly
    public var centerX : JCLayoutSwiftItem{
        let item = JCLayoutSwiftItem(with: .CenterX, from : self.view!)
        self.items.append(item)
        return item
    }
    
    //TODO:the centerY constraint firstly
    public var centerY : JCLayoutSwiftItem{
        let item = JCLayoutSwiftItem(with: .CenterY, from : self.view!)
        self.items.append(item)
        return item
    }
    
    //TODO:the center contraint firstly
    public var center : JCLayoutSwiftItem{
        let item = JCLayoutSwiftItem(with: .Center, from : self.view!)
        self.items.append(item)
        return item
    }
    
    public var edges : JCLayoutSwiftItem{
        let item = JCLayoutSwiftItem(with: .Edges, from : self.view!)
        self.items.append(item)
        return item
    }
    
    
}
