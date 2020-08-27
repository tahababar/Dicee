//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Taha Babar
/*
 You can also comment like this..Java/CSS/C++ style
 */
/*
 Swift lesson: print("Hello \(2+3) World") will display Hello 5 World (to mix code calculation within display content)
 */

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var rollButton: UIButton!
    /* ONE WAY TO USE RANDOM: -
    var leftDiceNumber = Int.random(in: 0...5); //assigns random ints between 0 & 5
    var rightDiceNumber = Int.random(in: 0...5);
 */
    override func viewDidLoad() {
        super.viewDidLoad()//when the app views opens/start
        /*
        diceImageView1.alpha = 0.5 //who property whatValue
        diceImageView2.alpha = 0.5
 */
        rollButton.alpha=0.7;
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) { //automaticlaly makes connection "action" when we attach button to this area of code as it detects a button. type changed to UI Button and Event stayed same as we dont need anything fancy
        let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]; //use let to refer to a const/constant array which you dont plan to change/mutate later
        /* ONE WAY TO USE RANDOM CONTINUES: -
        diceImageView1.image = diceArray[leftDiceNumber];
        diceImageView2.image = diceArray[rightDiceNumber];
        */
        diceImageView1.image = diceArray.randomElement(); //looks into the array to assign any random value
        diceImageView2.image = diceArray.randomElement();
    }
    
}

