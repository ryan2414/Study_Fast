//
//  SettingViewController.swift
//  LEDBoard
//
//  Created by 이승재 on 2023/08/23.
//

import UIKit

protocol LEDBoardSettingDelegate:AnyObject {
    func changedSetting(text: String?, textColor: UIColor, backgroundColor: UIColor)
}

class SettingViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var yelloButton: UIButton!
    @IBOutlet weak var purpleButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    
    @IBOutlet weak var blackButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var orangeButton: UIButton!
    
    weak var delegate: LEDBoardSettingDelegate?
    var ledText: String?
    var textColor: UIColor = .yellow
    var backgroundColor: UIColor = .black
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureView()
    }
    
    private func configureView() {
        if let ledText = self.ledText {
            self.textField.text = ledText
        }
        self.changeTextColor(color: textColor)
        self.changeBackgroundColor(color: self.backgroundColor)
    }
    
    @IBAction func taptextColorButton(_ sender: UIButton) {

        switch sender {
        case self.yelloButton:
            self.changeTextColor(color: .yellow)
            self.textColor = .yellow
        case self.purpleButton:
            self.changeTextColor(color: .purple)
            self.textColor = .purple
        case self.greenButton:
            self.changeTextColor(color: .green)
            self.textColor = .green
        default:
            break
        }
    }
    
    @IBAction func tapBackgroundColorButton(_ sender: UIButton) {
        switch sender {
        case self.blackButton:
            self.changeBackgroundColor(color: .black)
            self.backgroundColor = .black
        case self.blueButton:
            self.changeBackgroundColor(color: .blue)
            self.backgroundColor = .blue
        case self.orangeButton:
            self.changeBackgroundColor(color: .orange )
            self.backgroundColor = .orange
        default:
            break
        }
    }
    
    @IBAction func tapSaveButton(_ sender: UIButton) {
        self.delegate?.changedSetting(
            text: textField.text,
            textColor: textColor,
            backgroundColor: backgroundColor
        )
        self.navigationController?.popViewController(animated: true)
    }
    
    private func changeTextColor(color: UIColor) {
        self.yelloButton.alpha = color == UIColor.yellow ? 1 : 0.2
        self.purpleButton.alpha = color == UIColor.purple ? 1 : 0.2
        self.greenButton.alpha = color == UIColor.green ? 1 : 0.2
    }
    
    private func changeBackgroundColor(color: UIColor) {
        self.blackButton.alpha = color == UIColor.black ? 1 : 0.2
        self.blueButton.alpha = color == UIColor.blue ? 1 : 0.2
        self.orangeButton.alpha = color == UIColor.orange ? 1 : 0.2
    }
}
