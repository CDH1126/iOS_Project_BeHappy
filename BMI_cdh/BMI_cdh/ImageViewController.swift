//
//  ViewController.swift
//  ImageView
//
//  Created by Ho-Jeong Song on 2021/11/11.
//

import UIKit

class ImageViewController: UIViewController {
    var isZoom = false
    var imgOn: UIImage?
    var imgOff: UIImage?

    @IBOutlet var imgView: UIImageView!
    @IBOutlet var btnResize: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        imgOn = UIImage(named: "smile.png")
        imgOff = UIImage(named: "sad.png")
        
        imgView.image = imgOn
    }

    @IBAction func btnResizeImage(_ sender: UIButton) {
        let scale: CGFloat = 1.5
        var newWidth: CGFloat, newHeight: CGFloat
        
        if (isZoom) {   // true
            newWidth = imgView.frame.width / scale
            newHeight = imgView.frame.height / scale
            
            btnResize.setTitle("확대", for: .normal)
        }
        else {  // false
            newWidth = imgView.frame.width * scale
            newHeight = imgView.frame.height * scale
            
            btnResize.setTitle("축소", for: .normal)
        }
        
        imgView.frame.size = CGSize(width: newWidth, height: newHeight)
        
        isZoom = !isZoom
    }
    
    @IBAction func switchImageOnOff(_ sender: UISwitch) {
        if sender.isOn {
            imgView.image = imgOn
        } else {
            imgView.image = imgOff
        }
    }
}

