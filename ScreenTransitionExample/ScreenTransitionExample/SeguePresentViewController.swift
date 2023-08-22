//
//  SeguePresentViewController.swift
//  ScreenTransitionExample
//
//  Created by 이승재 on 2023/08/22.
//

import UIKit

class SeguePresentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func tapBackButton(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true )
    }
    
}
