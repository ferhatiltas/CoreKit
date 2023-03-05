//
//  CheckRegexText.swift
//  CoreKit
//
//  Created by ferhatiltas on 5.03.2023.
//

import UIKit

public struct CheckRegexText {
    public static let shared: CheckRegexText = .init()

    public func isValidEmail(email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: email)
    }

    public func isValidUsername(username: String) -> Bool {
        do {
            let regex = try NSRegularExpression(pattern: "^[0-9a-zA-Z\\_]{3,18}$", options: .caseInsensitive)
            if regex.matches(in: username, options: [], range: NSMakeRange(0, username.count)).count > 0 { return true }
        }
        catch {}
        return false
    }

    public func isValidPassword(password: String) -> Bool {
        let passwordRegex = "^[0-9a-zA-Z!@#$%^&*()\\-_=+{}|?>.<,:;~`’]{3,15}$"
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", passwordRegex)
        return passwordTest.evaluate(with: password)
    }
}
