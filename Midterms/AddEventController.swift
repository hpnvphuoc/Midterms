//
//  AddEventController.swift
//  Midterms
//
//  Created by Phuoc Nguyen on 11/24/20.
//  Copyright © 2020 Phuoc Nguyen. All rights reserved.
//

import UIKit

class AddEventController: UIViewController {

    @IBOutlet weak var inputbx_EventName: UITextField!
    @IBOutlet weak var btn_FontPicker: UIButton!
    @IBOutlet weak var lbl_Font: UILabel!
    @IBOutlet weak var lbl_FontSize: UILabel!
    @IBOutlet weak var sld_FontSizePicker: UISlider!
    @IBOutlet weak var lbl_FontColor: UILabel!
    
    @IBOutlet weak var btn_FontColorPicker: UIButton!
    @IBOutlet weak var atrb_ColorPickerHeight: NSLayoutConstraint!
    @IBOutlet weak var atrb_fontPicker: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

extension AddEventController: UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "GuestsCell", for: indexPath) as! GuestsCell
        
        cell.lbl_GuestsName.text="Phuoc"
        cell.lbl_Numguests.text="5"
        cell.lbl_Tables.text="ABC"
        cell.lbl_Sections.text="B"
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70;
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="AddEventToAddGuests"{
            let dest = segue.destination as! AddGuestsController
            
        }
    }
}
extension AddEventController:PassDataBack{
    func passData(FirstName: String, LastName: String, Guests: Int, Tables: String, Sections: String) {
        "AABC"
    }
}
