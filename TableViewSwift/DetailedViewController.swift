//
//  DetailedViewController.swift
//  TableViewSwift
//
//  Created by uxd on 6/2/20.
//  Copyright © 2020 uxd. All rights reserved.
//

import UIKit

class DetailedViewController: UIViewController {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var im1: UILabel!
    @IBOutlet weak var im2: UILabel!
    var str1: String!
    var str2 : String!
    var pic : UIImage!
    override func viewDidLoad() {
        super.viewDidLoad()
        im1.text = str1
        im2.text = str2
        img.image = pic
    }
}
