//
//  ConversionView.swift
//  AssessmentTask
//
//  Created by Oko-osi Korede on 03/02/2024.
//

import UIKit

class ConversionView: UIView {

    let fromButton = UIButton()
    let swapButton = UIButton()
    let toButton = UIButton()
    
    let fromTextField = UITextField()
    let toTextField = UITextField()
    
    let topView = TopView()
    let bottomView = BottomView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemBackground
        addSubview([topView, bottomView])
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        configureSubViews()
        topView.buttonViews
            .configureNewSubView(leftSubView: fromButton,
                                 leftSizeMulitplier: 0.65,
                                 middleSubViews: swapButton,
                                 middleSizeMultiplier: 0.8,
                                 rightSubView: toButton,
                                 rightSizeMultiplier: 0.65)
        
        topView.textFields
            .configureNewSubView(leftSubView: fromTextField,
                                 leftSizeMulitplier: 0.8,
                                 rightSubView: toTextField,
                                 rightSizeMultiplier: 0.8)
        fromTextField.borderWidth = 1
        fromTextField.borderColor = UIColor.black.cgColor
        fromTextField.cornerRadius = 12
        
        toTextField.borderWidth = 1
        toTextField.borderColor = UIColor.black.cgColor
        
        fromButton.configureButtonStyle(title: "From", iconName: "arrow.down")
        toButton.configureButtonStyle(title: "To", iconName: "arrow.down")
        swapButton.configureButtonStyle(iconName: "arrow.left.arrow.right")
        
        fromTextField.addLeftPadding(padding: 5)
        toTextField.addLeftPadding(padding: 5)
    }
    
    func configureSubViews() {
        topView.setPinConstraint(top: topAnchor, 
                                 trailing: trailingAnchor,
                                 leading: leadingAnchor)
        topView.configureSizeConstraints(heightConstraint: heightAnchor,
                                         heightMultiplier: 0.38)
        
        bottomView.setPinConstraint(trailing: trailingAnchor, 
                                    bottom: bottomAnchor,
                                    leading: leadingAnchor)
        bottomView.configureSizeConstraints(heightConstraint: heightAnchor,
                                         heightMultiplier: 0.62)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
