//
//  CodePresentViewController.swift
//  ScreenTransitionExample
//
//  Created by 이승재 on 2023/08/22.
//

import UIKit

protocol SendDataDelegate: AnyObject {
    func sendData(name: String)
}

class CodePresentViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    var name: String?
    weak var delegate: SendDataDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let name = name {
            textLabel.text = name
        }
        
    }
    
    @IBAction func tapBackButton(_ sender: UIButton) {
        self.delegate?.sendData(name: "delegate Jerry")
        self.presentingViewController?.dismiss(animated: true)
    }
    
}
