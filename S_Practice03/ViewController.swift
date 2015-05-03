//
//  ViewController.swift
//  S_Practice03
//
//  Created by Administrator on 2015/04/29.
//  Copyright (c) 2015年 Administrator. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button1 = makeButton(100)
        let button2 = makeButton(200)
        let button3 = makeButton(300)
        
        self.view.addSubview(button1)
        self.view.addSubview(button2)
        self.view.addSubview(button3)
    }

    func makeButton(y:CGFloat) -> UIButton {
        // Do any additional setup after loading the view, typically from a nib.
        
        let button = UIButton()
        
        //表示されるテキスト
        button.setTitle("Tap Me!", forState: .Normal)
        
        //テキストの色
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        
        //タップした状態のテキスト
        button.setTitle("Tapped!", forState: .Highlighted)
        
        //タップした状態の色
        button.setTitleColor(UIColor.redColor(), forState: .Highlighted)
        
        //サイズ
        button.frame = CGRectMake(0, 0, 300, 50)
        
        //配置場所
        button.layer.position = CGPoint(x: self.view.frame.width/2, y:y)
        
        //背景色
        button.backgroundColor = UIColor(red: 0.7, green: 0.2, blue: 0.2, alpha: 0.2)
        
        //角丸
        button.layer.cornerRadius = 10
        
        //ボーダー幅
        button.layer.borderWidth = 1
        
        //ボタンをタップした時に実行するメソッドを指定
        //button.addTarget(self, action: "tapped:", forControlEvents:.TouchUpInside)
        
        return button

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

