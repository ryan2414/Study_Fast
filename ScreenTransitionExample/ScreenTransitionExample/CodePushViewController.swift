//
//  CodePushViewController.swift
//  ScreenTransitionExample
//
//  Created by 이승재 on 2023/08/22.
//

import UIKit

class CodePushViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    var name: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name {
            textLabel.text = name
        }
       
    }
    
    @IBAction func tapBackButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
