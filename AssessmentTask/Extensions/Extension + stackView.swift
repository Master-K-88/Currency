//
//  Extension + stackView.swift
//  AssessmentTask
//
//  Created by Oko-osi Korede on 03/02/2024.
//

import UIKit

extension UIStackView {
    func addArrangedSubview(_ views: [UIView]) {
        views.forEach { view in
            view.translatesAutoresizingMaskIntoConstraints = false
            addArrangedSubview(view)
        }
    }
    
    func configureStackView(distribution: UIStackView.Distribution, 
                            spacing: CGFloat,
                            axis: NSLayoutConstraint.Axis) {
        translatesAutoresizingMaskIntoConstraints = false
        self.distribution = distribution
        self.spacing = spacing
        self.axis = axis
    }
}
