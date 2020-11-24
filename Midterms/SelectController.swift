//
//  SelectController.swift
//  Midterms
//
//  Created by Phuoc Nguyen on 11/25/20.
//  Copyright © 2020 Phuoc Nguyen. All rights reserved.
//

import UIKit

class SelectController: UIViewController {
    var keyword:String = ""
    var selectedItem:Int = -1
    var guest_Name:[String] = ["Phuoc Nguyen","Phuong Thao", "Trong Dat", "Huyen Nhan"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func act_Home(_ sender: Any) {
    dismiss(animated: true, completion: nil)
    self.navigationController?.popViewController(animated: true)
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

extension SelectController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return guest_Name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "SelectUserViewCell", for: indexPath) as! SelectUserViewCell
        cell.lbl_GuestName.text=guest_Name[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedItem = indexPath.row
        performSegue(withIdentifier: "SelectToInfoController", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SelectToInfoController"{
            let dest = segue.destination as! InfoController
            if selectedItem != -1{
            dest.tempHeader = guest_Name[selectedItem]
            
        }
        }
    }
}
