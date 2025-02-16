//
//  ViewController.swift
//  Assignment5
//
//  Created by Ross Spafford on 2/16/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Choice1Button: UIButton!
    
    @IBOutlet weak var Choice2Button: UIButton!
    
    @IBOutlet weak var ChoiceLabel: UILabel!
    
    var questLogic = QuestLogic();
    var ChoiceADest = 0;
    var ChoiceBDest = 0;
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI(selectedChoice: 0)
    }
    
    @IBAction func Choice1Clicked(_ sender: UIButton) {
        updateUI(selectedChoice: ChoiceADest)
    }
    
    @IBAction func Choice2Clicked(_ sender: UIButton) {
        updateUI(selectedChoice: ChoiceBDest)
    }
    
    @objc func updateUI(selectedChoice: Int) {
        ChoiceLabel.text = questLogic.getText(choiceIndex: selectedChoice)
        Choice1Button.setTitle(questLogic.getButton1Label(choiceIndex: selectedChoice), for: .normal)
        Choice2Button.setTitle(questLogic.getButton2Label(choiceIndex: selectedChoice), for: .normal)
        ChoiceADest = questLogic.getButton1Result(choiceIndex: selectedChoice)
        ChoiceBDest = questLogic.getButton2Result(choiceIndex: selectedChoice)
        
    }
}

