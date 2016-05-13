//
//  MyFramework.swift
//  PonyFramework-Swift
//
//  Created by 小黑 on 16/5/13.
//  Copyright © 2016年 王云鹏. All rights reserved.
//

import UIKit

public class MyFramework: NSObject {
    static let bundle = NSBundle(forClass: MyFramework.self)
    static let MyFrameworkStr = "MyFramework"
    
    public static func loadVCFromStoryboard() {
        let vc =  UIStoryboard(name: "MyFramework", bundle: bundle).instantiateViewControllerWithIdentifier("MyFrameworkViewController")
        UIApplication.sharedApplication().keyWindow?.rootViewController?.presentViewController(vc, animated: true, completion: nil
        )
    }
    
    public static func openVCFromXib(){
        let vc = MyFrameworkViewController(nibName:MyFrameworkStr,bundle:bundle)
        UIApplication.sharedApplication().keyWindow?.rootViewController?.presentViewController(vc, animated: true, completion: nil)
    }
    
    public static func loadImage() -> UIImage {
        let image = UIImage(named: MyFrameworkStr + ".png",inBundle: bundle,compatibleWithTraitCollection:nil)
        return image!
    }
}
