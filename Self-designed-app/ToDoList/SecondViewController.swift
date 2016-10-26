 //
//  SecondViewController.swift
//  ToDoList
//
//  Created by Nelson Wang on 10/24/16.
//  Copyright © 2016 BU ECE WENPENG WANG. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var input: UITextField!
    
    @IBAction func additem(_ sender: AnyObject)
    {
        if (input.text != "")
        {
            list.append(input.text!)
            input.text = ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

