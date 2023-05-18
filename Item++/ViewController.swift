//
//  ViewController.swift
//  Item++
//
//  Created by Sanesh Gobin on 2023/05/18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textBox: UITextField!
    @IBOutlet weak var itemOneBox: UITextField!
    @IBOutlet weak var itemBoxTwo: UITextField!
    @IBOutlet weak var itemBoxThree: UITextField!
    @IBOutlet weak var itemBoxFour: UITextField!
    @IBOutlet weak var itemBoxFive: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    @IBAction func addButtonTapped(_ sender: Any) {
        itemOneBox.text = textBox.text
    }
    
}

