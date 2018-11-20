//
//  AddChannelVC.swift
//  Smack
//
//  Created by Ryan Hutchison on 11/19/18.
//  Copyright © 2018 Ryan Hutchison. All rights reserved.
//

import UIKit

class AddChannelVC: UIViewController {

    
    // Outlets
    @IBOutlet weak var nameTxt: UITextField!
    @IBOutlet weak var chanDescTxt: UITextField!
    @IBOutlet weak var bgView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView() {
        let closeTouch = UITapGestureRecognizer(target: self, action: #selector(AddChanVC.closeTap(_:)))
        bgView.addGestureRecognizer(closeTouch)
        
        nameTxt.attributedPlaceholder = NSAttributedString(string: "name", attributes: [.foregroundColor: smackPurplePlaceholder])
        chanDescTxt.attributedPlaceholder = NSAttributedString(string: "description", attributes: [.foregroundColor: smackPurplePlaceholder])
    }
    
    @objc func closeTap(_ recognizer: UITapGestureRecognizer) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func closeModalPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func createChannelPressed(_ sender: Any) {
    }
}
