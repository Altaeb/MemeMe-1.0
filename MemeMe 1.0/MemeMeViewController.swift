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
    @IBOutlet weak var pickerImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func pickAnImage(_ sender: Any) {
        let pickerController = UIImagePickerController()
        pickerController.delegate = self
        self.present(pickerController, animated: true, completion: nil)
    }
    

}

