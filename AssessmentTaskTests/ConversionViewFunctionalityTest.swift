//
//  ConversionViewFunctionalityTest.swift
//  AssessmentTaskTests
//
//  Created by Oko-osi Korede on 04/02/2024.
//

import XCTest
@testable import AssessmentTask
import RxSwift
import RxCocoa

final class ConversionViewFunctionalityTest: XCTestCase {
    
    
    var viewController: ViewController!
    var disposeBag: DisposeBag!
    
    override func setUp() {
        super.setUp()
        
        // Set up your view controller and dispose bag for each test
        viewController =  ViewController() // Replace "YourViewControllerIdentifier" with your actual view controller identifier
        viewController.loadViewIfNeeded()
        disposeBag = DisposeBag()
    }
    
    override func tearDown() {
        // Clean up after each test
        viewController = nil
        disposeBag = nil
        super.tearDown()
    }
    
//    func testButtonTap() {
//        // Given
//        let expectation = self.expectation(description: "pickerViewController is nil")
//        XCTAssertNil(viewController.pickerViewController)
//        XCTAssertNil(viewController.pickerView)
//        // When
////        viewController.conversionView.fromButton.sendActions(for: .touchUpInside)
//        
//        // Then
////        viewController.conversionView.fromButton.rx.tap
////            .subscribe(onNext: { [weak self] in
////                guard let self else { return }
////                // Assert whatever you expect to happen on button tap
////                XCTAssertNil(viewController.pickerViewController)
////                XCTAssertNil(viewController.pickerView)
////                expectation.fulfill()
////            })
////            .disposed(by: disposeBag)
////        
////        waitForExpectations(timeout: 2.0) { error in
////            XCTAssertNil(error, "Expectation not fulfilled: \(error?.localizedDescription ?? "")")
////        }
//        //        waitForExpectations(timeout: 1.0) { error in
//        //            XCTAssertNil(error, "Expectation not fulfilled: \(error?.localizedDescription ?? "")")
//        //        }
//        
//    }
    
    func testFromButtonClicked() {
        // Given (Arrange)
        
        // When (Act)
        
        // Then (assert)
    }
}
