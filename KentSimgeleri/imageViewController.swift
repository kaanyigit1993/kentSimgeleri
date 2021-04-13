//
//  imageViewController.swift
//  KentSimgeleri
//
//  Created by KAAN YİĞİT on 14.04.2021.
//

import UIKit

class imageViewController: UIViewController {

    var selectedLandmarkImage = UIImage()
    var selectedLandmarkName = ""
    
    @IBOutlet weak var landmarkLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        landmarkLabel.text = selectedLandmarkName
        imageView.image = selectedLandmarkImage
       
    }
    

    

}
