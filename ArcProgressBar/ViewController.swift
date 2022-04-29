//
//  ViewController.swift
//  ArcProgressBar
//
//  Created by Cell on 29.04.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad();
        let arcProgressBar = ArcProgressBar();
        arcProgressBar.center = view.center;
        arcProgressBar.backgroundColor = .clear;
        view.addSubview(arcProgressBar);
        arcProgressBar.progress = 15;
        arcProgressBar.maxProgress = 120;
    }


}

