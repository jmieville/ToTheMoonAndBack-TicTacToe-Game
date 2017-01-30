//
//  popUp.swift
//  TicTacToe
//
//  Created by Jean-Marc Kampol Mieville on 10/9/2559 BE.
//  Copyright © 2559 Jean-Marc Kampol Mieville. All rights reserved.
//

import Foundation
import UIKit

class PopUpViewController: UIViewController {
    
    @IBAction func dismissPopUp(_ sender: AnyObject) {
        
        dismiss(animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.2)
        
        
        
    }
    
}
