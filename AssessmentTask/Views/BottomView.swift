//
//  BottomView.swift
//  AssessmentTask
//
//  Created by Oko-osi Korede on 03/02/2024.
//

import UIKit

class BottomView: UIView {

    let detailButton = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(detailButton)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
//        backgroundColor = .purple
        detailButton.centerView(on: self, axis: .horizontal)
        detailButton.setPinConstraint(top: topAnchor, paddingTop: 5)
        detailButton.configureSize(width: 80, height: 50)
        detailButton.setTitle("Detail", for: .normal)
        detailButton.setTitleColor(.label, for: .normal)
        detailButton.backgroundColor = .systemBackground
        detailButton.borderWidth = 1
        detailButton.borderColor = UIColor.black.cgColor
        detailButton.cornerRadius = 10
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
