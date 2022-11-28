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
        
        
        titleLabel.text = NSLocalizedString("Go straight", comment: "");
        // Do any additional setup after loading the view.
    }

    func addSubview() {
        view.addSubview(titleLabel);
    }
    
    func constraints() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false;
    }

}

