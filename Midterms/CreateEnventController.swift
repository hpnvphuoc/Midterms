//
//  CreateEnventController.swift
//  Midterms
//
//  Created by Phuoc Nguyen on 11/24/20.
//  Copyright © 2020 Phuoc Nguyen. All rights reserved.
//

import UIKit
import SCLAlertView

class CreateEnventController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func navigation(){
        performSegue(withIdentifier: "CreateEventToAddEvent", sender: self)
    }
    @IBAction func act_CreateEvent(_ sender: Any) {
      let alertView = SCLAlertView()
        
        alertView.addButton("OK") {
            self.navigation()
        }
        alertView.showInfo("Cancel", subTitle: "Create new event will delete all the info from the previous or current event in app")
    }
    @IBAction func act_EditEvent(_ sender: Any) {
    }
    @IBAction func act_Exit(_ sender: Any) {

    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
