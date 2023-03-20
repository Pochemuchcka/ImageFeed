//
//  ProfileViewController.swift
//  Image Feed
//
//  Created by Влад on 11.03.2023.
//

import UIKit

final class ProfileViewController: UIViewController {
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profileImage()
    }
    
    func profileImage(){
        let profileImage = UIImage(systemName: "person.crop.circle.fill")
        let imageView = UIImageView(image: profileImage)
        imageView.tintColor = .gray
        imageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageView)
        
        let labelName = UILabel()
        labelName.text = "Екатерина Новикова"
        labelName.textColor = .white
        labelName.font = UIFont.systemFont(ofSize: 23)
        labelName.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(labelName)
        
        let labelNickname = UILabel()
        labelNickname.text = "@ekaterina_nov"
        labelNickname.textColor = .gray
        labelNickname.font = UIFont.systemFont(ofSize: 13)
        labelNickname.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(labelNickname)
        
        let labelStatus = UILabel()
        labelStatus.text = "Hello World!"
        labelStatus.textColor = .white
        labelStatus.font = UIFont.systemFont(ofSize: 13)
        labelStatus.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(labelStatus)
        
        let button = UIButton.systemButton(
            with: UIImage(systemName: "ipad.and.arrow.forward")!,
            target: self,
            action: #selector(Self.didTapButton)
        )
        button.tintColor = .red
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            imageView.heightAnchor.constraint(equalToConstant: 70),
            imageView.widthAnchor.constraint(equalToConstant: 70),
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
            imageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            labelName.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 8),
            labelName.leadingAnchor.constraint(equalTo: imageView.leadingAnchor),
            labelNickname.topAnchor.constraint(equalTo: labelName.bottomAnchor, constant: 8),
            labelNickname.leadingAnchor.constraint(equalTo: imageView.leadingAnchor),
            labelStatus.topAnchor.constraint(equalTo: labelNickname.bottomAnchor, constant: 8),
            labelStatus.leadingAnchor.constraint(equalTo: imageView.leadingAnchor),
            button.trailingAnchor.constraint(equalTo:view.safeAreaLayoutGuide.trailingAnchor,constant: -26),
            button.centerYAnchor.constraint(equalTo: imageView.centerYAnchor),
        ])
    }
    
    @objc
    private func didTapButton() {
        for view in view.subviews {
            if view is UILabel {
                view.removeFromSuperview()
            }
        }
    }
}
