//
//  JCLayoutSwiftDefine.swift
//  MySwift
//
//  Created by Charlie Yang on 2018/10/12.
//  Copyright © 2018 Charlie. All rights reserved.
//

import Foundation

/// Some global method
public class JCLayoutSwiftGlobal{
    
}

//自定义Log

/*
 1:自定义Log一般写在AppDelegate文件中，作为一个全局函数，在整个项目中都可以调用
 2:<T>:表示参数可以是任意类型，<>内的文字可以任意写
 3:file:String = #file ,使用默认参数获取到打印语句所在的类名，#file相当于OC和swift3.0前的__FILE__
 4:funcName:String = #function ,使用默认参数获取到打印语句所在的方法名，#function相当于OC和swift3.0前的__FUNCTION__
 5:lineNum:Int = #line ,使用默认参数获取到打印语句所在的行号，#line相当于OC和swift3.0前的__LINE__
 */
public func JCLayoutLog<T>(message:T,file:String = #file,funcName:String = #function,lineNum:Int = #line){
    #if DEBUG
       let fileName = (file as NSString).lastPathComponent
       print("\(fileName)---->row\(lineNum)---->\(message)")
    #else
    
    #endif
    
}

