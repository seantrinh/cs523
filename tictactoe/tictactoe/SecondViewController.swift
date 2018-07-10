//
//  SecondViewController.swift
//  tictactoe
//
//  Created by Sean Trinh on 7/9/18.
//  Copyright © 2018 Sean Trinh. All rights reserved.
//

import UIKit

protocol DataEnteredDelegate: class {
    func someoneWon(info: String)
}

class SecondViewController: UIViewController {
    weak var delegate:DataEnteredDelegate? = nil
    
    @IBOutlet weak var one: UIButton!
    @IBOutlet weak var two: UIButton!
    @IBOutlet weak var three: UIButton!
    @IBOutlet weak var four: UIButton!
    @IBOutlet weak var five: UIButton!
    @IBOutlet weak var six: UIButton!
    @IBOutlet weak var seven: UIButton!
    @IBOutlet weak var eight: UIButton!
    @IBOutlet weak var nine: UIButton!
    
    var player1 = ""
    var player2 = ""
    @IBOutlet weak var turn: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        turn.text = player1
        one.setTitle("Empty",for: .normal)
        two.setTitle("Empty",for: .normal)
        three.setTitle("Empty",for: .normal)
        four.setTitle("Empty",for: .normal)
        five.setTitle("Empty",for: .normal)
        six.setTitle("Empty",for: .normal)
        seven.setTitle("Empty",for: .normal)
        eight.setTitle("Empty",for: .normal)
        nine.setTitle("Empty",for: .normal)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    @IBAction func one(_ sender: Any) {
        if turn.text == player1 && one.currentTitle == "Empty" {
            one.setTitle("X",for: .normal)
            turn.text = player2
            if (two.currentTitle == "X" && three.currentTitle == "X") || (four.currentTitle == "X" && seven.currentTitle == "X") || (five.currentTitle == "X" && nine.currentTitle == "X") {
                //print(player1)
                delegate?.someoneWon(info: player1)
                _ = self.navigationController?.popViewController(animated: true)
            }
        }
        else if turn.text == player2 && one.currentTitle == "Empty" {
            one.setTitle("O",for: .normal)
            turn.text = player1
            if (two.currentTitle == "O" && three.currentTitle == "O") || (four.currentTitle == "O" && seven.currentTitle == "O") || (five.currentTitle == "O" && nine.currentTitle == "O") {
                //print(player2)
                delegate?.someoneWon(info: player2)
                _ = self.navigationController?.popViewController(animated: true)
            }
        }
        else { }
    }
    
    @IBAction func two(_ sender: Any) {
        if turn.text == player1 && two.currentTitle == "Empty" {
            two.setTitle("X",for: .normal)
            turn.text = player2
            if (one.currentTitle == "X" && three.currentTitle == "X") || (five.currentTitle == "X" && eight.currentTitle == "X") {
                //print(player1)
                delegate?.someoneWon(info: player1)
                _ = self.navigationController?.popViewController(animated: true)
            }
        }
        else if turn.text == player2 && two.currentTitle == "Empty" {
            two.setTitle("O",for: .normal)
            turn.text = player1
            if (one.currentTitle == "O" && three.currentTitle == "O") || (five.currentTitle == "O" && eight.currentTitle == "O") {
                //print(player2)
                delegate?.someoneWon(info: player2)
                _ = self.navigationController?.popViewController(animated: true)
            }
        }
        else { }
    }
    
    @IBAction func three(_ sender: Any) {
        if turn.text == player1 && three.currentTitle == "Empty" {
            three.setTitle("X",for: .normal)
            turn.text = player2
            if (one.currentTitle == "X" && two.currentTitle == "X") || (five.currentTitle == "X" && seven.currentTitle == "X") || (six.currentTitle == "X" && nine.currentTitle == "X") {
                //print(player1)
                delegate?.someoneWon(info: player1)
                _ = self.navigationController?.popViewController(animated: true)
            }
        }
        else if turn.text == player2 && three.currentTitle == "Empty" {
            three.setTitle("O",for: .normal)
            turn.text = player1
            if (one.currentTitle == "O" && two.currentTitle == "O") || (five.currentTitle == "O" && seven.currentTitle == "O") || (six.currentTitle == "O" && nine.currentTitle == "O") {
                //print(player2)
                delegate?.someoneWon(info: player2)
                _ = self.navigationController?.popViewController(animated: true)
            }
        }
        else { }
    }
    
    @IBAction func four(_ sender: Any) {
        if turn.text == player1 && four.currentTitle == "Empty" {
            four.setTitle("X",for: .normal)
            turn.text = player2
            if (one.currentTitle == "X" && seven.currentTitle == "X") || (five.currentTitle == "X" && six.currentTitle == "X") {
                //print(player1)
                delegate?.someoneWon(info: player1)
                _ = self.navigationController?.popViewController(animated: true)
            }
        }
        else if turn.text == player2 && four.currentTitle == "Empty" {
            four.setTitle("O",for: .normal)
            turn.text = player1
            if (one.currentTitle == "O" && seven.currentTitle == "O") || (five.currentTitle == "O" && six.currentTitle == "O") {
                //print(player2)
                delegate?.someoneWon(info: player2)
                _ = self.navigationController?.popViewController(animated: true)
            }
        }
        else { }
    }
    
    @IBAction func five(_ sender: Any) {
        if turn.text == player1 && five.currentTitle == "Empty" {
            five.setTitle("X",for: .normal)
            turn.text = player2
            if (one.currentTitle == "X" && nine.currentTitle == "X") || (three.currentTitle == "X" && seven.currentTitle == "X") || (two.currentTitle == "X" && eight.currentTitle == "X") || (four.currentTitle == "X" && six.currentTitle == "X") {
                //print(player1)
                delegate?.someoneWon(info: player1)
                _ = self.navigationController?.popViewController(animated: true)
            }
            
        }
        else if turn.text == player2 && five.currentTitle == "Empty" {
            five.setTitle("O",for: .normal)
            turn.text = player1
            if (one.currentTitle == "O" && nine.currentTitle == "O") || (three.currentTitle == "O" && seven.currentTitle == "O") || (two.currentTitle == "O" && eight.currentTitle == "O") || (four.currentTitle == "O" && six.currentTitle == "O") {
                //print(player2)
                delegate?.someoneWon(info: player2)
                _ = self.navigationController?.popViewController(animated: true)
            }
        }
        else { }
    }
    
    @IBAction func six(_ sender: Any) {
        if turn.text == player1 && six.currentTitle == "Empty" {
            six.setTitle("X",for: .normal)
            turn.text = player2
            if (three.currentTitle == "X" && nine.currentTitle == "X") || (four.currentTitle == "X" && five.currentTitle == "X") {
                //print(player1)
                delegate?.someoneWon(info: player1)
                _ = self.navigationController?.popViewController(animated: true)
            }
        }
        else if turn.text == player2 && six.currentTitle == "Empty" {
            six.setTitle("O",for: .normal)
            turn.text = player1
            if (three.currentTitle == "O" && nine.currentTitle == "O") || (four.currentTitle == "O" && five.currentTitle == "O") {
                //print(player2)
                delegate?.someoneWon(info: player2)
                _ = self.navigationController?.popViewController(animated: true)
            }
        }
        else { }
    }
    
    @IBAction func seven(_ sender: Any) {
        if turn.text == player1 && seven.currentTitle == "Empty" {
            seven.setTitle("X",for: .normal)
            turn.text = player2
            if (one.currentTitle == "X" && four.currentTitle == "X") || (three.currentTitle == "X" && five.currentTitle == "X") || (eight.currentTitle == "X" && nine.currentTitle == "X") {
                //print(player1)
                delegate?.someoneWon(info: player1)
                _ = self.navigationController?.popViewController(animated: true)
            }
        }
        else if turn.text == player2 && seven.currentTitle == "Empty" {
            seven.setTitle("O",for: .normal)
            turn.text = player1
            if (one.currentTitle == "O" && four.currentTitle == "O") || (three.currentTitle == "O" && five.currentTitle == "O") || (eight.currentTitle == "O" && nine.currentTitle == "O") {
                //print(player2)
                delegate?.someoneWon(info: player2)
                _ = self.navigationController?.popViewController(animated: true)
            }
        }
        else { }
    }
    
    @IBAction func eight(_ sender: Any) {
        if turn.text == player1 && eight.currentTitle == "Empty" {
            eight.setTitle("X",for: .normal)
            turn.text = player2
            if (seven.currentTitle == "X" && nine.currentTitle == "X") || (two.currentTitle == "X" && five.currentTitle == "X") {
                //print(player1)
                delegate?.someoneWon(info: player1)
                _ = self.navigationController?.popViewController(animated: true)
            }
        }
        else if turn.text == player2 && eight.currentTitle == "Empty" {
            eight.setTitle("O",for: .normal)
            turn.text = player1
            if (seven.currentTitle == "O" && nine.currentTitle == "O") || (two.currentTitle == "O" && five.currentTitle == "O") {
                //print(player2)
                delegate?.someoneWon(info: player2)
                _ = self.navigationController?.popViewController(animated: true)
            }
        }
        else { }
    }
    
    @IBAction func nine(_ sender: Any) {
        if turn.text == player1 && nine.currentTitle == "Empty" {
            nine.setTitle("X",for: .normal)
            turn.text = player2
            if (one.currentTitle == "X" && five.currentTitle == "X") || (three.currentTitle == "X" && six.currentTitle == "X") || (seven.currentTitle == "X" && eight.currentTitle == "X") {
                //print(player1)
                delegate?.someoneWon(info: player1)
                _ = self.navigationController?.popViewController(animated: true)
            }
        }
        else if turn.text == player2 && nine.currentTitle == "Empty" {
            nine.setTitle("O",for: .normal)
            turn.text = player1
            if (one.currentTitle == "O" && five.currentTitle == "O") || (three.currentTitle == "O" && six.currentTitle == "O") || (seven.currentTitle == "O" && eight.currentTitle == "O") {
                //print(player2)
                delegate?.someoneWon(info: player2)
                _ = self.navigationController?.popViewController(animated: true)
            }
        }
        else { }
    }
    
    
    
    
}
