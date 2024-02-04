//
//  ConversionDetailComponent.swift
//  AssessmentTask
//
//  Created by Oko-osi Korede on 03/02/2024.
//

import UIKit

class ConversionDetailComponent: UIView {
    
    let leftView = UIView()
    let middleView = UIView()
    let rightView = UIView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview([leftView, middleView, rightView])
    }
    
    func configureNewSubView(leftSubView: UIView? = nil,
                             leftSizeMulitplier: CGFloat = 1,
                             middleSubViews: UIView? = nil,
                             middleSizeMultiplier: CGFloat = 1,
                             rightSubView: UIView? = nil,
                             rightSizeMultiplier: CGFloat = 1
    )
    {
        if let leftSubView {
            leftView.addSubview(leftSubView)
            leftSubView.setPinConstraint(trailing: leftView.trailingAnchor,
                                         bottom: leftView.bottomAnchor,
                                         paddingLeft: -10)
//            leftSubView.centerView(on: leftView, axis: .vertical)
            leftSubView.configureSizeConstraints(widthConstraint: leftView.widthAnchor,
                                                 widthMultiplier: leftSizeMulitplier)
            leftSubView.configureSize(height: 50)
        }
        if let middleSubViews {
            middleView.addSubview(middleSubViews)
            middleSubViews.centerView(on: middleView, axis: .horizontal)
            middleSubViews.setPinConstraint(bottom: middleView.bottomAnchor)
            middleSubViews.configureSizeConstraints(widthConstraint: middleView.widthAnchor, widthMultiplier: middleSizeMultiplier)
            middleSubViews.configureSize(height: 50)
        }
        
        if let rightSubView {
            rightView.addSubview(rightSubView)
            rightSubView.setPinConstraint(bottom: bottomAnchor,
                                          leading: rightView.leadingAnchor,
                                          paddingLeft: 10)
//            rightSubView.centerView(on: leftView, axis: .vertical)
            rightSubView.configureSizeConstraints(widthConstraint: rightView.widthAnchor,
                                                  widthMultiplier: rightSizeMultiplier)
            rightSubView.configureSize(height: 50)
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        leftView.configureSizeConstraints(widthConstraint: widthAnchor, 
                                          widthMultiplier: 0.37)
        middleView.configureSizeConstraints(widthConstraint: widthAnchor,
                                            widthMultiplier: 0.26)
        rightView.configureSizeConstraints(widthConstraint: widthAnchor,
                                           widthMultiplier: 0.37)
//        middleView.backgroundColor = .green
//        leftView.backgroundColor = .gray
//        rightView.backgroundColor = .systemPink
        configureLayout()
    }
    
    func configureLayout() {
        layoutLeftView()
        layoutMiddleView()
        layoutRightView()
    }
    
    func layoutLeftView() {
        leftView.setPinConstraint(top: topAnchor, 
                                  bottom: bottomAnchor,
                                  leading: leadingAnchor)
    }
    
    func layoutMiddleView() {
        middleView.setPinConstraint(top: topAnchor, 
                                    bottom: bottomAnchor,
                                    leading: leftView.trailingAnchor)
    }
    
    func layoutRightView() {
        rightView.setPinConstraint(top: topAnchor,
                                   trailing: trailingAnchor,
                                   bottom: bottomAnchor)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
