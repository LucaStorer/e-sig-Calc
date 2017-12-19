//
//  ViewControllerCalc.swift
//  e-sig Calc
//
//  Created by Luca Storer on 19/12/17.
//  Copyright © 2017 Luca Storer. All rights reserved.
//

import UIKit

class ViewControllerCalc: UIViewController {

    @IBOutlet weak var Txt_ml_1: UITextField!
    @IBOutlet weak var Txt_mg_1: UITextField!
   
    @IBOutlet weak var Txt_ml_2: UITextField!
    @IBOutlet weak var Txt_mg_2: UITextField!
    
    @IBOutlet weak var Txt_ml_3: UITextField!
    @IBOutlet weak var Txt_mg_3: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func CmdResult(_ sender: UIButton) {
        
        
    }
    
    func CalcolaValori() -> Float {
        
        /*
 
         ((ml1*mg1)+(ml2*mg2)) / (ml1+ml2+ml3)
         
 */
        
        return 0
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
