//
//  ViewController.swift
//  SwiftWeiXin
//
//  Created by 黄玉林 on 15/11/9.
//  Copyright © 2015年 黄玉林. All rights reserved.
//

import UIKit

class ViewController: UIViewController,RCAnimatedImagesViewDelegate{

    @IBOutlet weak var userText: UITextField!
    @IBOutlet weak var backGroudView: RCAnimatedImagesView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        userText.borderStyle=.UITextBorderStyleNone
        self.backGroudView.delegate=self;
        self.backGroudView.startAnimating();
        print("what's wrong with you!")
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func animatedImagesNumberOfImages(animatedImagesView: RCAnimatedImagesView!) -> UInt {
        return 2;
    }
    
    func animatedImagesView(animatedImagesView: RCAnimatedImagesView!, imageAtIndex index: UInt) -> UIImage! {
        return UIImage(named: "image1")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

