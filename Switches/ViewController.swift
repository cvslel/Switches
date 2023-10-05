//
//  ViewController.swift
//  Switches
//
//  Created by Cenker Soyak on 3.10.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    var onOff = UISwitch()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createUI()
    }
    func createUI(){
        view.backgroundColor = .white
        view.addSubview(onOff)
        onOff.thumbTintColor = .black
        onOff.clipsToBounds = true
        onOff.layer.masksToBounds = true
        onOff.layer.cornerRadius = 15
        onOff.translatesAutoresizingMaskIntoConstraints = false
        onOff.addTarget(self, action: #selector(valueChanged), for: .valueChanged)
        onOff.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
    @objc func valueChanged(){
        if onOff.isOn {
            view.backgroundColor = .green
            onOff.onTintColor = .red
        } else {
            
            onOff.backgroundColor = .green
            view.backgroundColor = .red
        }
    }
}
