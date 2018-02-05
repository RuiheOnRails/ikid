//
//  DadJokeViewController.swift
//  ikid
//
//  Created by Jerry Li on 2/3/18.
//  Copyright © 2018 Jerry Li. All rights reserved.
//

import UIKit

class DadJokeViewController: UIViewController {

    var jokeIsVisiable = true
    var theJoke : String = "What noise does a 747 make when it bounces"
    var thePunchLine : String = "Boeing, Boeing, Boeing"
    @IBOutlet weak var lblJoke: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
