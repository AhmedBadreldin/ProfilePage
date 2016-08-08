//
//  chooseProfileImage.swift
//  ProfilePg
//
//  Created by Ahmed Badreldin on 7/30/16.
//  Copyright © 2016 Ahmed Badreldin. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    func addBackground() {
        // screen width and height:
        let width = UIScreen.mainScreen().bounds.size.width
        let height = UIScreen.mainScreen().bounds.size.height
        
        let imageViewBackground = UIImageView(frame: CGRectMake(0, 0, width, height))
        imageViewBackground.image = UIImage(named: "YOUR IMAGE NAME GOES HERE")
        
        // you can change the content mode:
        imageViewBackground.contentMode = UIViewContentMode.ScaleAspectFill
        
        self.addSubview(imageViewBackground)
        self.sendSubviewToBack(imageViewBackground)
    }}

override func viewDidLoad() {
    super.viewDidLoad()
    
    self.view.addBackground()
}