//
//  ViewController.swift
//  HotPot
//
//  Created by Jerski on 2022/1/4.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var flavorSegment: UISegmentedControl!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var portionSegment: UISegmentedControl!
    
    @IBOutlet weak var noodlesSwitch: UISwitch!
    
    @IBOutlet weak var ingredientStepper: UIStepper!
    
    
    @IBOutlet weak var ingredientLabel: UITextField!
    
    @IBOutlet weak var chopsticksSlider: UISlider!
    
    
    @IBOutlet weak var chopsticksNumberLabel: UILabel!
    
    @IBOutlet weak var phoneNumberTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func chooseIngredientStepper(_ sender: UIStepper) {
        let settext = Int(ingredientStepper.value)
        //change stepper to Int
        ingredientLabel.text = String(settext)
    }
    
    @IBAction func changeChopstikcsSlider(_ sender: UISlider) {
        let chopsticksnumber = Int(chopsticksSlider.value)
        //change slider to Int
        chopsticksNumberLabel.text = String(chopsticksnumber) + " Pair"
    }
    
    @IBAction func pressResultBtn(_ sender: UIButton) {
        if nameTextField.text == "" || phoneNumberTextField.text
        == ""{
            resultLabel.text = String("🤔 Information incomplete!")
        }else if flavorSegment.selectedSegmentIndex == 1 , portionSegment.selectedSegmentIndex == 1{
                resultLabel.text = String("😓 Sorry. Sold Out!")
            }else if flavorSegment.selectedSegmentIndex == 2 , portionSegment.selectedSegmentIndex == 0{
                resultLabel.text = String("😓 Sorry. Sold out！")
            }else{
                resultLabel.text = String("🥳 Your order is processed. Bon appetit！")
            }
        }
    }
    







