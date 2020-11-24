//
//  LoginController.swift
//  Midterms
//
//  Created by Phuoc Nguyen on 11/24/20.
//  Copyright © 2020 Phuoc Nguyen. All rights reserved.
//

import UIKit

class LoginController: UIViewController {

    @IBOutlet weak var inputbx_username: UITextField!
    
    @IBOutlet weak var inputbx_password: UITextField!
    @IBOutlet weak var btn_Cancel: UIButton!
    @IBOutlet weak var btn_Sigin: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func showSimpleAlert() {
        let alert = UIAlertController(title: "Alert", message: "Invalid username or password",         preferredStyle: UIAlertController.Style.alert)

        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.destructive, handler: { _ in
            //Cancel Action
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
    @IBAction func act_Cancel(_ sender: Any) {
        inputbx_username.text="";
        inputbx_password.text="";
    }
    
    @IBAction func act_Signin(_ sender: UIButton) {
        if (inputbx_username.text! == ""), (inputbx_password.text! == ""){
            performSegue(withIdentifier: "LoginToAD", sender:self)
        }else{
            showSimpleAlert()
        }
        
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
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
