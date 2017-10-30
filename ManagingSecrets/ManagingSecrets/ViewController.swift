//
//  ViewController.swift
//  ManagingSecrets
//
//  Created by Ben Scheirman on 10/26/17.
//  Copyright © 2017 NSScreencast. All rights reserved.
//

import UIKit
import Keys

class ViewController: UIViewController {

    @IBOutlet weak var secretTextField: UITextField!
    @IBOutlet weak var revealButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secretTextField.text = ManagingSecretsKeys().myServiceApiKey
    }

    @IBAction func revealTapped(_ sender: Any) {
        secretTextField.isSecureTextEntry = !secretTextField.isSecureTextEntry
    }
}

