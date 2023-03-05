//
//  UIView+Extensions.swift
//  CoreKit
//
//  Created by ferhatiltas on 5.03.2023.
//

import UIKit

public extension UIView {
    @discardableResult
    func fromXib<T: UIView>() -> T? {
        guard let contentView = Bundle(for: type(of: self)).loadNibNamed(String(describing: type(of: self)), owner: self, options: nil)?.first as? T else { return nil }
        self.addSubview(contentView)
        contentView.translatesAutoresizingMaskIntoConstraints = false
        return contentView
    }
}

