//
//  ViewController.swift
//  practiceApp
//
//  Created by clapbin on 2023/09/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var naviButton: UIButton!
    
    let secondViewController = SecondViewController()
    
    // LifeCycle - viewDidLoad, viewWillAppear, viewDidAppear, viewWillDisappear, viewDidDisDisappear
    override func viewDidLoad() {
        super.viewDidLoad()
        print("FirstViewDidLoad")
        
        self.view.backgroundColor = .orange
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(view.frame)
        print("FisrtViewWillAppear")
        
        self.view.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print(view.frame)
        print("FisrtViewDidAppear")
        
        self.view.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print(view.frame)
        print("FisrtViewWillDisappear")
        
        self.view.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print(view.frame)
        print("FisrtViewDidDisappear")
        
        self.view.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
    }
    
    @IBAction func secondVCButtonTapped(_ sender: UIButton) {
        // MARK: 프레젠트 스타일
        secondViewController.modalPresentationStyle = .fullScreen
//        secondViewController.modalPresentationStyle = .automatic
//        secondViewController.modalPresentationStyle = .currentContext
//        secondViewController.modalPresentationStyle = .custom
//        secondViewController.modalPresentationStyle = .formSheet
//        secondViewController.modalPresentationStyle = .overCurrentContext
//        secondViewController.modalPresentationStyle = .overFullScreen
//        secondViewController.modalPresentationStyle = .pageSheet
//        secondViewController.modalPresentationStyle = .popover
        self.present(secondViewController, animated: false)
    }
}

