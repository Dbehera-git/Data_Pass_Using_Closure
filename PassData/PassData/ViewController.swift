//
//  ViewController.swift
//  PassData
//
//  Created by Loyltwo3ks on 14/12/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var nextBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nextBtn.layer.cornerRadius = self.nextBtn.bounds.height/2
        if let saveData = UserDefaults.standard.string(forKey: "Name") {
            nameLbl.text = saveData
        }
    }
    
    @IBAction func didTapNextBtn(_ sender: UIButton) {
        if let vc = storyboard?.instantiateViewController(identifier: "SecondVC") as? SecondVC {
            vc.datapass = {[weak self] name in
                self?.nameLbl.text = name
                //MARK: Save the name Locally
                UserDefaults.standard.set(name, forKey: "Name")
            }
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }

}

