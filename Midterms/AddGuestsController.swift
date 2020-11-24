//
//  AddGuestsController.swift
//  Midterms
//
//  Created by Phuoc Nguyen on 11/24/20.
//  Copyright © 2020 Phuoc Nguyen. All rights reserved.
//

import UIKit
protocol PassDataBack {
    func passData(FirstName:String,LastName:String, Guests:Int,Tables:String,Sections:String)
}
class AddGuestsController: UIViewController {

    @IBOutlet weak var inputbx_FirstName: UITextField!
    @IBOutlet weak var inputbx_LastName: UITextField!
    @IBOutlet weak var inputbx_guests: UITextField!
    @IBOutlet weak var inputbx_Tables: UITextField!
    @IBOutlet weak var inputbx_Sections: UITextField!
    var delegate:PassDataBack?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func act_Save(_ sender: Any) {
        delegate?.passData(FirstName: inputbx_FirstName.text!, LastName:inputbx_LastName.text!, Guests:Int(inputbx_guests.text!) ?? 0 , Tables: inputbx_Tables.text!, Sections: inputbx_Sections.text!)
           dismiss(animated: true, completion: nil)
           self.navigationController?.popViewController(animated: true)
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
