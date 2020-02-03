//
//  ViewController.swift
//  ProgromaticUI
//
//  Created by Jaheed Haynes on 1/28/20.
//  Copyright © 2020 Jaheed Haynes. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    private let mainView = MainView()
    
    // if doing progromattic UI implement and set up the view in 'loadView'
    // loadView() gets called before viewDidLoad()
    
     override func loadView() {
        view = mainView
    }

//------------------------------------------------------------------------

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        configureNavBar()
        
        mainView.resetButton.addTarget(self, action: #selector(resetAppColor(_:)), for: .touchUpInside)
        
        
        
    
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        updateAppColor()
    }
    
    
//------------------------------------------------------------------------
    
    private func updateAppColor() {
        if let colorName = UserDefaults.standard.object(forKey: AppKey.appColorKey) as? String {
            view.backgroundColor = UIColor(named: colorName)
        }
    }
    
    
    private func configureNavBar() {
        
        // set title of the navigation Controller
        navigationItem.title = "Programmatic UI"
        
        // adding a UIBarButtonItem to the navigation bar
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "gear"), style: .plain, target: self, action: #selector(showSettings(_:)))
    }
    
    
    
    @objc
    private func showSettings(_ sender: UIBarButtonItem){
        // segure to the SettingsViewController
        let settingsVC = SettingsViewController()
        navigationController?.pushViewController(settingsVC, animated: true)
    }
    
    
    

    @objc
    private func resetAppColor(_ sender: UIButton) {
        showAlert(title: "OK", message: "You reset the app color")
        view.backgroundColor = .systemBlue
    }
    
    
    
    
}

