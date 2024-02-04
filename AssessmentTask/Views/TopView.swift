//
//  TopView.swift
//  AssessmentTask
//
//  Created by Oko-osi Korede on 03/02/2024.
//

import UIKit

class TopView: UIView {
    
    let contentView = UIView()
    let buttonViews = ConversionDetailComponent()
    let textFields = ConversionDetailComponent()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
//        backgroundColor = .green
        addSubview(contentView)
        contentView.addSubview([buttonViews, textFields])
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
//        contentView.backgroundColor = .orange
        contentView.setPinConstraint(trailing: trailingAnchor, bottom: bottomAnchor, leading: leadingAnchor)
        contentView.configureSizeConstraints(heightConstraint: heightAnchor,
                                              heightMultiplier: 0.75)
        textFields.setPinConstraint(trailing: contentView.trailingAnchor,
                                    bottom: contentView.bottomAnchor,
                                    leading: contentView.leadingAnchor)
//        textFields.configureSizeConstraints(heightConstraint: contentView.heightAnchor,
//                                             heightMultiplier: 0.5)
        textFields.configureSize(height: 52)
        buttonViews.setPinConstraint(trailing: contentView.trailingAnchor,
                                     bottom: textFields.topAnchor,
                                     leading: contentView.leadingAnchor,
                                     paddingBottom: -10
        )
//        buttonViews.configureSizeConstraints(heightConstraint: contentView.heightAnchor,
//                                             heightMultiplier: 0.5)
        buttonViews.configureSize(height: 52)
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
