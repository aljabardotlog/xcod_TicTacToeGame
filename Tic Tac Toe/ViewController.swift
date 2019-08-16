//
//  ViewController.swift
//  Tic Tac Toe
//
//  Created by Andi Aljabar Mudding on 10/07/18.
//  Copyright © 2018 Andi Aljabar Mudding. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var activePlayer = 1
    var gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    
    let winningCombination = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
    var gameActive = true
    
    @IBAction func action(_ sender: AnyObject) {
        
        if (gameState[sender.tag-1] == 0 && gameActive == true) {
            
            gameState[sender.tag-1] = activePlayer
            
            if (activePlayer == 1) {
                sender.setImage(UIImage(named: "x.jpeg"), for: UIControlState())
                activePlayer = 2
            } else {
                sender.setImage(UIImage(named: "o.png"), for: UIControlState())
                activePlayer = 1
            }
        } else {
            
        }
        
        for combination in winningCombination {
            if gameState[combination[0]] != 0 && gameState[combination[0]] == gameState[combination[1]] && gameState[combination[1]] == gameState[combination[2]] {
                gameActive = false
            
                if gameState[combination[0]] == 1 {
                    print("X")
                } else {
                    print("O")
                }
                
            }
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

