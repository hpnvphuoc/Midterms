//
//  InfoController.swift
//  Midterms
//
//  Created by Phuoc Nguyen on 11/25/20.
//  Copyright © 2020 Phuoc Nguyen. All rights reserved.
//

import UIKit
class Guest{
    var name:String = ""
    var NumGuest:Int=0
    func initData(name:String,NumGuest:Int){
        self.name=name;
        self.NumGuest=NumGuest
    }
}
class InfoController: UIViewController {
    var listGuest=[Guest]()
    var tempHeader:String=""
    
    func initData(){
        let guest1=Guest()
        guest1.initData(name: "Phuoc Nguyen", NumGuest: 2)
        let guest2=Guest()
        guest2.initData(name: "Phuong Thao", NumGuest: 2)
        listGuest.append(guest1)
        listGuest.append(guest2)
    }
    
    
    
    @IBOutlet weak var lbl_Header: UILabel!
    @IBOutlet weak var btn_Done: UIButton!
    @IBOutlet weak var lbl_TableNumber: UILabel!
    
    @IBOutlet weak var lbl_NumGuest: UILabel!
    @IBOutlet weak var tbview_WhoseInMyTable: UITableView!
    
    @IBOutlet weak var lbl_Section: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        initData()
        lbl_TableNumber.layer.cornerRadius=lbl_TableNumber.frame.width/2
        btn_Done.layer.cornerRadius=btn_Done.frame.width/2
        lbl_Header.text
            = tempHeader
        // Do any additional setup after loading the view.
    }

   @IBAction func act_Done(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    
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

extension InfoController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listGuest.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WhoseTableViewCell") as! WhoseTableViewCell
        cell.lbl_GuestsName.text = listGuest[indexPath.row].name
        cell.lbl_NumGuests.text="\(listGuest[indexPath.row].NumGuest)"
        return cell
    }
    
    
}
