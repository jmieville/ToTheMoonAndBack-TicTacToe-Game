//
//  ViewController.swift
//  TicTacToe
//
//  Created by Jean-Marc Kampol Mieville on 10/5/2559 BE.
//  Copyright © 2559 Jean-Marc Kampol Mieville. All rights reserved.
//

import UIKit
import Foundation




class PlayGame: UIViewController {
    
    
    
    
    @IBOutlet weak var declarationText: UILabel!
    
    @IBAction func restartButton(_ sender: AnyObject) {
        print("Back Home")
        self.dismiss(animated: false, completion: nil)
        
    }
    @IBOutlet weak var restartButtonText: UIButton!
    
    var crossScore = 0
    var circleScore = 0
    var Score1 = 0
    var Score2 = 0
    var Score3 = 0
    var Score4 = 0
    var Score5 = 0
    var Score6 = 0
    var Score7 = 0
    var Score8 = 0
    var Score9 = 0
    var topHorizontalScore = 0
    var midHorizontalScore = 0
    var lowHorizontalScore = 0
    var topVerticalScore = 0
    var midVerticalScore = 0
    var lowVerticalScore = 0
    var crossLeftToRight = 0
    var crossRightToLeft = 0

    
    
    
    var crossWin = false
    var circleWin = false
    
    var gameEnd = false
    var clickable = true
    
    func endGame() {
        declareWinner()
        stopGame()
        restartButtonAppear()
        gameEnd = true
        //showPopUp()
    }
    
    func restartButtonAppear() {
        restartButtonText.setTitle("Back home!", for: [])
        restartButtonText.isHidden = false
    }
    
    func stopGame() {
        // button becomes unenabled
        
    }
    
    func declareWinner() {
        if crossWin {
            declarationText.text = "Cross won!"
            declarationText.isHidden = false
            print("Cross has won the game!")
        } else if circleWin {
            declarationText.text = "Circle won!"
            declarationText.isHidden = false
            print("Circle has won the game")
        } else {
            declarationText.text = "No one won!"
            declarationText.isHidden = false
            print("No one won!")
        }
    }
    
    func addScore() {
    
    }
    
    func checkWinner() {
        
        topHorizontalScore = Score1 + Score2 + Score3
        midHorizontalScore = Score4 + Score5 + Score6
        lowHorizontalScore = Score7 + Score8 + Score9
        topVerticalScore = Score1 + Score4 + Score7
        midVerticalScore = Score2 + Score5 + Score8
        lowVerticalScore = Score3 + Score6 + Score9
        crossLeftToRight = Score1 + Score5 + Score9
        crossRightToLeft = Score3 + Score5 + Score7
        
        print("score \(topHorizontalScore)")
        
        if topHorizontalScore == 3 || midHorizontalScore == 3 || lowHorizontalScore == 3 || topVerticalScore == 3 || midVerticalScore == 3 || lowVerticalScore == 3 || crossLeftToRight == 3 || crossRightToLeft == 3 {
            crossWin = true
            print("cross win")
            endGame()

        } else if topHorizontalScore == 30 || midHorizontalScore == 30 || lowHorizontalScore == 30 || topVerticalScore == 30 || midVerticalScore == 30 || lowVerticalScore == 30 || crossLeftToRight == 30 || crossRightToLeft == 30 {
            circleWin = true
            print("circle win")
            endGame()

        } else if playTurn == 9 {
            endGame()
        }
        
        
        
    }
    
    let imageCross = UIImage(named: "Cross")
    let imageCircle = UIImage(named: "Circle")

    @IBOutlet var turnBox: [UIButton]!
    
    @IBAction func box1(_ sender: AnyObject) {
        
        if gameEnd {
            let disableMyButton = sender as? UIButton
            disableMyButton?.isUserInteractionEnabled = false
        } else {
            if playTurn % 2 == 0 {
                sender.setImage(imageCross, for: [])
                Score1 += 1
                
            } else {
                sender.setImage(imageCircle, for: [])
                Score1 += 10
                
            }
            playTurn += 1
            nextTurn()
            print("\(Score1)")
            
            let disableMyButton = sender as? UIButton
            disableMyButton?.isUserInteractionEnabled = false
        }
        
        
        

        
    }
    @IBAction func box2(_ sender: AnyObject) {
        
        if gameEnd {
            let disableMyButton = sender as? UIButton
            disableMyButton?.isUserInteractionEnabled = false
        } else {
            
            if playTurn % 2 == 0 {
                sender.setImage(imageCross, for: [])
                Score2 += 1
            } else {
                sender.setImage(imageCircle, for: [])
                Score2 += 10
                
            }
            playTurn += 1
            nextTurn()
            print("\(Score2)")
            
            let disableMyButton = sender as? UIButton
            disableMyButton?.isUserInteractionEnabled = false
            
        }
        
        
        
    }
    @IBAction func box3(_ sender: AnyObject) {
        
        if gameEnd {
            let disableMyButton = sender as? UIButton
            disableMyButton?.isUserInteractionEnabled = false
        } else {
            
            if playTurn % 2 == 0 {
                sender.setImage(imageCross, for: [])
                Score3 += 1
            } else {
                sender.setImage(imageCircle, for: [])
                Score3 += 10
                
            }
            playTurn += 1
            
            nextTurn()
            print("\(Score3)")
            
            
            let disableMyButton = sender as? UIButton
            disableMyButton?.isUserInteractionEnabled = false
            
        }
        
        

        
    }
    @IBAction func box4(_ sender: AnyObject) {
        
        if gameEnd {
            let disableMyButton = sender as? UIButton
            disableMyButton?.isUserInteractionEnabled = false
        } else {
            
            if playTurn % 2 == 0 {
                sender.setImage(imageCross, for: [])
                Score4 += 1
            } else {
                sender.setImage(imageCircle, for: [])
                Score4 += 10
                
            }
            playTurn += 1
            
            nextTurn()
            
            let disableMyButton = sender as? UIButton
            disableMyButton?.isUserInteractionEnabled = false

        }
        
        
        
    }
    @IBAction func box5(_ sender: AnyObject) {
        
        if gameEnd {
            let disableMyButton = sender as? UIButton
            disableMyButton?.isUserInteractionEnabled = false
        } else {
            
            if playTurn % 2 == 0 {
                sender.setImage(imageCross, for: [])
                Score5 += 1
            } else {
                sender.setImage(imageCircle, for: [])
                Score5 += 10
                
            }
            playTurn += 1
            
            nextTurn()
            
            let disableMyButton = sender as? UIButton
            disableMyButton?.isUserInteractionEnabled = false

        }
        
        
        
    }
    @IBAction func box6(_ sender: AnyObject) {
        
        if gameEnd {
            let disableMyButton = sender as? UIButton
            disableMyButton?.isUserInteractionEnabled = false
        } else {
            
            if playTurn % 2 == 0 {
                sender.setImage(imageCross, for: [])
                Score6 += 1
            } else {
                sender.setImage(imageCircle, for: [])
                Score6 += 10
                
            }
            playTurn += 1
            
            nextTurn()
            
            let disableMyButton = sender as? UIButton
            disableMyButton?.isUserInteractionEnabled = false
            
        }
        
        

        
    }
    @IBAction func box7(_ sender: AnyObject) {
        
        if gameEnd {
            let disableMyButton = sender as? UIButton
            disableMyButton?.isUserInteractionEnabled = false
        } else {
            
            if playTurn % 2 == 0 {
                sender.setImage(imageCross, for: [])
                Score7 += 1
            } else {
                sender.setImage(imageCircle, for: [])
                Score7 += 10
                
            }
            playTurn += 1
            
            nextTurn()
            
            let disableMyButton = sender as? UIButton
            disableMyButton?.isUserInteractionEnabled = false
        }
        
        

        
    }
    @IBAction func box8(_ sender: AnyObject) {
        
        if gameEnd {
            let disableMyButton = sender as? UIButton
            disableMyButton?.isUserInteractionEnabled = false
        } else {
            
            if playTurn % 2 == 0 {
                sender.setImage(imageCross, for: [])
                Score8 += 1
            } else {
                sender.setImage(imageCircle, for: [])
                Score8 += 10
                
            }
            playTurn += 1
            
            nextTurn()
            
            let disableMyButton = sender as? UIButton
            disableMyButton?.isUserInteractionEnabled = false

        }
        
        
        
    }
    @IBAction func box9(_ sender: AnyObject) {
        
        if gameEnd {
            let disableMyButton = sender as? UIButton
            disableMyButton?.isUserInteractionEnabled = false
        } else {
            
            if playTurn % 2 == 0 {
                sender.setImage(imageCross, for: [])
                Score9 += 1
            } else {
                sender.setImage(imageCircle, for: [])
                Score9 += 10
                
            }
            playTurn += 1
            
            nextTurn()
            
            let disableMyButton = sender as? UIButton
            disableMyButton?.isUserInteractionEnabled = false

        }
        
        
        
        
    }
    
    var playTurn = 0
    
    func nextTurn() -> Int {
        //print (playTurn)
        checkWinner()
        return playTurn
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showPopUp() {
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "popUp") as! PopUpViewController
        self.addChildViewController(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParentViewController: self)
    }


}

