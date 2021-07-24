//
//  UIColor+WLEmptyState.swift
//  WLEmptyState
//
//  Created by Jorge Ovalle on 09/11/20.
//

import UIKit

extension UIColor {

    static var accent: UIColor = {
        if #available(iOS 13.0, *) {
            return UIColor { traitCollection in
                traitCollection.userInterfaceStyle == .dark ? .white : .black
            }
        } else {
            return .black
        }
    }()
    
    static var background: UIColor {
        if #available(iOS 13.0, *) {
            return .systemBackground
        } else {
            return .white
        }
    }

}
