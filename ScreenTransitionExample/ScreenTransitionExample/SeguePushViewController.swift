//
//  SeguePushViewController.swift
//  ScreenTransitionExample
//
//  Created by 이승재 on 2023/08/22.
//

import UIKit

class SeguePushViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    var name: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let name = name {
            self.nameLabel.text = name
        }
    }
    
    @IBAction func tapBackButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
        //self.navigationController?.popToRootViewController(animated: true)//루트 뷰로 이동
    }
    

}
