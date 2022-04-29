//
//  ViewController.swift
//  ArcProgressBar
//
//  Created by Cell on 29.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var arcProgressBar: ArcProgressBar!;
    
    override func viewDidLoad() {
        super.viewDidLoad();
        arcProgressBar.backgroundColor = .clear;
        
        arcProgressBar.arcWidth = 15.0;
        arcProgressBar.startAngle = 35.0;
        arcProgressBar.endAngle = 180.0;
        arcProgressBar.progress = 35.0;
        arcProgressBar.maxProgress = 230.0;
        arcProgressBar.arcBackground = .brown;
        arcProgressBar.tintColor = .purple;
    }

}

