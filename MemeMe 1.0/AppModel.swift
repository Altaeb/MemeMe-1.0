//
//  AppModel.swift
//  MemeMe 1.0
//
//  Created by Abdalfattah Altaeb on 4/5/20.
//  Copyright © 2020 Abdalfattah Altaeb. All rights reserved.
//
import UIKit

struct AppModel {
    
    static let defaultTopTextFieldText = "TOP"
    static let defaultBottomTextFieldText = "BOTTOM"
    static let fontsTableViewSegueIdentifier = "fontsTableView"
    static let fontsCellReuseIdentifier = "fontsCell"
    
    struct alert {
        
        static let alertTitle = "Discard"
        static let alertMessage = "Are you sure you want to discard your changes?"
    }
    
    static let memeTextAttributes : [NSAttributedString.Key: Any] = [
    NSAttributedString.Key.strokeColor: UIColor.black,
    NSAttributedString.Key.foregroundColor: UIColor.white,
    NSAttributedString.Key.font: UIFont(name: "HelveticaNeue-CondensedBlack", size: 40)!,
    NSAttributedString.Key.strokeWidth: -1.0]
    
    static let fontsAvailable = UIFont.familyNames
    static var currentFontIndex: Int = -1
    static var selectedFont: String = ""
    
    
    
}
