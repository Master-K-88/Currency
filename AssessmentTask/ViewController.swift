//
//  ViewController.swift
//  AssessmentTask
//
//  Created by Oko-osi Korede on 03/02/2024.
//

import RxSwift
import RxCocoa

class ViewController: UIViewController { 
    
    let conversionView = ConversionView()
    private let disposeBag = DisposeBag()
    private let viewModel = CurrencyConverterViewModel()
    
    var pickerView: UIPickerView?
    var pickerViewController: UIViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(conversionView)
        conversionView.pin(to: view)
        
        // Create an Observable for button taps
        let buttonTapObservable = conversionView.bottomView.detailButton.rx.tap
        let fromTextFieldObservable = conversionView.fromTextField.rx.text.orEmpty
            .debounce(.milliseconds(300), scheduler: MainScheduler.instance)
                        .distinctUntilChanged()
        let toTextField = conversionView.toTextField
        let fromButtonTapObservable = conversionView.fromButton.rx.tap
        let toButtonTapObservable = conversionView.toButton.rx.tap
        
        // Subscribe to the button tap event
        buttonTapObservable
            .subscribe(onNext: {
                print("Button tapped!")
                // You can perform any action here
            })
            .disposed(by: disposeBag)
        
        fromTextFieldObservable
            .subscribe(onNext: { newText in
                // Handle the updated text here
                print("From Text entered: \(newText)")
                toTextField.text = newText
            })
            .disposed(by: disposeBag)
        
        fromButtonTapObservable
            .subscribe(onNext: { [weak self] in
                guard let self else { return }
                print("fromButtonTapObservable tapped!")
                // You can perform any action here
                showCurrencies(button: conversionView.fromButton)
            })
            .disposed(by: disposeBag)
        
        toButtonTapObservable
            .subscribe(onNext: { [weak self] in
                guard let self else { return }
                print("toButtonTapObservable tapped!")
                // You can perform any action here
                showCurrencies(button: conversionView.toButton)
            })
            .disposed(by: disposeBag)
    }
    
}

extension ViewController {
    func showCurrencies(button: UIButton) {
        pickerView = UIPickerView()
        pickerViewController = UIViewController()
        pickerViewController?.preferredContentSize = CGSize(width: 250, height: 200)
        
        guard let pickerView,
              let pickerViewController else {
            return
        }
        // Bind data source to pickerView
        viewModel.currencies
            .bind(to: pickerView.rx.itemTitles) { _, element in
                return (element.value ?? "") + " " + (element.icon ?? "") // assuming "value" is the property to display in the pickerView
            }
            .disposed(by: disposeBag)
        
        pickerView.rx.modelSelected(ListItemInterface.self).subscribe(onNext: { selectedItems in
            guard let selectedItem = selectedItems.first else { return }
            
            
            // Access specific properties of the selected item
            let value = selectedItem.value ?? ""
            let icon = selectedItem.icon ?? ""
            // ... access other properties as needed
            button.setTitle("\(value) \(icon)", for: .normal)
        })
        .disposed(by: disposeBag)
        
        pickerViewController.view.addSubview(pickerView)
        pickerView.pin(to: pickerViewController.view)
        
        let alertController = UIAlertController(title: "Select Currency", message: nil, preferredStyle: .actionSheet)
        alertController.setValue(pickerViewController, forKey: "contentViewController")
        
        alertController.addAction(UIAlertAction(title: "Done", style: .default, handler: {_ in
            self.pickerView = nil
            self.pickerViewController = nil
        }))
        alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: {_ in
            self.pickerView = nil
            self.pickerViewController = nil
        }))
        
        present(alertController, animated: true, completion: nil)
    }
}

