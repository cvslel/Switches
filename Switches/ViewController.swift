//
//  ViewController.swift
//  Switches
//
//  Created by Cenker Soyak on 3.10.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let onOff = UISwitch()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createUI()
    }
    
    func createUI(){
        view.backgroundColor = .white
        view.addSubview(onOff)
        onOff.thumbTintColor = .black
        onOff.translatesAutoresizingMaskIntoConstraints = false
        onOff.addTarget(self, action: #selector(valueChanged), for: .valueChanged)
        onOff.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(70)
            make.left.equalTo(view.snp.left).offset(170)
            make.right.equalTo(view.snp.right).offset(-100)
            make.height.equalTo(150)
        }
    }
    
    @objc func valueChanged(){
        if onOff.isOn{
            view.backgroundColor = .green
            onOff.onTintColor = .red
        } else {
            view.backgroundColor = .red
        }
    }
}
