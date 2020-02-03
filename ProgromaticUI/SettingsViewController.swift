//
//  SettingsViewController.swift
//  ProgromaticUI
//
//  Created by Jaheed Haynes on 1/28/20.
//  Copyright © 2020 Jaheed Haynes. All rights reserved.
//

import UIKit

struct AppKey {
    static let appColorKey = "app color"
    static let appColorIndex = " "
}


class SettingsViewController: UIViewController {
    
    private let settingsView = SettingsView()
    
    private let colors = ["red", "green", "orange", "blue", "bubblegum"]
    
    override func loadView() {
        view = settingsView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBlue
        
        settingsView.pickerView.dataSource = self
        settingsView.pickerView.delegate = self
        
        let colorName = colors[0]
        view.backgroundColor = UIColor(named: colorName)
    }
    


}

extension SettingsViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
}


extension SettingsViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        colors[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        let colorName = colors[row]
        
        view.backgroundColor = UIColor(named: colorName)
        
        // save color name to user defaults
        UserDefaults.standard.set(colorName, forKey: AppKey.appColorKey)
    }
}
