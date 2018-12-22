//
//  SecondView.swift
//  Test
//
//  Created by Андрей Денисов on 12/21/18.
//  Copyright © 2018 Андрей Денисов. All rights reserved.
//

import UIKit

class SecondView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        BannerController.showTopBanner(with: "Test1", type: .alert)
    }

}

