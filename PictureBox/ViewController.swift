//
//  ViewController.swift
//  PictureBox
//
//  Created by EMBERMIND on 2023/02/20.
//

import UIKit

class ViewController: UIViewController {
    var imgIndex:Int = 1
    var viewImg: UIImage?
    @IBOutlet var imgView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viewImg = UIImage(named: "1.jpeg")
        imgView.image = viewImg
    }
    @IBAction func btnPrevious(_ sender: UIButton) {
        imgIndex = imgIndex - 1
        if(imgIndex < 1){
            imgIndex = 1
        }
        let imgName = String(imgIndex) + ".jpeg"
        viewImg = UIImage(named: imgName)
        imgView.image = viewImg
    }
    @IBAction func btnNext(_ sender: UIButton) {
        imgIndex = imgIndex + 1
        if(imgIndex > 2){
            imgIndex = 2
        }
        let imgName = String(imgIndex) + ".jpeg"
        viewImg = UIImage(named: imgName)
        imgView.image = viewImg
    }
    
}

