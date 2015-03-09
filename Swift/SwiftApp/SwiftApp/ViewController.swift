//
//  ViewController.swift
//  SwiftApp
//
//  Created by Kamal on 10/03/2015.
//  Copyright (c) 2015 Kamal. All rights reserved.
//

import UIKit

class ViewController: UIViewController { // Class container Starts here

    
    
    // Declaring Variable 
    var variableName:CGFloat = 0.0
    //Declaring Constant
    let constantName:CGFloat = 0.0
    

    // Button Outlet
    @IBOutlet weak var ChangeOutlet: UIButton!
    // Label Outlet
    @IBOutlet weak var textLabel: UILabel!
    // Background View
    @IBOutlet var backgroundView: UIView!
    
    // Button Action will be defined in this code block.
    @IBAction func changePressed(sender: UIButton) {
        changeLabel() // asks the label to change as defined, this is called function call.
        changeButton()
        changeBackgroundView()
       
        
    }
    
    // writing the desired functionality in a block
    
    // Label Function
    // Things that we want to do with label
    func changeLabel() ->Bool {
    
        // assigning a value to variable
        var someVariable = textLabel.bounds.height
        self.variableName = textLabel.bounds.width
        // Set Text in label
        //textLabel.text = "Hello"
        textLabel.text = "Height:\(textLabel.bounds) Width:\(textLabel.bounds)"
        // Set color of the label
        textLabel.textColor = UIColor.blueColor()
        // Set background color of the label
        textLabel.backgroundColor = UIColor.greenColor()
        // Label Transpracy
        textLabel.alpha = 1.0 // alpha varies b/w 0.0 to 1.0
        // Text aligment in the label
        textLabel.textAlignment = NSTextAlignment.Left
        // Changine Font of a label
        textLabel.font = UIFont(name: "Futura", size: 12)
       
    
    return true
    }
    
    //Change Button Function 
    
    func changeButton() ->Bool {
        // Change backgroud color of the Button
        ChangeOutlet.backgroundColor = UIColor.grayColor()
        // Change the title of the button
        ChangeOutlet.setTitle("Changed", forState: UIControlState.Normal)
        // Change the title color of the button
        ChangeOutlet.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        // Button Transpracy
        ChangeOutlet.alpha = 0.5
        // Button Text aligment
        ChangeOutlet.titleLabel?.textAlignment = NSTextAlignment.Center
        // Button Font
        ChangeOutlet.titleLabel?.font = UIFont(name: "Futura", size: 30)
    
    return true
    }
    //Change Background Color
    func changeBackgroundView()->Bool {
        // Setting background Color
        backgroundView.backgroundColor = UIColor.magentaColor()
    return true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


} // Class container Ends here

