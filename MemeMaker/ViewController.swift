//
//  ViewController.swift
//  MemeMaker
//
//  Created by Paloma Cristina Santana on 19/04/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var topSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var bottomSegmentedControl: UISegmentedControl!
    @IBOutlet weak var topCationLabel: UILabel!
    
    @IBOutlet weak var bottomCaptionLabel: UILabel!
    
    let 🥰 = CaptionOption(emoji: "🥰", caption: "O que eu preciso na minha vida")
    
    let 👸🏻 = CaptionOption(emoji: "👸🏻", caption: "Ser herdeira do trono de Genovia")
    
    let 🤑 = CaptionOption(emoji: "🤑", caption: "Aceita pix nada")
    
    let 🍬 = CaptionOption(emoji: "🍬", caption: "Sou da época que aceita bala como troco")
    
    let 🏠 = CaptionOption(emoji: "🏠", caption: "Você é proprietário de imóvel")
    
    let 🔑 = CaptionOption(emoji: "🔑", caption: "Que tal ceder as chaves para mim")
    
    
    var topChoices = [CaptionOption]()
    var bottomChoices = [CaptionOption]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topSegmentedControl.removeAllSegments()
        bottomSegmentedControl.removeAllSegments()
        // Do any additional setup after loading the view.
        
        let topChoices = [🥰,🤑,🏠]
        
        let bottomChoices = [👸🏻,🍬,🔑]
        
        topSegmentedControl.selectedSegmentIndex = 0
        bottomSegmentedControl.selectedSegmentIndex = 0
        
        insertSegments(choices: topChoices, control: topSegmentedControl)
        insertSegments(choices: bottomChoices, control: bottomSegmentedControl)
    }
    
    func insertSegments(choices: [CaptionOption], control: UISegmentedControl){
        for choice in choices {
            control.insertSegment(withTitle: choice.emoji, at: choices.count, animated: false)
        }
    }

    @IBAction func actionSegmentedControl(_ sender: UISegmentedControl) {
        
        switch sender.titleForSegment(at: sender.selectedSegmentIndex){
            case "🥰":
                topCationLabel.text = 🥰.caption
            case "🤑":
                topCationLabel.text = 🤑.caption
            
            case "🏠":
                topCationLabel.text = 🏠.caption
            
            case "👸🏻":
                bottomCaptionLabel.text = 👸🏻.caption
            
            case "🔑":
                bottomCaptionLabel.text = 🔑.caption
            
            case "🍬":
            bottomCaptionLabel.text = 🍬.caption
            
            default:
                
                fatalError()
        }
    }
    
    @IBAction func dragTopLabel(_ sender: UIPanGestureRecognizer) {
        
        if sender.state == .changed{
            topCationLabel.center = sender.location(in: view)
        }
    }
    @IBAction func dragBottomLabel(_ sender: UIPanGestureRecognizer) {
        
        if sender.state == .changed{
            bottomCaptionLabel.center = sender.location(in: view)
        }
    }
}

