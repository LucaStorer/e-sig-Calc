//
//  ViewControllerCalc.swift
//  e-sig Calc
//
//  Created by Luca Storer on 19/12/17.
//  Copyright © 2017 Luca Storer. All rights reserved.
//

import UIKit

class ViewControllerCalc: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var Txt_ml_1: UITextField!
    @IBOutlet weak var Txt_mg_1: UITextField!
   
    @IBOutlet weak var Txt_ml_2: UITextField!
    @IBOutlet weak var Txt_mg_2: UITextField!
    @IBOutlet weak var ml2Stepper: UIStepper!
    
    @IBOutlet weak var Txt_ml_3: UITextField!
    @IBOutlet weak var Txt_mg_3: UITextField!
    
    @IBOutlet weak var LblResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        self.Txt_ml_1.delegate = self
        self.Txt_mg_1.delegate = self
        self.Txt_ml_2.delegate = self
        self.Txt_mg_2.delegate = self
        self.Txt_ml_3.delegate = self
        self.Txt_mg_3.delegate = self
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        normalizzaFloat()
        
        LblResult.text =  "Totale: \(CalcolaValori().ml) ml a \(String(format:"%.2f",CalcolaValori().mg)) mg/ml"
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {

        return (true)
    }
    
    @IBAction func Txtml2Change(_ sender: UITextField) {
          normalizzaFloat()
        ml2Stepper.value = (Txt_ml_2.text! as NSString).doubleValue
        
    }
    
    @IBAction func ml2Stepper(_ sender: UIStepper) {
        
        self.Txt_ml_2.text = String(format:"%.2f",sender.value)
        
        normalizzaFloat()
        
         LblResult.text =  "Totale: \(CalcolaValori().ml) ml a \(String(format:"%.2f",CalcolaValori().mg)) mg/ml"
    }
    
    
    @IBAction func CmdResult(_ sender: UIButton) {
        
        normalizzaFloat()

        LblResult.text =  "Totale: \(CalcolaValori().ml) ml a \(String(format:"%.2f",CalcolaValori().mg)) mg/ml"
    }
    
    func normalizzaFloat(){
        
        Txt_ml_1.text = Txt_ml_1.text!.replacingOccurrences( of: ",", with: ".")
        Txt_ml_2.text = Txt_ml_2.text!.replacingOccurrences( of: ",", with: ".")
        Txt_ml_3.text = Txt_ml_3.text!.replacingOccurrences( of: ",", with: ".")
        
        
    }
    
    func CalcolaValori() ->(ml:Float,mg: Float) {
        
        let ml1: Float = (Txt_ml_1.text! as NSString).floatValue
        let mg1: Float = (Txt_mg_1.text! as NSString).floatValue
        let ml2: Float = (Txt_ml_2.text! as NSString).floatValue
        let mg2: Float = (Txt_mg_2.text! as NSString).floatValue
        let ml3: Float = (Txt_ml_3.text! as NSString).floatValue
        let mg3: Float = (Txt_mg_3.text! as NSString).floatValue
        
        print("ml1:\(ml1) - mg1=\(mg1)")
         print("ml2:\(ml2) - mg2=\(mg2)")
         print("ml3:\(ml3) - mg3=\(mg3)")
        
        let moltiply: Float = (ml1*mg1)+(ml2*mg2)+(ml3*mg3)
        
        print(moltiply)
        
        let resultml: Float = ml1+ml2+ml3
        let resultmg: Float = moltiply / resultml
        
        print(resultml,resultmg)
        /*
 
         ((ml1*mg1)+(ml2*mg2)) / (ml1+ml2+ml3)
         
 */

        return (resultml,resultmg)
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
