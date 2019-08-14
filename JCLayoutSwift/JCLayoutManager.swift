//
//  JCLayoutManager.swift
//  MySwift
//
//  Created by Charlie Yang on 2018/10/12.
//  Copyright © 2018 Charlie. All rights reserved.
//

import Foundation

/// view layout manager
public class JCLayoutManager{
    
    private let make : JCLayouSwiftMaker = JCLayouSwiftMaker()
    
    public weak var view : JCLayoutSwiftView?
    
    public init(_ view:JCLayoutSwiftView) {
        self.view = view
        self.make.view = view
        view.translatesAutoresizingMaskIntoConstraints = false
    }
    
    public func create(_ layout:(_ make:JCLayouSwiftMaker)->Void) {
        //1.make layout items firstly
        layout(self.make)
        
        //2.active constraint
        self.excute()
    }
    
    
    /// just for add auto layout constraint
    private func excute(){
        assert(self.view != nil, "\(JCLayoutSwiftErrorPrefix) View cannot be nil")
        for item in self.make.items {
            item.createAutoLayoutConstarint(self.view!)
        }
    }

}
