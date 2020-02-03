//
//  MainView.swift
//  ProgromaticUI
//
//  Created by Jaheed Haynes on 1/28/20.
//  Copyright © 2020 Jaheed Haynes. All rights reserved.
//

import UIKit

// MARK:                         *** This is the parent to MainViewController ***


//*********************************************************************************************************
// MARK:         !!!!!!!!!!!! VIEW HIERCHY IS VERY VERY VER IMPORTANT !!!!!!!!!!!!!!!!!!!!
// meaning that you have to place things in order for which they will be displayed
// Otherwise the app will have severe errors
//*********************************************************************************************************


class MainView: UIView {
    
    let defaultMessage = "No default color set. Please go to settings"
    
    // create a Label
    public lazy var messageLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .systemTeal
        label.textAlignment = .center
        label.text = defaultMessage
        return label
    }()  // '()' creates a closure and calls simultaneously
    
    
    
    // create a Button
    public lazy var resetButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemGray2
        button.setTitle("Reset", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        return button
    }()
    
    
    
    // init(frame: ) gets called if the view is being done programmatically
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    
    
    
    // if this view gets initialized from storyboard
    // this initializer gets called
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    
    
    private func commonInit() {
        setUpMessageLabelConstraints()
        setuoResetButtonConstraints()
        
    }
    
    
    private func setUpMessageLabelConstraints(){
        
        // MARK: Step 1
        // add the messageLabel to the mainView
        addSubview(messageLabel) // this calls the 'lazy var messageLabel'
        
         // MARK: Step 2
        // This removes the default properties so you can autolayout programattically
        messageLabel.translatesAutoresizingMaskIntoConstraints = false // this takes off auto resizing mask
        
         // MARK: Step 3
        // set constraints for the messageLabel
        NSLayoutConstraint.activate([
            // set top anchor 20 points from the safe area top
            messageLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            
            // set padding at the leading edge of the MainView
            messageLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            // set padding at the trailing edge of the MainView
            messageLabel.leadingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            // centers the label
            messageLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
    
    
    private func setuoResetButtonConstraints() {
        addSubview(resetButton)
        
        resetButton.translatesAutoresizingMaskIntoConstraints = false
        
        // MARK: This autolayouts the button
        NSLayoutConstraint.activate([
            resetButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            resetButton.topAnchor.constraint(equalTo: messageLabel.bottomAnchor, constant: 40)
        ])
    }
    
}
