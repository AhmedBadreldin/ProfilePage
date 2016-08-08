//
//  ViewController.swift
//  ProfilePg
//
//  Created by Ahmed Badreldin on 7/28/16.
//  Copyright © 2016 Ahmed Badreldin. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITextViewDelegate  {
    
    
    @IBOutlet weak var profilePic: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var interestLabelImage: UIImageView!
    @IBOutlet weak var interestPic1: UIImageView!
    @IBOutlet weak var interestPic2: UIImageView!
    @IBOutlet weak var interestPic3: UIImageView!
    @IBOutlet weak var interestPic4: UIImageView!
    @IBOutlet weak var interestPic5: UIImageView!
    
    @IBOutlet weak var edit1: UIButton!
    @IBAction func editButton1(sender: UIButton) {
    }
   
    @IBOutlet weak var edit2: UIButton!
    @IBAction func editButton2(sender: UIButton) {
        bioTextField.becomeFirstResponder()
//        if edit2.state == UIControlState.Normal {
            edit2.setImage(UIImage(named: "edit"), forState: .Normal)
//        }
//        if edit2.state == UIControlState.Selected {
            edit2.setBackgroundImage(UIImage(named: "Save"), forState: .Selected)
//        }
    }
    
    @IBOutlet weak var submit: UIButton!
    @IBAction func submitB(sender: UIButton) {
      //  let submitImage = UIImage(named: "submit") as UIImage?
      //  submit.setImage(submitImage, forState: .Normal)
        
        }
    
    
    
    @IBOutlet weak var bioLabelImage: UIImageView!
    @IBOutlet weak var bioTextField: UITextView!
    
    @IBOutlet weak var promoCodeLabel: UILabel!
    @IBOutlet weak var promoCodeTextBox: UITextField!
    
    @IBOutlet weak var someonewLabel0: UILabel!
    
    @IBOutlet weak var view0: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
 
       
    
    private let SCREEN_SIZE: CGRect = UIScreen.mainScreen().bounds
    
//    var view1 = UIView()
//    var Head = UIImageView()
    
//    var ProfileImageView = UIImageView(image: UIImage(named:"profileImageIcon")) as UIImageView?
    
    
//    var imageAppHead = UIImageView("app_head")
//    func AppHead(imageAppHead: UIImage) -> UIImage {
//        imageAppHead = UIImage(named: "app_head") as UIImage?
//
//    }
    
    func setupView0(view0: UIView) -> UIView {
        view0.translatesAutoresizingMaskIntoConstraints = false
        view0.leadingAnchor.constraintEqualToAnchor(view.leadingAnchor).active = true
        view0.topAnchor.constraintEqualToAnchor(view.topAnchor).active = true
        view0.widthAnchor.constraintEqualToAnchor(view.widthAnchor).active = true
        view0.heightAnchor.constraintEqualToAnchor(view.heightAnchor, multiplier: 0.1).active = true
        view0.contentMode = UIViewContentMode.ScaleAspectFit
        view0.autoresizingMask = UIViewAutoresizing.FlexibleWidth
        view0.autoresizingMask = UIViewAutoresizing.FlexibleHeight
        print(view0)
        return view0
    }
    
    func setupSomeonewLabel0(someonewLabel0: UILabel) -> UILabel {
        someonewLabel0.translatesAutoresizingMaskIntoConstraints = false
        someonewLabel0.centerXAnchor.constraintEqualToAnchor(view0.centerXAnchor).active = true
        someonewLabel0.bottomAnchor.constraintEqualToAnchor(view0.bottomAnchor, constant: -2).active = true
        someonewLabel0.widthAnchor.constraintEqualToAnchor(view0.widthAnchor, multiplier: 0.5).active = true
        someonewLabel0.heightAnchor.constraintEqualToAnchor(view0.heightAnchor, multiplier: 0.4).active = true
        someonewLabel0.contentMode = UIViewContentMode.ScaleAspectFit
        someonewLabel0.autoresizingMask =  UIViewAutoresizing.FlexibleHeight
        someonewLabel0.autoresizingMask = UIViewAutoresizing.FlexibleWidth
        print(someonewLabel0)
        return someonewLabel0
    }
    
    func setupView2(view2: UIView) -> UIView {
        view2.translatesAutoresizingMaskIntoConstraints = false
        view2.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor).active = true
        view2.topAnchor.constraintEqualToAnchor(view0.bottomAnchor, constant: 12).active = true
        view2.widthAnchor.constraintEqualToAnchor(view.widthAnchor, multiplier: 1.0).active = true
        view2.heightAnchor.constraintEqualToAnchor(view.heightAnchor, multiplier: 0.35).active = true
        view2.contentMode = UIViewContentMode.ScaleAspectFit
        view2.autoresizingMask = UIViewAutoresizing.FlexibleWidth
        view2.autoresizingMask = UIViewAutoresizing.FlexibleHeight
        print(view2)
        return view2
    }
    
    func setupView3(view3: UIView) -> UIView {
        view3.translatesAutoresizingMaskIntoConstraints = false
        view3.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor).active = true
        view3.topAnchor.constraintEqualToAnchor(view2.bottomAnchor, constant: -13).active = true
        view3.widthAnchor.constraintEqualToAnchor(view.widthAnchor, multiplier: 1.0).active = true
        view3.heightAnchor.constraintEqualToAnchor(view.heightAnchor, multiplier: 0.27).active = true
        view3.contentMode = UIViewContentMode.ScaleAspectFit
        view3.autoresizingMask = UIViewAutoresizing.FlexibleWidth
        view3.autoresizingMask = UIViewAutoresizing.FlexibleHeight
        print(view3)
        return view3
    }
    
    func setupView4(view4: UIView) -> UIView {
        view4.translatesAutoresizingMaskIntoConstraints = false
        view4.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor).active = true
        view4.topAnchor.constraintEqualToAnchor(view3.bottomAnchor, constant: -30).active = true
        view4.widthAnchor.constraintEqualToAnchor(view.widthAnchor, multiplier: 1.0).active = true
        view4.heightAnchor.constraintEqualToAnchor(view.heightAnchor, multiplier: 0.3).active = true
        view4.contentMode = UIViewContentMode.ScaleAspectFit
        view4.autoresizingMask = UIViewAutoresizing.FlexibleWidth
        view4.autoresizingMask = UIViewAutoresizing.FlexibleHeight
        print(view4)
        return view4
    }
    
    // For this to work fine, we have to re-edit the transparernt layer above and below the SomeonewHeader in png
//    func setupSomonewHeader(someonewHeader: UIImageView) -> UIImageView {
//        someonewHeader.translatesAutoresizingMaskIntoConstraints = false
//        someonewHeader.leadingAnchor.constraintEqualToAnchor(view1.leadingAnchor, constant: 0).active = true
//        someonewHeader.topAnchor.constraintEqualToAnchor(view1.topAnchor, constant: 0).active = true
//        someonewHeader.widthAnchor.constraintEqualToAnchor(view1.widthAnchor).active = true
//        someonewHeader.heightAnchor.constraintEqualToAnchor(view1.heightAnchor, multiplier: 1.0).active = true
//        someonewHeader.contentMode = UIViewContentMode.ScaleAspectFit
//        print(someonewHeader)
//        return someonewHeader
//    }
    
    func profilePicTemp(profilePic: UIImageView) -> UIImageView {
        profilePic.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor).active = true
        profilePic.topAnchor.constraintEqualToAnchor(view0.bottomAnchor, constant: 8).active = true
        profilePic.widthAnchor.constraintEqualToAnchor(view2.widthAnchor, multiplier: 3.0).active = true
        profilePic.heightAnchor.constraintEqualToAnchor(view2.heightAnchor, multiplier: 1.5).active = true
        profilePic.contentMode = UIViewContentMode.ScaleAspectFill
        profilePic.autoresizingMask = UIViewAutoresizing.FlexibleWidth
        profilePic.autoresizingMask = UIViewAutoresizing.FlexibleTopMargin
        profilePic.autoresizingMask = UIViewAutoresizing.FlexibleRightMargin
        print(profilePic)
        return profilePic
    }
    
    
    func setupNameLabel(nameLabel: UILabel) -> UILabel {
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor).active = true
        nameLabel.topAnchor.constraintEqualToAnchor(profilePic.bottomAnchor, constant: 4).active = true
        nameLabel.widthAnchor.constraintEqualToAnchor(view2.widthAnchor, multiplier: 0.6)
        nameLabel.heightAnchor.constraintEqualToAnchor(view2.heightAnchor, multiplier: 0.23).active = true
        nameLabel.contentMode = UIViewContentMode.ScaleAspectFit
        print(nameLabel)
        return nameLabel
    }
    
    func setupInterestLabelImage(interestLabelImage: UIImageView) -> UIImageView {
        interestLabelImage.translatesAutoresizingMaskIntoConstraints = false
        interestLabelImage.leadingAnchor.constraintEqualToAnchor(view3.leadingAnchor, constant: 0).active = true
        interestLabelImage.topAnchor.constraintEqualToAnchor(view3.topAnchor, constant: 5).active = true
        interestLabelImage.widthAnchor.constraintEqualToAnchor(view3.widthAnchor, multiplier: 1.0).active = true
        interestLabelImage.heightAnchor.constraintEqualToAnchor(view3.heightAnchor, multiplier: 0.3).active = true
        interestLabelImage.contentMode = UIViewContentMode.ScaleAspectFit
        print(interestLabelImage)
        return interestLabelImage
    }
    
    
    func setupEditButton1(edit1: UIButton) -> UIButton {
        edit1.translatesAutoresizingMaskIntoConstraints = false
        edit1.trailingAnchor.constraintEqualToAnchor(view3.trailingAnchor, constant: -15).active = true
        edit1.topAnchor.constraintEqualToAnchor(view3.topAnchor, constant: 15).active = true
        edit1.widthAnchor.constraintEqualToAnchor(interestLabelImage.widthAnchor, multiplier: 0.12).active = true
        edit1.heightAnchor.constraintEqualToAnchor(interestLabelImage.heightAnchor, multiplier: 0.55).active = true
        edit1.contentMode = UIViewContentMode.ScaleAspectFit
        print(edit1)
        return edit1
    }
   
    func setupInterestPic1(interestPic1: UIImageView) -> UIImageView {
        interestPic1.translatesAutoresizingMaskIntoConstraints = false
        interestPic1.leftAnchor.constraintEqualToAnchor(view3.leftAnchor, constant: 10).active = true
        interestPic1.topAnchor.constraintEqualToAnchor(view3.topAnchor, constant: 35).active = true
        interestPic1.widthAnchor.constraintEqualToAnchor(view3.widthAnchor, multiplier: 0.18).active = true
        interestPic1.heightAnchor.constraintEqualToAnchor(view3.heightAnchor, multiplier: 0.5).active = true
        interestPic1.contentMode = UIViewContentMode.ScaleAspectFit
        print(interestPic1)
        return interestPic1
    }
    
    func setupInterestPic2(interestPic2: UIImageView) -> UIImageView {
        interestPic2.translatesAutoresizingMaskIntoConstraints = false
        interestPic2.leftAnchor.constraintEqualToAnchor(interestPic1.rightAnchor, constant: 5).active = true
        interestPic2.topAnchor.constraintEqualToAnchor(view3.topAnchor, constant: 35).active = true
        interestPic2.widthAnchor.constraintEqualToAnchor(view3.widthAnchor, multiplier: 0.18).active = true
        interestPic2.heightAnchor.constraintEqualToAnchor(view3.heightAnchor, multiplier: 0.5).active = true
        interestPic2.contentMode = UIViewContentMode.ScaleAspectFit
        print(interestPic2)
        return interestPic2
    }
    
    func setupInterestPic3(interestPic3: UIImageView) -> UIImageView {
        interestPic3.translatesAutoresizingMaskIntoConstraints = false
        interestPic3.leftAnchor.constraintEqualToAnchor(interestPic2.rightAnchor, constant: 2).active = true
        interestPic3.topAnchor.constraintEqualToAnchor(view3.topAnchor, constant: 35).active = true
        interestPic3.widthAnchor.constraintEqualToAnchor(view3.widthAnchor, multiplier: 0.18).active = true
        interestPic3.heightAnchor.constraintEqualToAnchor(view3.heightAnchor, multiplier: 0.5).active = true
        interestPic3.contentMode = UIViewContentMode.ScaleAspectFit
        print(interestPic3)
        return interestPic3
    }
    
    func setupInterestPic4(interestPic4: UIImageView) -> UIImageView {
        interestPic4.translatesAutoresizingMaskIntoConstraints = false
        interestPic4.leftAnchor.constraintEqualToAnchor(interestPic3.rightAnchor, constant: 2).active = true
        interestPic4.topAnchor.constraintEqualToAnchor(view3.topAnchor, constant: 35).active = true
        interestPic4.widthAnchor.constraintEqualToAnchor(view3.widthAnchor, multiplier: 0.18).active = true
        interestPic4.heightAnchor.constraintEqualToAnchor(view3.heightAnchor, multiplier: 0.5).active = true
        interestPic4.contentMode = UIViewContentMode.ScaleAspectFit
        print(interestPic4)
        return interestPic4
    }
    
    func setupInterestPic5(interestPic5: UIImageView) -> UIImageView {
        interestPic5.translatesAutoresizingMaskIntoConstraints = false
        interestPic5.leftAnchor.constraintEqualToAnchor(interestPic4.rightAnchor, constant: 2).active = true
        interestPic5.topAnchor.constraintEqualToAnchor(view3.topAnchor, constant: 35).active = true
        interestPic5.widthAnchor.constraintEqualToAnchor(view3.widthAnchor, multiplier: 0.18).active = true
        interestPic5.heightAnchor.constraintEqualToAnchor(view3.heightAnchor, multiplier: 0.5).active = true
        interestPic5.contentMode = UIViewContentMode.ScaleAspectFit
        print(interestPic5)
        return interestPic5
    }
    
    func setupBioLabelImage(bioLabelImage: UIImageView) -> UIImageView {
        bioLabelImage.translatesAutoresizingMaskIntoConstraints = false
        bioLabelImage.leadingAnchor.constraintEqualToAnchor(view4.leadingAnchor, constant: 0).active = true
        bioLabelImage.topAnchor.constraintEqualToAnchor(view4.topAnchor, constant: 5).active = true
        bioLabelImage.widthAnchor.constraintEqualToAnchor(view4.widthAnchor, multiplier: 1.0).active = true
        bioLabelImage.heightAnchor.constraintEqualToAnchor(view4.heightAnchor, multiplier: 0.4).active = true
        bioLabelImage.contentMode = UIViewContentMode.ScaleAspectFit
        print(bioLabelImage)
        return bioLabelImage
    }
    
    func setupEditButton2(edit2: UIButton) -> UIButton {
        edit2.translatesAutoresizingMaskIntoConstraints = false
        edit2.trailingAnchor.constraintEqualToAnchor(view4.trailingAnchor, constant: -15).active = true
        edit2.topAnchor.constraintEqualToAnchor(view4.topAnchor, constant: 25).active = true
        edit2.widthAnchor.constraintEqualToAnchor(bioLabelImage.widthAnchor, multiplier: 0.12).active = true
        edit2.heightAnchor.constraintEqualToAnchor(bioLabelImage.heightAnchor, multiplier: 0.35).active = true
        edit2.contentMode = UIViewContentMode.ScaleAspectFit
        print(edit2)
        return edit2
    }

    func setupBioTextField(bioTextField: UITextView) -> UITextView{
        bioTextField.translatesAutoresizingMaskIntoConstraints = false
        bioTextField.leadingAnchor.constraintEqualToAnchor(view4.leadingAnchor, constant: 10).active = true
        bioTextField.topAnchor.constraintEqualToAnchor(bioLabelImage.bottomAnchor, constant: -7.0).active = true
        bioTextField.rightAnchor.constraintEqualToAnchor(view4.rightAnchor, constant: -10).active = true
        bioTextField.heightAnchor.constraintEqualToAnchor(view4.heightAnchor, multiplier: 0.45).active = true
        bioTextField.contentMode = UIViewContentMode.ScaleAspectFit
        print(bioTextField)
        return bioTextField
    }
    
    func setupPromoLabel(promoCodelabel: UILabel) -> UILabel{
        promoCodelabel.translatesAutoresizingMaskIntoConstraints = false
        promoCodelabel.leadingAnchor.constraintEqualToAnchor(bioTextField.leadingAnchor, constant: 10).active = true
        promoCodelabel.topAnchor.constraintEqualToAnchor(bioTextField.bottomAnchor, constant: 8).active = true
        promoCodelabel.widthAnchor.constraintEqualToAnchor(view4.widthAnchor, multiplier: 0.3).active = true
        promoCodelabel.heightAnchor.constraintEqualToAnchor(view4.heightAnchor, multiplier: 0.15).active = true
        promoCodelabel.contentMode = UIViewContentMode.ScaleAspectFit
        print(promoCodelabel)
        return promoCodelabel
    }
    
    func setupPromoTextBox(promoCodeTextBox: UITextField) -> UITextField {
        promoCodeTextBox.translatesAutoresizingMaskIntoConstraints = false
        promoCodeTextBox.leadingAnchor.constraintEqualToAnchor(promoCodeLabel.trailingAnchor, constant: 0).active = true
        promoCodeTextBox.topAnchor.constraintEqualToAnchor(promoCodeLabel.topAnchor).active = true
        promoCodeTextBox.widthAnchor.constraintEqualToAnchor(view4.widthAnchor, multiplier: 0.28).active = true
        promoCodeTextBox.heightAnchor.constraintEqualToAnchor(promoCodeLabel.heightAnchor, multiplier: 0.83).active = true
        promoCodeTextBox.contentMode = UIViewContentMode.ScaleAspectFit
        let myColor : UIColor = UIColor( red: 1.0, green: 0, blue:0, alpha: 1.0 )
        promoCodeTextBox.layer.borderColor = myColor.CGColor
        print(promoCodeTextBox)
        return promoCodeTextBox
    }
    
    func setupSubmitButton (submit: UIButton) -> UIButton {
        submit.translatesAutoresizingMaskIntoConstraints = false
        submit.leadingAnchor.constraintEqualToAnchor(promoCodeTextBox.trailingAnchor, constant: 6).active = true
        submit.topAnchor.constraintEqualToAnchor(promoCodeLabel.topAnchor).active = true
        submit.widthAnchor.constraintEqualToAnchor(promoCodeLabel.widthAnchor, multiplier: 0.7).active = true
        submit.heightAnchor.constraintEqualToAnchor(promoCodeLabel.heightAnchor, multiplier: 0.95).active = true
        submit.contentMode = UIViewContentMode.ScaleAspectFit
        print(submit)
        return submit
    }
    
    
    
    
    func textViewShouldBeginEditing(bioTextField: UITextView) -> Bool {
        return false
    }
    
    func textViewDidBeginEditing(bioTextField: UITextView) {
        if bioTextField.text == "Please tell us something about yourself." {
            bioTextField.text = ""
        }
    }
    
    
    

    
    
    
    var constraintsUpdate = false
    override func updateViewConstraints() {
        super.updateViewConstraints()
        if !constraintsUpdate {
            setupView0(view0)
            setupSomeonewLabel0(someonewLabel0)
  //          setupSomonewHeader(someonewHeader)
            setupView2(view2)
            setupView3(view3)
            setupView4(view4)
            profilePicTemp(profilePic)
            setupNameLabel(nameLabel)
            setupInterestLabelImage(interestLabelImage)
            setupInterestPic1(interestPic1)
            setupInterestPic2(interestPic2)
            setupInterestPic3(interestPic3)
            setupInterestPic4(interestPic4)
            setupInterestPic5(interestPic5)
            setupBioLabelImage(bioLabelImage)
            setupBioTextField(bioTextField)
            setupPromoLabel(promoCodeLabel)
            setupPromoTextBox(promoCodeTextBox)
            setupSubmitButton(submit)
            setupEditButton1(edit1)
            setupEditButton2(edit2)
            textViewShouldBeginEditing(bioTextField)
     //       textViewDidBeginEditing(bioTextField)
            constraintsUpdate = true
        }
    }
    
    
   // func setupProfilePic(){
     //   profilePic.centerXAnchor.constraintEqualToAnchor(view2.centerXAnchor).active = true
       // profilePic.topAnchor.constraintEqualToAnchor(view2.topAnchor, constant: 10).active = true
        //profilePic.widthAnchor.constraintEqualToAnchor(view2., multiplier: <#T##CGFloat#>)
    
    // }
    
    
    
    // ----------------------------------------------------------
    
    
    /**
    @IBAction func doneButton(sender: UIButton) {
        //To assure user that they can get out of Bio text field
        self.bioTextBox.resignFirstResponder()
    }
    
 
     let imagePicker = UIImagePickerController()
     
    */
    
    /**
    
    func noCamera(){
        let alertVC = UIAlertController(
            title: "No Camera",
            message: "Sorry, this device has no camera",
            preferredStyle: .Alert)
        let okAction = UIAlertAction(
            title: "OK",
            style:.Default,
            handler: nil)
        alertVC.addAction(okAction)
        presentViewController(
            alertVC,
            animated: true,
            completion: nil)
    }
     
    */
    
    /**
    @IBAction func chooseProfileNameButton(sender: UIButton) {
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .PhotoLibrary
        
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    */

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Do any additional setup after loading the view, typically from a nib.
        


        
        
//        func addProfilePic() {
//            let heightOfPro = view2.heightAnchor
//                let widthOfPro = view2.widthAnchor
//
//            ProfileImageView = UIImageView(frame: CGRect(x: view2.centerXAnchor, y: view2.topAnchor, width/: widthOfPro, height: heightOfPro))
            
      //      view.addSubview(ProfileImageView)
      //  }
        
    //    imageView.frame = CGrectMake(x, y, .frame.width*0.2,50);
        
        
        
//        func addView1() {
//            let heightOfView1 = SCREEN_SIZE.height / 9
//            let widthOfView1 = SCREEN_SIZE.width
//
//            view1 = UIView(frame: CGRect(x: 0, y: 0, width: widthOfView1, height: heightOfView1))
//            view1.backgroundColor = UIColor(patternImage: imageAppHead!)
//            view1.contentMode = UIViewContentMode.ScaleAspectFit
//
//
//            view.addSubview(view1)
//        }
        
//        let headImage = UIImage(named: "app_head") as UIImage?
//        func addHead() {
//            let heightOfHead = SCREEN_SIZE.height / 8.7
//            let widthOfHead = SCREEN_SIZE.width
//
//            Head = UIImageView(frame: CGRect(x: 0, y: 0, width: widthOfHead, height: heightOfHead))
//            Head.backgroundColor = UIColor(patternImage: headImage!)
//            Head.contentMode = UIViewContentMode.ScaleAspectFit
//
//            view.addSubview(Head)
//        }
        
        
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        let image1 = UIImage(named: "submit") as UIImage?
        button.setImage(image1, forState: .Normal)
        button.addTarget(self, action: #selector(buttonAction), forControlEvents: .TouchUpInside)
        self.view4.addSubview(button)
        
        
        
        
            setupView0(view0)
            setupSomeonewLabel0(someonewLabel0)        
        //           addHead()
 //           addView1()
            setupView2(view2)
            setupView3(view3)
            setupView4(view4)
   //         setupSomonewHeader(someonewHeader)

            setupNameLabel(nameLabel)
            setupInterestLabelImage(interestLabelImage)

            setupInterestPic1(interestPic1)
            setupInterestPic2(interestPic2)
            setupInterestPic3(interestPic3)
            setupInterestPic4(interestPic4)
            setupInterestPic5(interestPic5)
            setupBioLabelImage(bioLabelImage)

            setupBioTextField(bioTextField)
            setupPromoLabel(promoCodeLabel)
            setupPromoTextBox(promoCodeTextBox)
            profilePicTemp(profilePic)
            setupSubmitButton(submit)
            setupEditButton1(edit1)
            setupEditButton2(edit2)
        
        
 //           textViewShouldBeginEditing(bioTextField)
 //           textViewDidBeginEditing(bioTextField)
        
        //To make all images to be added to the profile page with circular layout.
        
       /**
        imagePicker.delegate = self
                     Attempt to make any imported profile image fit the circular layout specified below
         
        profilePic = UIImageView(frame: CGRectMake(0, 0, self.view.bounds.width * 0.19 , self.view.bounds.height * 0.1))
        profilePic.layer.borderWidth = 1.0
        profilePic.layer.masksToBounds = false
        profilePic.layer.borderColor = UIColor.blackColor().CGColor
        profilePic.layer.cornerRadius = profilePic.frame.height/2
        profilePic.clipsToBounds = true
      **/
        
        //To make all images to be added to the profile page with circular layout.
        
        profilePic.layer.borderWidth = 3
        profilePic.layer.masksToBounds = true
        profilePic.layer.borderColor = UIColor.redColor().CGColor
        profilePic.layer.cornerRadius = profilePic.frame.size.width/2
        profilePic.clipsToBounds = true
        
        bioTextField.layer.borderColor = UIColor.lightGrayColor().CGColor
        bioTextField.layer.borderWidth = 1.3
        
        promoCodeTextBox.layer.borderColor = UIColor.redColor().CGColor
        promoCodeTextBox.layer.borderWidth = 1
        
        
    
       // profilePic.layer.cornerRadius = profilePic.frame.size.width/2
       // profilePic.clipsToBounds = true
        
        interestPic1.layer.cornerRadius = interestPic1.frame.size.width/2
        interestPic1.clipsToBounds = true
        
        interestPic2.layer.cornerRadius = interestPic2.frame.size.width/2
        interestPic2.clipsToBounds = true
        
        interestPic3.layer.cornerRadius = interestPic3.frame.size.width/2
        interestPic3.clipsToBounds = true
        
        interestPic4.layer.cornerRadius = interestPic4.frame.size.width/2
        interestPic4.clipsToBounds = true
        
        interestPic5.layer.cornerRadius = interestPic5.frame.size.width/2
        interestPic5.clipsToBounds = true
        
    }
    
    func buttonAction(sender: UIButton!) {
        print("Button tapped")
    }
    
    
    
    /**
    
    // UIImagePickerControllerDelegate Methods
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            profilePic.contentMode = .ScaleAspectFit
            profilePic.image = pickedImage
        }
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    */

    //To hide keyboard once done typing in Bio
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?){
        view.endEditing(true)
        super.touchesBegan(touches, withEvent: event)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //Dispose of any resources that can be recreated.
    }
    
}
