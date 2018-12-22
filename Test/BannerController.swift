//
//  BannerController.swift
//  VideoAdviser
//
//  Created by Andrew on 12/20/18.
//  Copyright © 2018 softteco. All rights reserved.
//
import UIKit
import SwiftMessages

class BannerController {
    private class func showBanner(withText text: String) {
        SwiftMessages.hideAll()
        //View
        let view = configView(withText: text)
        //Config
        var config = SwiftMessages.defaultConfig
        config.duration = .seconds(seconds: 10)
        //Show
        //DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()) {
            SwiftMessages.show(config: config, view: view)
        //}
    }
    
    private class func configView(withText text: String) -> MessageView {
        let view: MessageView
        view = try! SwiftMessages.viewFromNib()
        view.configureContent(body: text)
        view.configureTheme(backgroundColor: UIColor.red, foregroundColor: UIColor.white)
        view.bodyLabel?.textAlignment = .center
        view.bodyLabel?.textColor = .black
        view.button?.isHidden = true
        view.iconImageView?.isHidden = true
        view.iconLabel?.isHidden = true
        view.titleLabel?.isHidden = true
        return view
    }
    
    class func showTopBanner(with text: String, type: TopBannerType) {
        switch type {
        case .alert:
            showBanner(withText: text)
        }
    }
    
}

public enum TopBannerType {
    case alert
}
