//
//  ViewController.swift
//  youtubeAPi
//
//  Created by Sufail Khatib on 09/09/20.
//  Copyright © 2020 Sufail Khatib. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var model = Model()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        model.getVideos()
        print("test")
    }


}

