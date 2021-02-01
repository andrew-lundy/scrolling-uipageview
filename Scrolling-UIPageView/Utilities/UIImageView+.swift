//
//  UIImageView+.swift
//  Scrolling-UIPageView
//
//  Created by Andrew Lundy on 1/31/21.
//

import Foundation
import UIKit

extension UIImageView {
    func makeCircle() {
        self.clipsToBounds = true
        self.layer.cornerRadius = self.frame.height / 2
    }
}
