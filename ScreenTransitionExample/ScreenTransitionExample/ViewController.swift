//
//  ViewController.swift
//  ScreenTransitionExample
//
//  Created by 이승재 on 2023/08/22.
//

import UIKit

class ViewController: UIViewController, SendDataDelegate {

    @IBOutlet weak var mainLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    

    @IBAction func tapCodePushButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(identifier: "CodePush") as? CodePushViewController else { return }
        viewController.name = "Buendg"
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func tapCodePresentButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(identifier: "CodePresent") as? CodePresentViewController else { return }
        viewController.name = "ssscvsdfcvsdf"
        viewController.modalPresentationStyle = .fullScreen
        viewController.delegate = self
        self.present(viewController, animated: true)
    }
    
    func sendData(name: String) {
        self.mainLabel.text = name
        self.mainLabel.sizeToFit()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? SeguePushViewController {
            viewController.name = "Segue test" 
        }
    }
}

