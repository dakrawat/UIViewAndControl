//
//  ViewController.swift
//  UIViewAndControl
//
//  Created by Deepak on 9/20/19.
//  Copyright © 2019 Deepak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageShadowView: UIView!
    
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var `switch`: UISwitch!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        //MARK: make circular btn
        button.layer.cornerRadius = button.bounds.size.width * 0.5
        //shadow properties
        button.layer.shadowColor = UIColor.red.cgColor //color
        button.layer.shadowOpacity = 1  //how much clear it see
        button.layer.shadowOffset = CGSize(width: 0, height: -3) // where the shadow tilted behind
        button.layer.shadowRadius = 5 // how big shadow is
        // border properties
        button.layer.borderColor = UIColor.blue.cgColor
        button.layer.borderWidth = 5
        
        
        // MARK: make circular imageview
        imageView.layer.cornerRadius = imageView.bounds.size.width * 0.5
         //shadow properties will not show because image will be drawn outside corner boundary so we add a new uiview behind imageview
        imageView.layer.shadowRadius = 5
        imageView.layer.shadowOffset = CGSize(width: 3, height: 0)
        imageView.layer.shadowOpacity = 1
        imageView.layer.shadowColor = UIColor.blue.cgColor
        
        imageShadowView.layer.cornerRadius = imageShadowView.bounds.width * 0.5
        imageShadowView.layer.shadowColor = UIColor.red.cgColor
        imageShadowView.layer.shadowOpacity = 1
        imageShadowView.layer.shadowOffset = CGSize.zero
        imageShadowView.layer.shadowRadius = 10
        
        // border properties
        imageView.layer.borderColor = UIColor.blue.cgColor
        imageView.layer.borderWidth = 3.5
        

        //MARK: make circular label
        label.layer.masksToBounds = true //needed for making label circular
        label.layer.cornerRadius = label.bounds.size.width * 0.5
        //shadow if masksToBounds is true shadow will not happen
        label.layer.shadowRadius = 10
        label.layer.shadowOffset = CGSize.zero
        label.layer.shadowOpacity = 1
        label.layer.shadowColor = UIColor.blue.cgColor
        
        label.shadowColor = UIColor.red
        label.shadowOffset = CGSize(width: 0, height: 5)
        //border
        label.layer.borderWidth = 10
        label.layer.borderColor = UIColor.red.cgColor
        
    }

}

