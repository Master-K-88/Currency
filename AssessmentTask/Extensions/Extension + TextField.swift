//
//  Extension + TextField.swift
//  AssessmentTask
//
//  Created by Oko-osi Korede on 04/02/2024.
//

import UIKit

extension UITextField {
    func addLeftPadding(padding: CGFloat = 10) {
            // Set the desired left padding value
            let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: padding, height: frame.size.height))

            // Set the padding view as the left view of the text field
            leftView = paddingView
            leftViewMode = .always
        }
}
