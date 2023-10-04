//
//  ThirdViewController.swift
//  practiceApp
//
//  Created by clapbin on 2023/09/15.
//

import UIKit

class ThirdViewController: UIViewController {
    
    var closeButton = UIButton()
    
    var titleLabel: UILabel = {
        var label = UILabel()
        label.text = "타이틀 레이블"
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 25)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    var subLabel: UILabel = {
        var label = UILabel()
        label.text = "서브 레이블"
        label.textColor = .white
        label.font = .systemFont(ofSize: 21)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    var imageView: UIImageView = {
        var imageView = UIImageView()
        imageView.image = UIImage(systemName: "photo")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    lazy var tableView: UITableView = {
        var tableView = UITableView()
        tableView.register(ThirdViewTableViewCell.classForCoder(), forCellReuseIdentifier: "ThirdViewTableViewCell")
        tableView.dataSource = self
        tableView.delegate = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .clear
        
        return tableView
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }
    
    private func setupView() {
        view.backgroundColor = .magenta
        
        [closeButton, titleLabel, subLabel, imageView, tableView].forEach {
            view.addSubview($0)
        }
        
        closeButton.setTitle("닫기", for: .normal)
        closeButton.setTitleColor(.white, for: .normal)
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        closeButton.frame.size.width = 100
        closeButton.frame.size.height = 100
        closeButton.addAction(UIAction {_ in self.dismiss(animated: true) }, for: .touchUpInside)

        NSLayoutConstraint.activate([
            closeButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            closeButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -25),
            
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            titleLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 25),
            titleLabel.heightAnchor.constraint(equalToConstant: 50),
            
            subLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 5),
            subLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 25),
            
            imageView.topAnchor.constraint(equalTo: subLabel.bottomAnchor, constant: 5),
            imageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 25),
            imageView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -25),
            imageView.heightAnchor.constraint(equalToConstant: view.frame.width - 50),
            
            tableView.topAnchor.constraint(equalTo: imageView.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
    }
    


}


extension ThirdViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ThirdViewTableViewCell", for: indexPath) as? ThirdViewTableViewCell else {
            return ThirdViewTableViewCell()
        }
        
        return cell
    }
    
    
}

extension ThirdViewController: UITableViewDelegate {
    
}
