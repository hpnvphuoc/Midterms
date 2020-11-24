//
//  GuestsDashboardController.swift
//  Midterms
//
//  Created by Phuoc Nguyen on 11/25/20.
//  Copyright © 2020 Phuoc Nguyen. All rights reserved.
//

import UIKit

class GuestsDashboardController: UIViewController {
    @IBOutlet weak var lbl_Header: UILabel!
    @IBOutlet weak var btn_FindMyTable: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btn_FindMyTable.layer.cornerRadius = btn_FindMyTable.frame.width/2
        btn_FindMyTable.layer.borderWidth = 2
        
        // Do any additional setup after loading the view.
    }
    @IBAction func act_GotoSearchController(_ sender: Any) {
        performSegue(withIdentifier: "GuestsDashboardToSearchController", sender: self)
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
