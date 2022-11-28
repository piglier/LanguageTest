//
//  ViewController.swift
//  LanguageTest
//
//  Created by 朱彥睿 on 11/28/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    let titleLabel: UILabel = UILabel();
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubview();
        constraints();
        setupUI();
        // Do any additional setup after loading the view.
    }

    func addSubview() {
        view.addSubview(titleLabel);
    }
    
    func constraints() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false;
        titleLabel.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 100, paddingLeft: 100, paddingBottom: 0, paddingRight: 0, width: 200, height: 100, enableInsets: false);
    }
    
    func setupUI() {
        titleLabel.backgroundColor = .systemBlue;
        titleLabel.text = NSLocalizedString("Go straight", comment: "");
    }
}

