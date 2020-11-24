//
//  AddEventController.swift
//  Midterms
//
//  Created by Phuoc Nguyen on 11/24/20.
//  Copyright © 2020 Phuoc Nguyen. All rights reserved.
//

import UIKit
import IGColorPicker

class EventsRecord{
    var FirstName:String = ""
    var LastName:String = ""
    var Guests:Int = 0
    var Table: String = ""
    var Section:String = ""
    func initData(FirstName:String,LastName:String, Guests:Int,Table:String,Sections: String){
        self.FirstName = FirstName
        self.LastName = LastName
        self.Guests = Guests
        self.Table = Table
        self.Section = Sections
    }
}

class AddEventController: UIViewController {

    @IBOutlet weak var inputbx_EventName: UITextField!
    @IBOutlet weak var btn_FontPicker: UIButton!
    @IBOutlet weak var lbl_Font: UILabel!
    @IBOutlet weak var lbl_FontSize: UILabel!
    @IBOutlet weak var sld_FontSizePicker: UISlider!
    @IBOutlet weak var tbview_EventRecords: UITableView!
    @IBOutlet weak var btn_FontColorPicker: UIButton!
    
    @IBOutlet weak var atrb_ColorPickerHeight: NSLayoutConstraint!
    @IBOutlet weak var atrb_fontPicker: NSLayoutConstraint!
    
    var colorString: String = "[0.0, 0.0, 0.0, 1.0]"
    @IBOutlet weak var view_ColorPickerView: ColorPickerView!
    @IBOutlet weak var view_PreViewColor: UIView!
    
    var listEventRecords = [EventsRecord]()
    var selectedItem:Int = -1
    func initData(){
        let Event1 = EventsRecord()
        Event1.initData(FirstName: "Nguyen", LastName:"Phuoc" , Guests: 2, Table: "56", Sections: "B")
        let Event2 = EventsRecord()
        Event2.initData(FirstName:"Phuong",LastName: "Thao", Guests: 3, Table: "12", Sections: "A")
        let Event3 = EventsRecord()
        Event3.initData(FirstName: "Thanh",LastName: "Tung", Guests: 2, Table: "01", Sections:"C")
        let Event4 = EventsRecord()
        Event4.initData(FirstName: "Man",LastName: "Dat", Guests: 1, Table: "02", Sections: "AC")
        listEventRecords.append(Event1)
        listEventRecords.append(Event2)
        listEventRecords.append(Event3)
        listEventRecords.append(Event4)
    }
    var listFonts = ["Avenir Black",
    "Avenir Black Oblique",
    "Avenir Book",
    "Avenir Book Oblique",
    "Avenir Heavy",
    "Avenir Heavy Oblique",
    "Avenir Light",
    "Avenir Light Oblique",
    "Avenir Medium",
    "Avenir Medium Oblique",
    "Avenir Next Bold",
    "Avenir Next Bold Italic",
    "Avenir Next Condensed Bold",
    "Avenir Next Condensed Bold Italic",
    "Avenir Next Condensed Demi Bold",
    "Avenir Next Condensed Demi Bold Italic",
    "Avenir Next Condensed Heavy",
    "Avenir Next Condensed Heavy Italic",
    "Avenir Next Condensed Italic",
    "Avenir Next Condensed Medium",
    "Avenir Next Condensed Medium Italic",
    "Avenir Next Condensed Regular",
    "Avenir Next Condensed Ultra Light",
    "Avenir Next Condensed Ultra Light Italic",
    "Avenir Next Demi Bold",
    "Avenir Next Demi Bold Italic",
    "Avenir Next Heavy",
    "Avenir Next Heavy Italic",
    "Avenir Next Italic",
    "Avenir Next Medium",
    "Avenir Next Medium Italic",
    "Avenir Next Regular",
    "Avenir Next Ultra Light",
    "Avenir Next Ultra Light Italic",
    "Avenir Oblique",
    "Avenir Roman"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initData()
        atrb_ColorPickerHeight.constant=0;
        atrb_fontPicker.constant=0
        view.addSubview(view_ColorPickerView)
        view_ColorPickerView.delegate = self

    }
    @IBAction func act_ShowFontPicker(_ sender: Any) {
        atrb_fontPicker.constant=120
    }
    @IBAction func act_showColorPicker(_ sender: Any) {
        atrb_ColorPickerHeight.constant=120
    }
    @IBAction func act_GotoAddGuestScreen(_ sender: Any) {
        performSegue(withIdentifier: "AddEventToAddGuests", sender: self)
    }
    @IBAction func act_Exit(_ sender: Any) {
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
extension AddEventController:UIPickerViewDataSource,UIPickerViewDelegate{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return listFonts.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return listFonts[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lbl_Font.text=listFonts[row]
        DispatchQueue.main.asyncAfter(deadline: .now()+1) {
            self.atrb_fontPicker.constant = 0
        }
    }
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        var pickerLabel: UILabel? = (view as? UILabel)
        if pickerLabel == nil {
            pickerLabel = UILabel()
            pickerLabel?.font = UIFont(name: "\(listFonts[row])", size:25)
            pickerLabel?.textAlignment = .center
        }
        pickerLabel?.text = listFonts[row]

        return pickerLabel!
    }
}
extension AddEventController:ColorPickerViewDelegate{
    func colorPickerView(_ colorPickerView: ColorPickerView, didSelectItemAt indexPath: IndexPath) {
        view_PreViewColor.backgroundColor = colorPickerView.colors[indexPath.item]
        DispatchQueue.main.asyncAfter(deadline: .now()+1) {
            self.atrb_ColorPickerHeight.constant=0
        }
    }
    
}
extension AddEventController: UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listEventRecords.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "GuestsCell", for: indexPath) as! GuestsCell
        
        cell.lbl_GuestsName.text="\(listEventRecords[indexPath.row].FirstName),\(listEventRecords[indexPath.row].LastName)"
        cell.lbl_Numguests.text="\(listEventRecords[indexPath.row].Guests)"
        cell.lbl_Tables.text=listEventRecords[indexPath.row].Table
        cell.lbl_Sections.text=listEventRecords[indexPath.row].Section
    
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70;
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedItem=indexPath.row
        performSegue(withIdentifier: "AddEventToAddGuests", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="AddEventToAddGuests"{
            let dest = segue.destination as! AddGuestsController
            if selectedItem != -1{ dest.tempFirstName=listEventRecords[selectedItem].FirstName
            dest.tempLastName=listEventRecords[selectedItem].LastName
            dest.tempGuests=listEventRecords[selectedItem].Guests
            dest.tempTable=listEventRecords[selectedItem].Table
                dest.tempSection=listEventRecords[selectedItem].Section
                dest.tempSelectedItem=selectedItem
                
            }else{
                
            }
            dest.delegate=self

        }
    }
}
extension AddEventController:PassDataBack{
    func passData(FirstName: String, LastName: String, Guests: Int, Tables: String, Sections: String,selectedItem:Int) {
        
        if FirstName==""||LastName==""||Guests==0||Tables==""||Sections==""{
            
        }else{
            var EventRecordTemp = EventsRecord()
                EventRecordTemp.initData(FirstName: FirstName, LastName: LastName, Guests: Guests, Table: Tables, Sections: Sections)
            
            if selectedItem == -1{
                listEventRecords.append(EventRecordTemp)
            }else{
                listEventRecords.remove(at: selectedItem)
                listEventRecords.insert(EventRecordTemp, at: selectedItem)
            }
            tbview_EventRecords.reloadData()
        }
            
        
        
    }
}
