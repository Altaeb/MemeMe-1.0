//
//  MemeMeViewController.swift
//  MemeMe 1.0
//
//  Created by Abdalfattah Altaeb on 4/5/20.
//  Copyright © 2020 Abdalfattah Altaeb. All rights reserved.
//

import UIKit

class MemeMeViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    //MARK: IBoutlets
    
    @IBOutlet weak var imagePickerView: UIImageView!
    @IBOutlet weak var cameraButton: UIBarButtonItem!
    @IBOutlet weak var shareButton: UIBarButtonItem!
    @IBOutlet weak var topTextField: UITextField!
    @IBOutlet weak var bottomTextField: UITextField!
    @IBOutlet weak var navBar: UIToolbar!
    @IBOutlet weak var toolBar: UIToolbar!
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    // MARK: UIImagePickerController Functions
    
    @IBAction func pickAnImageFromAlbum(_ sender: AnyObject) {
        //To pick an image from Photos Albums
        presentImagePickerWith(sourceType: UIImagePickerControllerSourceType.photoLibrary)
    }
    
    
    @IBAction func pickAnImageFromCamera (sender: AnyObject) {
        // To take a image directly from camera
        presentImagePickerWith(sourceType: UIImagePickerControllerSourceType.camera)
    }
    
    
    // MARK: UIImagePickerController Delegates
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        // To select an image and set it to imageView
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
            
            imagePickerView.image = image
            self.view.layoutIfNeeded()
            setZoomScaleForImage(scrollViewSize: scrollView.bounds.size)
            scrollView.zoomScale = scrollView.minimumZoomScale
            centerImage()
            self.dismiss(animated: true, completion: nil)
        }
    }
    

}

