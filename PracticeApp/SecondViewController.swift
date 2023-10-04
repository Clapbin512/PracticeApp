//
//  SecondViewController.swift
//  practiceApp
//
//  Created by clapbin on 2023/09/14.
//

import UIKit

class SecondViewController: UIViewController {
    
    var thirdViewController = ThirdViewController()
    
    var closeButton = UIButton()
    var pushButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(view.frame)
        print("SecondViewWillAppear")
        
        self.view.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print(view.frame)
        print("SecondViewDidAppear")
        
        self.view.backgroundColor = #colorLiteral(red: 0.5704966784, green: 0.9446310401, blue: 0.6515088677, alpha: 1)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print(view.frame)
        print("SecondViewWillDisappear")
        
        self.view.backgroundColor = #colorLiteral(red: 0.3350306153, green: 0.4509733915, blue: 0.9443857074, alpha: 1)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print(view.frame)
        print("SecondViewDidDisappear")
        
        self.view.backgroundColor = #colorLiteral(red: 0.7969527841, green: 0.9664366841, blue: 0.3779315948, alpha: 1)
    }
    
    private func setupView() {
        view.backgroundColor = .blue
        
        closeButton.setTitle("닫기", for: .normal)
        closeButton.setTitleColor(.link, for: .normal)
        closeButton.addAction(UIAction { _ in self.dismiss(animated: false) }, for: .touchUpInside)
        view.addSubview(closeButton)
   
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        closeButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        closeButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -25).isActive = true
        closeButton.frame.size.width = 100
        closeButton.frame.size.height = 100
        
        pushButton.setTitle("써드뷰컨", for: .normal)
        pushButton.setTitleColor(.link, for: .normal)
        
        pushButton.addAction(UIAction { _ in
            if !(self.presentedViewController is ThirdViewController) {
                // 커스텀 모달
                let smallId = UISheetPresentationController.Detent.Identifier("small")
                if #available(iOS 16.0, *) {
                    let smallDetent = UISheetPresentationController.Detent.custom(identifier: smallId) { context in
                        return 100
                    }
                    self.thirdViewController.sheetPresentationController?.detents = [smallDetent, .medium(), .large()]
                } else {
                    // 하프 모달
                    if let sheet = self.thirdViewController.sheetPresentationController {
                        sheet.detents = [.medium(), .large()]
                    }
                }
                
                self.present(self.thirdViewController, animated: true)
                
                self.thirdViewController.sheetPresentationController?.largestUndimmedDetentIdentifier = .medium
            } else {
                self.presentedViewController?.dismiss(animated: true)
            }
        }, for: .touchUpInside)
        
        view.addSubview(pushButton)
        
        pushButton.translatesAutoresizingMaskIntoConstraints = false
        pushButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        pushButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        pushButton.frame.size.width = 150
        pushButton.frame.size.width = 150
    }
    
}
