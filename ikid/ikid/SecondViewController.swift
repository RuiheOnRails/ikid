//
//  SecondViewController.swift
//  ikid
//
//  Created by Jerry Li on 2/3/18.
//  Copyright © 2018 Jerry Li. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var jokeIsVisiable = true
    var theJoke : String = "Why are PCs like air conditioners?"
    var thePunchLine : String = "They stop working properly if you open Windows!"
    
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

