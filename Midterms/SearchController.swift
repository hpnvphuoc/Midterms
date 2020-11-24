//
//  SearchController.swift
//  Midterms
//
//  Created by Phuoc Nguyen on 11/25/20.
//  Copyright © 2020 Phuoc Nguyen. All rights reserved.
//

import UIKit

class SearchController: UIViewController {
    @IBOutlet weak var lbl_Header: UILabel!

    var selectedKey:String = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func searchWithKeyWord(){
        performSegue(withIdentifier: "SearchToSelectController", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SearchToSelectController"{
            let dest = segue.destination as! SelectController
            dest.keyword = selectedKey
        }
    }
    @IBAction func act_A(_ sender: Any) {
        searchWithKeyWord()
        selectedKey="A"
    }
    @IBAction func act_B(_ sender: Any) {
        searchWithKeyWord()
        selectedKey="B"
    }
    @IBAction func act_C(_ sender: Any) {
        searchWithKeyWord()
        selectedKey="C"
    }
    @IBAction func act_D(_ sender: Any) {
        searchWithKeyWord()
        selectedKey="D"
    }
    @IBAction func act_E(_ sender: Any) {
        searchWithKeyWord()
        selectedKey="E"
    }
    @IBAction func act_F(_ sender: Any) {
        searchWithKeyWord()
        selectedKey="F"
    }
    @IBAction func act_G(_ sender: Any) {
        searchWithKeyWord()
        selectedKey="G"
    }
    @IBAction func act_H(_ sender: Any) {
        searchWithKeyWord()
        selectedKey="H"
    }
    @IBAction func act_I(_ sender: Any) {
        searchWithKeyWord()
        selectedKey="I"
    }
    @IBAction func act_J(_ sender: Any) {
        searchWithKeyWord()
        selectedKey="J"
    }
    @IBAction func act_K(_ sender: Any) {
        searchWithKeyWord()
        selectedKey="K"
    }
    @IBAction func act_L(_ sender: Any) {
        searchWithKeyWord()
        selectedKey="L"
    }
    @IBAction func act_M(_ sender: Any) {
        searchWithKeyWord()
        selectedKey="M"
    }
    @IBAction func act_N(_ sender: Any) {
        searchWithKeyWord()
        selectedKey="N"
    }
    @IBAction func act_O(_ sender: Any) {
        searchWithKeyWord()
        selectedKey="O"
    }
    @IBAction func act_P(_ sender: Any) {
        searchWithKeyWord()
        selectedKey="P"
    }
    @IBAction func act_Q(_ sender: Any) {
        searchWithKeyWord()
        selectedKey="Q"
    }
    @IBAction func act_R(_ sender: Any) {
        searchWithKeyWord()
        selectedKey="R"
    }
    @IBAction func act_S(_ sender: Any) {
        searchWithKeyWord()
        selectedKey="S"
    }
    @IBAction func act_T(_ sender: Any) {
        searchWithKeyWord()
        selectedKey="T"
    }
    @IBAction func act_U(_ sender: Any) {
        searchWithKeyWord()
        selectedKey="U"
    }
    @IBAction func act_V(_ sender: Any) {
        searchWithKeyWord()
        selectedKey="V"
    }
    @IBAction func act_W(_ sender: Any) {
        searchWithKeyWord()
        selectedKey="W"
    }
    @IBAction func act_X(_ sender: Any) {
        searchWithKeyWord()
        selectedKey="X"
    }
    @IBAction func act_Y(_ sender: Any) {
        searchWithKeyWord()
        selectedKey="Y"
    }
    @IBAction func act_Z(_ sender: Any) {
         searchWithKeyWord()
         selectedKey="Z"
    }
    @IBAction func act_Home(_ sender: Any) {
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
