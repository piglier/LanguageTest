//
//  ViewController.swift
//  LanguageTest
//
//  Created by 朱彥睿 on 11/28/22.
//

import UIKit
import CoreLocation

class LanguageController: UIViewController {
    
    let titleLabel: UILabel = UILabel();
    let paramterLabel: UILabel = UILabel();
    let locationManager: CLLocationManager = CLLocationManager();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white;
        addSubview();
        constraints();
        setupUI();
        locationManager.requestWhenInUseAuthorization();
        // Do any additional setup after loading the view.
    }
    
    func addSubview() {
        view.addSubview(titleLabel);
        view.addSubview(paramterLabel);
    }
    
    func constraints() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false;
        titleLabel.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 100, paddingLeft: 100, paddingBottom: 0, paddingRight: 0, width: 200, height: 100, enableInsets: false);
        
        paramterLabel.translatesAutoresizingMaskIntoConstraints = false;
        paramterLabel.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 400, paddingLeft: 100, paddingBottom: 0, paddingRight: 0, width: 200, height: 100, enableInsets: false);
    }
    
    func setupUI() {
        titleLabel.backgroundColor = .systemBlue;
        titleLabel.text = NSLocalizedString("Go straight", comment: "");
        
        paramterLabel.backgroundColor = .systemRed;
        let kg: Int = 100;
        let sec: Int = 60;
        let bestStr: String = NSLocalizedString("Best record", comment: "");
        paramterLabel.numberOfLines = 0;
        paramterLabel.text = String.localizedStringWithFormat(bestStr, kg, sec);
        
        let imageStr: String = NSLocalizedString("english", comment: "") // 設定多國語系，填入key值
        let image: UIImage = UIImage(named: imageStr)!;
        let imageView: UIImageView = UIImageView(image: image);
        imageView.frame = CGRect(x: 25, y: 25, width: 50, height: 50);
        self.view.addSubview(imageView);
    }
}

