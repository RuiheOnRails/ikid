//
//  FirstViewController.swift
//  ikid
//
//  Created by Jerry Li on 2/3/18.
//  Copyright © 2018 Jerry Li. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    var jokeIsVisiable = true
    var theJoke : String = "Whats the object-oriented way to become wealthy?"
    var thePunchLine : String = "Inheritance"
    
    @IBOutlet weak var lblJoke: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func flipPressed(_ sender: Any) {
        if jokeIsVisiable {
            jokeIsVisiable = false
            lblJoke.text = thePunchLine
            UIView.transition(with: lblJoke, duration: 0.3, options: .transitionFlipFromRight, animations: nil, completion: nil)
        }else{
            jokeIsVisiable = true
            lblJoke.text = theJoke
            UIView.transition(with: lblJoke, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
        }
    }
    
}

