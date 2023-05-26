//
//  ViewController.swift
//  Item++
//
//  Created by Sanesh Gobin on 2023/05/18.
//

// Improvement: User UItextview instead of UItextfield for the list. UItextView supports multiline, where as UITextField supports only one.

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textBox: UITextField!
    @IBOutlet weak var itemOneBox: UITextField!
    @IBOutlet weak var itemBoxTwo: UITextField!
    @IBOutlet weak var itemBoxThree: UITextField!
    @IBOutlet weak var itemBoxFour: UITextField!
    @IBOutlet weak var itemBoxFive: UITextField!
    
    
    var buttonTapCount = 0 //Keeps track of the button tapped so I can reference index in itemList
    var itemList: [String] = [" ", " ", " ", " "," "]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // adds the text input from textBox into an array. It actually just replaces the empty text element in the array.
    func addToItemArray() {
        itemList[buttonTapCount] = textBox.text ?? ""
    }
    
    // Refreshing the list so it updates what is in the array to match the list
    func refreshList() {
        itemOneBox.text = itemList[0]
        itemBoxTwo.text = itemList[1]
        itemBoxTwo.text = itemList[2]
        itemBoxTwo.text = itemList[3]
        itemBoxTwo.text = itemList[4]
    }
    
    @IBAction func addButtonTapped(_ sender: Any) {
    
        if buttonTapCount > 4 {
            print("You cannot add more items")
            textBox.text = " "
        } else {
            addToItemArray()
            textBox.text = " "
            buttonTapCount += 1
            
        }
        refreshList()
        print(itemList)
    }
    
}

