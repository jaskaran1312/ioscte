//
//  ViewController.swift
//  class3
//
//  Created by Jaskaran Bhatia on 28/01/19.
//  Copyright © 2019 Jaskaran Bhatia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    

    let label1 = UILabel();
    var PointClickedFlag = 0;
    var actionVar = "none";
    var a = 0.0000;
    var result = 0.0000;
    var labelFlag = 0
    var firstNumberFlag = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.black;
        //self.view is main view
        setupViews();
    }

    func NumberButton(titleNumber:String) -> UIButton{
        
        let Btn = UIButton();
        Btn.setTitle(titleNumber, for: .normal);
        Btn.setTitleColor(UIColor.white, for: .normal)
        Btn.backgroundColor = (UIColor.darkGray);
        Btn.showsTouchWhenHighlighted = true;
        Btn.layer.borderWidth = 0.25;
        Btn.layer.borderColor = UIColor.black.cgColor;
        Btn.translatesAutoresizingMaskIntoConstraints = false;
        Btn.widthAnchor.constraint(equalToConstant:self.view.frame.width/4).isActive=true;
        Btn.heightAnchor.constraint(equalToConstant:self.view.frame.width/4).isActive=true;
        
        return Btn;
        
        
    }
    
    func actionButton(titleNumber:String) -> UIButton{
        
        let Btn = UIButton();
        Btn.setTitle(titleNumber, for: .normal);
        Btn.setTitleColor(UIColor.white, for: .normal)
        Btn.backgroundColor = (UIColor.orange);
        Btn.showsTouchWhenHighlighted = true;
        Btn.layer.borderWidth = 0.25;
        Btn.layer.borderColor = UIColor.black.cgColor;
        Btn.translatesAutoresizingMaskIntoConstraints = false;
        Btn.widthAnchor.constraint(equalToConstant:self.view.frame.width/4).isActive=true;
        Btn.heightAnchor.constraint(equalToConstant:self.view.frame.width/4).isActive=true;
        
        return Btn;
        
        
    }
    
    func clearButton(titleNumber:String) -> UIButton{
        
        let Btn = UIButton();
        Btn.setTitle(titleNumber, for: .normal);
        Btn.setTitleColor(UIColor.white, for: .normal)
        Btn.backgroundColor = (UIColor.gray);
        Btn.showsTouchWhenHighlighted = true;
        Btn.layer.borderWidth = 0.25;
        Btn.layer.borderColor = UIColor.black.cgColor;
        Btn.translatesAutoresizingMaskIntoConstraints = false;
        Btn.widthAnchor.constraint(equalToConstant:self.view.frame.width/4).isActive=true;
        Btn.heightAnchor.constraint(equalToConstant:self.view.frame.width/4).isActive=true;
        
        return Btn;
        
        
    }
    
    
    func setupViews(){
        
        let btn0 = NumberButton(titleNumber: "0");
        
        self.view.addSubview(btn0);
        btn0.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 0).isActive=true;
        btn0.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive=true;
        
        btn0.addTarget(self, action: #selector(Btn1Clicked), for: .touchUpInside)
        
        let btnPoint = NumberButton(titleNumber: ".")
        
        self.view.addSubview(btnPoint);
        btnPoint.leftAnchor.constraint(equalTo: btn0.rightAnchor, constant: 0).isActive=true;
        btnPoint.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive=true;
        
        btnPoint.addTarget(self, action: #selector(Btn1Clicked), for: .touchUpInside)
        
        let btn1 = NumberButton(titleNumber: "1");
        
        btn1.addTarget(self, action: #selector(Btn1Clicked), for: .touchUpInside)
        //for touching once, #selector is an objc func
        
        self.view.addSubview(btn1);
        //add btn1 to main
        
        btn1.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 0).isActive=true;
        //set left anchor of btn1 20 units away from left anchor of self.view
        
        btn1.bottomAnchor.constraint(equalTo: btn0.topAnchor, constant: 0).isActive=true;
        //set top anchor of btn1 equal to top anchor of self.view
        
        //self.view.frame is USEFUL
        
        
        
        let btn2 = NumberButton(titleNumber: "2");

        self.view.addSubview(btn2);
        //add btn2 to main
        
        btn2.leftAnchor.constraint(equalTo: btn1.rightAnchor, constant: 0).isActive=true;
        //set left anchor of btn1 20 units away from left anchor of self.view
        
        btn2.bottomAnchor.constraint(equalTo: btn0.topAnchor, constant: 0).isActive=true;
        //set top anchor of btn1 20 units away from top anchor of self.view
        
        btn2.addTarget(self, action: #selector(Btn1Clicked), for: .touchUpInside)
        //for touching once, #selector is an objc func
        
        
        
        let btn3 = NumberButton(titleNumber: "3");
        
        self.view.addSubview(btn3);
        btn3.leftAnchor.constraint(equalTo: btn2.rightAnchor, constant: 0).isActive=true;
        btn3.bottomAnchor.constraint(equalTo: btnPoint.topAnchor, constant: 0).isActive=true;
        
        btn3.addTarget(self, action: #selector(Btn1Clicked), for: .touchUpInside)
        
        let btn4 = NumberButton(titleNumber: "4");
        
        self.view.addSubview(btn4);
        btn4.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 0).isActive=true;
        btn4.bottomAnchor.constraint(equalTo: btn1.topAnchor, constant: 0).isActive=true;
        
        btn4.addTarget(self, action: #selector(Btn1Clicked), for: .touchUpInside)
        
        let btn5 = NumberButton(titleNumber: "5");
        
        self.view.addSubview(btn5);
        btn5.leftAnchor.constraint(equalTo: btn4.rightAnchor, constant: 0).isActive=true;
        btn5.bottomAnchor.constraint(equalTo: btn2.topAnchor, constant: 0).isActive=true;
        
        btn5.addTarget(self, action: #selector(Btn1Clicked), for: .touchUpInside)
        
        let btn6 = NumberButton(titleNumber: "6");
        
        self.view.addSubview(btn6);
        btn6.leftAnchor.constraint(equalTo: btn5.rightAnchor, constant: 0).isActive=true;
        btn6.bottomAnchor.constraint(equalTo: btn3.topAnchor, constant: 0).isActive=true;
        
        btn6.addTarget(self, action: #selector(Btn1Clicked), for: .touchUpInside)
        
        let btn7 = NumberButton(titleNumber: "7");
        
        self.view.addSubview(btn7);
        btn7.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 0).isActive=true;
        btn7.bottomAnchor.constraint(equalTo: btn4.topAnchor, constant: 0).isActive=true;
 
        btn7.addTarget(self, action: #selector(Btn1Clicked), for: .touchUpInside)
        
        let btn8 = NumberButton(titleNumber: "8");
        
        self.view.addSubview(btn8);
        btn8.leftAnchor.constraint(equalTo: btn7.rightAnchor, constant: 0).isActive=true;
        btn8.bottomAnchor.constraint(equalTo: btn5.topAnchor, constant: 0).isActive=true;

        btn8.addTarget(self, action: #selector(Btn1Clicked), for: .touchUpInside)
        
        let btn9 = NumberButton(titleNumber: "9");
        
        self.view.addSubview(btn9);
        btn9.leftAnchor.constraint(equalTo: btn8.rightAnchor, constant: 0).isActive=true;
        btn9.bottomAnchor.constraint(equalTo: btn6.topAnchor, constant: 0).isActive=true;

        btn9.addTarget(self, action: #selector(Btn1Clicked), for: .touchUpInside)
        
        // Function Buttons below
        
        let btnEquals = actionButton(titleNumber: "=");
        
        self.view.addSubview(btnEquals);
        btnEquals.leftAnchor.constraint(equalTo: btnPoint.rightAnchor, constant: 0).isActive=true;
        btnEquals.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive=true;
        
        btnEquals.addTarget(self, action: #selector(EqualBtnPressed), for: .touchUpInside)
        
        let btnDiv = actionButton(titleNumber: "÷");
        
        self.view.addSubview(btnDiv);
        btnDiv.leftAnchor.constraint(equalTo: btn3.rightAnchor, constant: 0).isActive=true;
        btnDiv.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive=true;
        
        btnDiv.addTarget(self, action: #selector(divBtnPressed), for: .touchUpInside)
        
        let btnMul = actionButton(titleNumber: "x");
        
        self.view.addSubview(btnMul);
        btnMul.leftAnchor.constraint(equalTo: btn3.rightAnchor, constant: 0).isActive=true;
        btnMul.bottomAnchor.constraint(equalTo: btnDiv.topAnchor, constant: 0).isActive=true;
        
        btnMul.addTarget(self, action: #selector(mulBtnPressed), for: .touchUpInside)
        
        let btnMinus = actionButton(titleNumber: "-");
        
        self.view.addSubview(btnMinus);
        btnMinus.leftAnchor.constraint(equalTo: btn6.rightAnchor, constant: 0).isActive=true;
        btnMinus.bottomAnchor.constraint(equalTo: btnMul.topAnchor, constant: 0).isActive=true;
        
        btnMinus.addTarget(self, action: #selector(subBtnPressed), for: .touchUpInside)
        
        let btnPlus = actionButton(titleNumber: "+");
        
        self.view.addSubview(btnPlus);
        btnPlus.leftAnchor.constraint(equalTo: btnEquals.rightAnchor, constant: 0).isActive=true;
        btnPlus.bottomAnchor.constraint(equalTo: btnMinus.topAnchor, constant: 0).isActive=true;
        
        btnPlus.addTarget(self, action: #selector(AddBtnPressed), for: .touchUpInside)
        
        let btnClear = NumberButton(titleNumber: "AC");
        
        self.view.addSubview(btnClear);
        btnClear.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 0).isActive=true;
        btnClear.bottomAnchor.constraint(equalTo: btn7.topAnchor, constant: 0).isActive=true;
        
        btnClear.addTarget(self, action: #selector(clearBtnPressed), for: .touchUpInside)
        
        
        let btnBackspace = NumberButton(titleNumber: "DEL");
        
        self.view.addSubview(btnBackspace);
        btnBackspace.leftAnchor.constraint(equalTo: btnClear.rightAnchor, constant: 0).isActive=true;
        btnBackspace.bottomAnchor.constraint(equalTo: btn8.topAnchor, constant: 0).isActive=true;
        
        btnBackspace.addTarget(self, action: #selector(backspaceBtnPressed), for: .touchUpInside)
    
        label1.textColor=UIColor.black;
        label1.backgroundColor=UIColor.gray;
        label1.textAlignment = .right;
        label1.translatesAutoresizingMaskIntoConstraints = false;
        
        self.view.addSubview(label1)
        
        label1.bottomAnchor.constraint(equalTo: btnPlus.topAnchor, constant: 0).isActive=true;
        label1.leftAnchor.constraint(equalTo: btnBackspace.rightAnchor).isActive=true;
        label1.heightAnchor.constraint(equalToConstant:self.view.frame.width/4).isActive=true;
        label1.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: 0).isActive=true;
        
        label1.text=("")
        
    
        
        
        
    }

    @objc func Btn1Clicked(sender: UIButton!){
        if(firstNumberFlag==0){
            if(sender.titleLabel?.text != "."){
                if(label1.text != "MATH ERROR"){
                label1.text=(label1.text ?? "") + (sender.titleLabel?.text ?? "")
                    
                }
                else{
                    
                    label1.text=(sender.titleLabel?.text ?? "");
                    
                    }
                }
                
            else{
                if(label1.text != "MATH ERROR"){
                    if(PointClickedFlag == 0){
                    label1.text=(label1.text ?? "") + (sender.titleLabel?.text ?? "");
                    PointClickedFlag = 1
                    }
                }
            
                }
            }
        else{
            if(sender.titleLabel?.text != "."){
                if(label1.text != "MATH ERROR"){
                    label1.text=(sender.titleLabel?.text ?? "")
                    firstNumberFlag = 0
                }
                else{
                    
                    label1.text=(sender.titleLabel?.text ?? "");
                    
                }
            }
                
            else{
                if(label1.text != "MATH ERROR"){
                    if(PointClickedFlag == 0){
                        label1.text=(sender.titleLabel?.text ?? "");
                        PointClickedFlag = 1
                        firstNumberFlag = 0
                    }
                }
                
            }
            
            
            
            
        }
    }

        //if it's empty use ""
        // uses the title of the sender button as text here
        
    @objc func EqualBtnPressed(sender: UIButton!) {
        if(label1.text != "" && label1.text != "MATH ERROR"){
            if(actionVar == "add"){
                result = a + Double(label1.text ?? "0")!
            }
            if(actionVar == "sub"){
                result = a - Double(label1.text ?? "0")!
            }
            if(actionVar == "mul"){
                result = a * Double(label1.text ?? "0")!
            }
            if(actionVar == "div"){
                if Double(label1.text ?? "0")! == 0{
                    label1.text = "MATH ERROR";
                    a=0
                    labelFlag = 1;
                }
                else{
                    result = a / Double(label1.text ?? "0")!
                }
            }
        }
            
        if labelFlag != 1{
        label1.text=(String(result))
        
        }
        firstNumberFlag = 1
        a = 0
        actionVar = "none"
        PointClickedFlag = 0
    }

        
        
    @objc func clearBtnPressed(sender: UIButton!) {
        PointClickedFlag = 0;
        actionVar = "none";
        a = 0;
        result = 0;
        labelFlag = 0
        label1.text=("")
    }
    
    @objc func backspaceBtnPressed(sender: UIButton!) {
        label1.text = String(label1.text?.dropLast() ?? "")
    }
    
    
    @objc func AddBtnPressed(sender: UIButton!) {
        if(label1.text != "MATH ERROR"){
            a = Double(label1.text ?? "0")!
            actionVar="add"
            firstNumberFlag = 1
            PointClickedFlag = 0
        }

            
        }
    
    @objc func subBtnPressed(sender: UIButton!) {
        if(label1.text != "MATH ERROR"){
            a = Double(label1.text ?? "0")!
            firstNumberFlag = 1
            actionVar="sub"
            PointClickedFlag = 0
        }
        
    }
    
    @objc func mulBtnPressed(sender: UIButton!) {
        if(label1.text != "MATH ERROR"){
            a = Double(label1.text ?? "0")!
            firstNumberFlag = 1
            actionVar="mul"
            PointClickedFlag = 0
        }
        
        
    }
    
    @objc func divBtnPressed(sender: UIButton!) {
        if(label1.text != "MATH ERROR"){
            a = Double(label1.text ?? "0")!
            firstNumberFlag = 1
            actionVar="div"
            PointClickedFlag = 0;
        }
        
        
    }
    
/*    func SubBtnPressed(_ sender: Any) {
            let a:Int? = Int(label1.text ?? "0")
            label1.text=("")
            actionVar="sub"
        

        }
        
    func MulBtnPressed(_ sender: Any) {
            let a:Int? = Int(label1.text ?? "0")
            label1.text=("")
            actionVar="mul"

        }
        
        
    func DivBtnPressed(_ sender: Any) {
            let a:Int? = Int(label1.text ?? "0")
            label1.text=("")
            actionVar="div"
            
           if b! == 0{
                resLab.text = "Cannot divide by zero!"
            }
            else{
                
                let quo:Float = (a! / b!)
                resLab.text = "Quotient is \(quo)"
            }
        }
    
    
    }
 */

}


