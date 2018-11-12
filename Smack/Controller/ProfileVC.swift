//
//  ProfileVC.swift
//  Smack
//
//  Created by Ryan Hutchison on 11/12/18.
//  Copyright © 2018 Ryan Hutchison. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {

    
    @IBOutlet weak var profileImg: CircleImage!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userEmail: UILabel!
    @IBOutlet weak var bgView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews() {
        profileImg.image = UIImage(named: UserDataService.instance.avatarName)
        let bgColorString = UserDataService.instance.avatarColor
        profileImg.backgroundColor = UserDataService.instance.returnUIColor(components: bgColorString)
        userName.text = UserDataService.instance.name
        userEmail.text = UserDataService.instance.email
        
        let closeTouch = UITapGestureRecognizer(target: self, action: #selector(ProfileVC.closeTap(_:)))
        bgView.addGestureRecognizer(closeTouch)
    }

    @objc func closeTap(_ recognizer: UITapGestureRecognizer) {
        dismiss(animated: true, completion: nil)
    }

    @IBAction func closeModalPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func logoutPressed(_ sender: Any) {
        UserDataService.instance.logoutUser()
        NotificationCenter.default.post(name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
        dismiss(animated: true, completion: nil)
    }
}
