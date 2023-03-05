//
//  CustomAppColor.swift
//  CoreKit
//
//  Created by ferhatiltas on 5.03.2023.
//

import UIKit

public struct CustomAppColors {
    public static let shared = CustomAppColors()
    
    let primaryColor = UIColor(named: "PrimaryColor")
    let textFieldShadowColor = UIColor(named: "TextFieldShadowColor")
    let hintColor = UIColor(named: "HintColor")
    let blackTextColor = UIColor(named: "BlackTextColor")
    
    //MARK: - Toast Colors
    let toastSuccessBackgroundColor = UIColor(named: "ToastSuccessBackgroundColor")
    let toastSuccessBorderColor = UIColor(named: "ToastSuccessBorderColor")
    let toastFailBackgroundColor = UIColor(named: "ToastFailBackgroundColor")
    let toastFailBorderColor = UIColor(named: "ToastFailBorderColor")
}
