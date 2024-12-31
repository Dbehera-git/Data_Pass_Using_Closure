//
//  SecondVC.swift
//  PassData
//
//  Created by Loyltwo3ks on 14/12/24.
//

import UIKit

class SecondVC: UIViewController {
    
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var saveBtn: UIButton!
    var datapass: ((String) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.saveBtn.layer.cornerRadius = self.saveBtn.bounds.height/2
    }
    
    @IBAction func didTapSaveBtn(_ sender: UIButton) {
        guard let name  = nameTF.text else{return}
        datapass?(name)
        self.navigationController?.popViewController(animated: true)
    }
    

}
