//
//  ViewController.swift
//  tictactoe
//
//  Created by Sean Trinh on 7/9/18.
//  Copyright © 2018 Sean Trinh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, DataEnteredDelegate {

    @IBOutlet weak var player1: UITextField!
    @IBOutlet weak var player2: UITextField!
    @IBOutlet weak var winner: UILabel!
    @IBAction func play(_ sender: Any) {
    }
    func someoneWon(info: String) {
        winner.text = info
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondViewController = segue.destination as! SecondViewController
        secondViewController.player1 = player1.text!
        secondViewController.player2 = player2.text!
        secondViewController.delegate = self
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

