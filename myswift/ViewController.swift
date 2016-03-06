//
//  ViewController.swift
//  myswift
//
//  Created by 区振轩 on 16/2/23.
//  Copyright © 2016年 区振轩. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {

//MARK: - 懒加载
    //密码Lable
    
    
    lazy var passwardText : UILabel = {
        let lable = UILabel()
        lable.text = "pass";
        lable.textColor = UIColor.blackColor()
//        lable.frame = CGRectMake(100,100,100 ,20)
        lable.translatesAutoresizingMaskIntoConstraints = false;
        return lable
    }()
    
    lazy var passFexit : UITextField = {
        let textfield = UITextField()
//        textfield.frame = CGRectMake(100,130,100,20)
        textfield.borderStyle = UITextBorderStyle.RoundedRect
        textfield.placeholder = "please input your password"
        textfield.translatesAutoresizingMaskIntoConstraints = false;
        return textfield
    }()
    
    lazy var loginText : UILabel = {
        var lable = UILabel()
        lable.text = "登录"
        lable.textColor = UIColor.blackColor()
        lable.translatesAutoresizingMaskIntoConstraints = false;
        
        return lable
    }()
    
    lazy var textFei : UITextField = {
        let textF = UITextField()
        textF.borderStyle = UITextBorderStyle.RoundedRect
        textF.placeholder = "input your accound"
        textF.translatesAutoresizingMaskIntoConstraints = false;
        return textF
    }()
    
    lazy var signInBtn : UIButton = {
        let btn = UIButton()
        btn.setTitle("signIn", forState: UIControlState.Normal)
        btn.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        btn .addTarget(self, action: "hehe:", forControlEvents: UIControlEvents.TouchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false;
        return btn
    }()
    
    
   //MARK: -
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let hehe = UILabel()
        hehe.text = "123123"
        
        var xixi = "123"
        xixi = "888"
        
        
        hehe.text = xixi
        
        self.view .addSubview(loginText)
        
        self.view .addSubview(textFei)
        
        self.view .addSubview(passwardText)
        self.view .addSubview(self.passFexit)
        
        self.view .addSubview(signInBtn);
        
        signInBtn.translatesAutoresizingMaskIntoConstraints = false;
        
        
        
//        let slider = UISlider()
//        slider.userInteractionEnabled = true;
//        
//        slider.minimumValue = 0;
//        slider.maximumValue = 100;
//        slider.value = 25;
//        
//        slider.frame = CGRectMake(200, 190, 90, 3)
//        self.view.addSubview(slider)
//        slider .addTarget(self, action: "haha:", forControlEvents: UIControlEvents.ValueChanged)
        
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.updateViewConstraints()
    }

    
    override func updateViewConstraints() {
        super.updateViewConstraints()
        
        //登录文字
        let loginConstr = NSLayoutConstraint (item: loginText,
            attribute: NSLayoutAttribute.Left,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.LeftMargin,
            multiplier: 1,
            constant: 0)
        self.view.addConstraint(loginConstr)
        
        let loginConstrR = NSLayoutConstraint (item: loginText,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Top,
            multiplier: 1,
            constant: 20)
        self.view.addConstraint(loginConstrR)
        
        let loginconsW = NSLayoutConstraint (item: loginText,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1,
            constant: 80)
        self.view.addConstraint(loginconsW)
        
        let loginconsH = NSLayoutConstraint (item: loginText,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1,
            constant: 20)
        self.view.addConstraint(loginconsH)

        
        //登录feild
        let loginfield1 = NSLayoutConstraint (item: textFei,
            attribute: NSLayoutAttribute.Left,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.loginText,
            attribute: NSLayoutAttribute.Right,
            multiplier: 1,
            constant: 5)
        self.view.addConstraint(loginfield1)
        
        let loginfield2 = NSLayoutConstraint (item: textFei,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Top,
            multiplier: 1,
            constant: 20)
        self.view.addConstraint(loginfield2)
        
        let loginfield3 = NSLayoutConstraint (item: textFei,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1,
            constant: UIScreen .mainScreen().bounds.size.width - 110)
        self.view.addConstraint(loginfield3)
        
        let loginfield4 = NSLayoutConstraint (item: textFei,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1,
            constant: 20)
        self.view.addConstraint(loginfield4)
        
        //密码文字
        let passConst1 = NSLayoutConstraint (item: passwardText,
            attribute: NSLayoutAttribute.Left,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Left,
            multiplier: 1,
            constant: 10)
        self.view.addConstraint(passConst1)
        
        let passConst2 = NSLayoutConstraint (item: passwardText,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.loginText,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1,
            constant: 20)
        self.view.addConstraint(passConst2)
        
        let passConst3 = NSLayoutConstraint (item: passwardText,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1,
            constant: 80)
        self.view.addConstraint(passConst3)
        
        let passConst4 = NSLayoutConstraint (item: passwardText,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1,
            constant: 20)
        self.view.addConstraint(passConst4)
        
        //密码feild
        let passFconstr1 = NSLayoutConstraint (item: passFexit,
            attribute: NSLayoutAttribute.Left,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.passwardText,
            attribute: NSLayoutAttribute.Right,
            multiplier: 1,
            constant: 10)
        self.view.addConstraint(passFconstr1)
        
        let passFconstr2 = NSLayoutConstraint (item: passFexit,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.textFei,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1,
            constant: 20)
        self.view.addConstraint(passFconstr2)
        
        let passFconstr3 = NSLayoutConstraint (item: passFexit,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1,
            constant: UIScreen .mainScreen().bounds.size.width - 110)
        self.view.addConstraint(passFconstr3)
        
        let passFconstr4 = NSLayoutConstraint (item: passFexit,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1,
            constant: 20)
        self.view.addConstraint(passFconstr4)

        
        
        
        //登录按钮
        let constraintButtonPlayWidth = NSLayoutConstraint (item: signInBtn,
            attribute: NSLayoutAttribute.CenterX,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.CenterX,
            multiplier: 1,
            constant: 0)
        self.view.addConstraint(constraintButtonPlayWidth)
        
        let constraintButtonPlayWidth1 = NSLayoutConstraint (item: signInBtn,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.passFexit,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1,
            constant: 50)
        self.view.addConstraint(constraintButtonPlayWidth1)
        
        let constraintButtonPlayWidth2 = NSLayoutConstraint (item: signInBtn,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1,
            constant: 50)
        self.view.addConstraint(constraintButtonPlayWidth2)
        
        let constraintButtonPlayWidth3 = NSLayoutConstraint (item: signInBtn,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1,
            constant: 30)
        self.view.addConstraint(constraintButtonPlayWidth3)
        
        
        
        
        
    }
    
    func haha(sender:UISlider){
        print(sender.value);
    }
    
    func hehe(btn : UIButton){
        let soundID = SystemSoundID(kSystemSoundID_Vibrate)
        //振动
        AudioServicesPlaySystemSound(soundID)
        
        
        let alertView = UIAlertView()
        alertView.title = "error"
        alertView.message = "密码错误"
        alertView.addButtonWithTitle("123")
        alertView.addButtonWithTitle("456")
        alertView .show()
        
        print("wo hehe l ")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

