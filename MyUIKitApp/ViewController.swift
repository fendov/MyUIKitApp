//
//  ViewController.swift
//  MyUIKitApp
//
//  Created by Squeze on 19/10/2025.
//

import UIKit

class ViewController: UIViewController {

    let colorLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        colorLabel.frame = CGRect(x: 50, y: 100, width: 300, height: 50)
        colorLabel.textAlignment = .center
        colorLabel.text = ""
        colorLabel.font = UIFont.systemFont(ofSize: 24)
        view.addSubview(colorLabel)
        
        let redButton = UIButton(type: .system)
        redButton.setTitle("Красный", for: .normal)
        redButton.center = view.center
        redButton.frame = CGRect(x: 100, y: 320, width: 200, height: 60)
        redButton.layer.cornerRadius = 10
        redButton.addTarget(self, action: #selector(makeRed), for: .touchUpInside)
        view.addSubview(redButton)
        
        let yellowButton = UIButton(type: .system)
        yellowButton.setTitle("Жёлтый", for: .normal)
        yellowButton.center = view.center
        yellowButton.frame = CGRect(x: 100, y: 360, width: 200, height: 60)
        yellowButton.layer.cornerRadius = 10
        yellowButton.addTarget(self, action: #selector(makeYellow), for: .touchUpInside)
        view.addSubview(yellowButton)
        
        let greenButton = UIButton(type: .system)
        greenButton.setTitle("Зелёный", for: .normal)
        greenButton.center = view.center
        greenButton.frame = CGRect(x: 100, y: 400, width: 200, height: 60)
        greenButton.layer.cornerRadius = 10
        greenButton.addTarget(self, action: #selector(makeGreen), for: .touchUpInside)
        view.addSubview(greenButton)
    }

    @objc func makeRed() {
        view.backgroundColor = .red
        colorLabel.text = "Красный"
    }

    @objc func makeYellow() {
        view.backgroundColor = .yellow
        colorLabel.text = "Жёлтый"
    }

    @objc func makeGreen() {
        view.backgroundColor = .green
        colorLabel.text = "Зелёный"
    }
}
