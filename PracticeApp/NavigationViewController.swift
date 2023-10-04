//
//  NavigationViewController.swift
//  practiceApp
//
//  Created by clapbin on 2023/09/14.
//

import UIKit

class NavigationViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.backgroundColor = .clear
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(view.frame)
        print("NavigationFisrtViewWillAppear")
        
        self.view.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print(view.frame)
        print("NavigationFisrtViewDidAppear")
        
        self.view.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print(view.frame)
        print("NavigationFisrtViewWillDisappear")
        
        self.view.backgroundColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print(view.frame)
        print("NavigationFisrtViewDidDisappear")
        
        self.view.backgroundColor = #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)
    }
    
    @IBAction func closeButtonTapped(_ sender: Any) {
        self.dismiss(animated: true)
    }

}

extension NavigationViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { 2 }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cellWithIdentifier = "TableViewCell"
        
        switch indexPath.row {
        case 1: cellWithIdentifier = "TableViewCell2"
        default: break
        }
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellWithIdentifier, for: indexPath) as? NavigationTableViewCell else {
            return NavigationTableViewCell()
        }
        
        return cell
    }
    
}

extension NavigationViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(#function)
    }
}
