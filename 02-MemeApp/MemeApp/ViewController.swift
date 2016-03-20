//
//  ViewController.swift
//  MemeApp
//
//  Created by Antonio Sejas on 20/3/16.
//  Copyright © 2016 Antonio Sejas. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imgChoosed: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(animated: Bool) {
//        cameraButton.enabled = UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.Camera)
    }
    
    @IBAction func actionPickImage(sender: AnyObject) {

        let pickerController = UIImagePickerController()
        pickerController.delegate = self
        presentViewController(pickerController, animated: true, completion: nil)
        
    }
    @IBAction func actionPickImageCamera(sender: AnyObject) {
        
        
    }
    
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        print("info: ",info)
        //UIImagePickerControllerMediaType
        //UIImagePickerControllerOriginalImage
        //UIImagePickerControllerReferenceURL
        //https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIImagePickerControllerDelegate_Protocol/index.html#//apple_ref/doc/constant_group/Editing_Information_Keys
        
        if let image = info["UIImagePickerControllerOriginalImage"] as? UIImage {
            imgChoosed.image = image
        }else{
            print("Error, returnin the image in didFinishPickingMediaWithInfo",info)
        }
        dismissViewControllerAnimated(true, completion: nil)
        
    }
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        
    }

    //textFieldDidBeginEditing
    //textFieldShouldReturn
    
//    let memeTextAttributes = [
//        NSStrokeColorAttributeName : //TODO: Fill in appropriate UIColor,
//        NSForegroundColorAttributeName : //TODO: Fill in UIColor,
//        NSFontAttributeName : UIFont(name: "HelveticaNeue-CondensedBlack", size: 40)!,
//        NSStrokeWidthAttributeName : //TODO: Fill in appropriate Float
//    ]

//    yourTextField.defaultTextAttributes = memeTextAttributes
//    yourOtherTextField.defaultTextAttributes = memeTextAttributes

}
