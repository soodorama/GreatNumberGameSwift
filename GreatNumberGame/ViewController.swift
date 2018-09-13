//
//  ViewController.swift
//  GreatNumberGame
//
//  Created by Neil Sood on 9/12/18.
//  Copyright © 2018 Neil Sood. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    var num = 0
    
    
    @IBAction func submitPressed(_ sender: UIButton) {
        if Int(textField.text!) == num {
            print("success")
            let alert = UIAlertController(title: "Success!", message: nil, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Play Again", style: .cancel, handler: nil))
            self.present(alert, animated: true)
            num = Int(arc4random_uniform(100)) + 1
            print(num)
            textField.text! = ""
        }
        else if Int(textField.text!)! < num {
            print("too low")
            let alert = UIAlertController(title: "Incorrect", message: "Guess Is Too Low", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Guess Again", style: .cancel, handler: nil))
            self.present(alert, animated: true)
        }
        else {
            print("too high")
            let alert = UIAlertController(title: "Incorrect", message: "Guess Is Too High", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Guess Again", style: .cancel, handler: nil))
            self.present(alert, animated: true)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        num = Int(arc4random_uniform(100)) + 1
        print(num)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

