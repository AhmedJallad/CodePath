//
//  ViewController.swift
//  CodePathApp
//
//  Created by Ahmed Jallad on 8/25/18.
//  Copyright © 2018 AJProductions. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    // variables
    var backgroundColor: UIColor! // variable to hold initial background color
    
    // Outlets & Actions
    @IBOutlet weak var textLabel: UILabel! // this is the text label
    
    @IBAction func didTapButton(_ sender: Any) { // this is the text color button
        //textLabel.textColor = UIColor.orange
        self.textLabel.textColor = UIColor(red: CGFloat(drand48()), green: CGFloat(drand48()), blue: CGFloat(drand48()), alpha: 1.0) // this will randomize the colors of the text
    }
    
    @IBAction func didTapViewButton(_ sender: Any) { // this is the view color button
        //view.backgroundColor = UIColor.red
        self.view.backgroundColor = UIColor(red: CGFloat(drand48()), green: CGFloat(drand48()), blue: CGFloat(drand48()), alpha: 1.0) // This will randomize the colors of the view
    }
    
    @IBAction func didTapTextButton(_ sender: Any) { // this button will change the text that the user inputs
        textLabel.text = textField.text
        textField.text = ""
        view.endEditing(true)
    }
    
    @IBOutlet weak var textField: UITextField! // Text Field area for user input
    
    @IBAction func onResetGesture(_ sender: Any) { // this gesture will reset the options
        textLabel.text = "Hello"
        view.backgroundColor = backgroundColor // will change view back to default color
        textLabel.textColor = UIColor.black // will change the text color back to default black color
    }
    
    // viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        backgroundColor = view.backgroundColor
        self.textField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
// this will hide the keyboard when the user touches return on the keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return(true)
    }

}

