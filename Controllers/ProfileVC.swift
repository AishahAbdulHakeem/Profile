//
//  ProfileVC.swift
//  A2
//
//  Created by Vin Bui on 6/4/23.
//

import UIKit

class ProfileVC: UIViewController {
    
    // MARK: - Properties (view)
    private let nameLabel = UILabel()
    private let profileImageView = UIImageView()
    private let titleLabel = UILabel()
    private let BioLabel = UILabel()
    private let editProfileButton = UIButton()
    private let hometownIcon = UIImageView()
    private let hometownLabel = UILabel()
    private let majorIcon = UIImageView()
    private let majorLabel = UILabel()
    
    // MARK: - Properties (data)
    private var text: String = "Trinidad and Tobago"
    private var MajorText: String = "Computer Science"
   
    // MARK: - viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.a2.white
        setupProfileTitleLabel()
        setupProfileImageView()
        setupNameLabel()
        setupBioLabel()
        setupEditProfileButton()
        setupHometownicon()
        setupHometownLabel()
        setupMajorIcon()
        setupMajorLabel()
        
    }
    
    // MARK: - Set Up Views
    private func setupProfileTitleLabel(){
        titleLabel.text = "My Profile"
        titleLabel.font = .systemFont(ofSize: 16, weight: .semibold)
        titleLabel.textColor = UIColor.a2.black
        
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 161),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -161)
        ])
    }
    private func setupProfileImageView() {
        profileImageView.image = UIImage(named: "image")
        
        view.addSubview(profileImageView)
        
        profileImageView.layer.cornerRadius = 128/2
        profileImageView.layer.masksToBounds = true
        
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            profileImageView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 32),
            profileImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            profileImageView.heightAnchor.constraint(equalToConstant: 128),
            profileImageView.widthAnchor.constraint(equalToConstant: 128),
        ])
    }
    
    private func setupNameLabel(){
        nameLabel.text = "Aishah Abdul-Hakeem"
        nameLabel.font = .systemFont(ofSize: 32, weight: .semibold)
        nameLabel.textColor = UIColor.a2.black
        
        view.addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: profileImageView.safeAreaLayoutGuide.bottomAnchor, constant: 16),
            nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    private func setupBioLabel(){
        BioLabel.text = "I Love Pasta"
        BioLabel.font = .italicSystemFont(ofSize: 16)
        BioLabel.textColor = UIColor.a2.black
        
        view.addSubview(BioLabel)
        BioLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            BioLabel.topAnchor.constraint(equalTo: nameLabel.safeAreaLayoutGuide.bottomAnchor, constant: 8),
            BioLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
    }
    
    private func setupHometownicon(){
        hometownIcon.image = UIImage(named: "image2")
        view.addSubview(hometownIcon)
        
        hometownIcon.layer.masksToBounds = true
        
        hometownIcon.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            hometownIcon.topAnchor.constraint(equalTo: BioLabel.safeAreaLayoutGuide.topAnchor, constant: 48),
            hometownIcon.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32),
            hometownIcon.heightAnchor.constraint(equalToConstant: 24),
            hometownIcon.widthAnchor.constraint(equalToConstant: 24)
        ])
        
    }
    private func setupHometownLabel(){
        hometownLabel.text = text
        hometownLabel.numberOfLines = 0
        hometownLabel.lineBreakMode = .byWordWrapping
        hometownLabel.font = .systemFont(ofSize: 16)
        hometownLabel.textColor = UIColor.a2.black
        
        view.addSubview(hometownLabel)
        hometownLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            hometownLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 72),
            hometownLabel.topAnchor.constraint(equalTo: BioLabel.safeAreaLayoutGuide.topAnchor, constant: 48),
            hometownLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -32)
        ])
        
    }
    private func setupMajorIcon(){
        majorIcon.image = UIImage(named: "image3")
        view.addSubview(majorIcon)
        
        majorIcon.layer.masksToBounds = true
        
        majorIcon.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            majorIcon.topAnchor.constraint(equalTo: hometownIcon.safeAreaLayoutGuide.topAnchor, constant: 48),
            majorIcon.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32),
            majorIcon.heightAnchor.constraint(equalToConstant: 24),
            majorIcon.widthAnchor.constraint(equalToConstant: 24)
        ])
    }
    private func setupMajorLabel(){
        majorLabel.text = MajorText
        majorLabel.numberOfLines = 0
        majorLabel.lineBreakMode = .byWordWrapping
        majorLabel.font = .systemFont(ofSize: 16)
        majorLabel.textColor = UIColor.a2.black
        
        view.addSubview(majorLabel)
        majorLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            majorLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 72),
            majorLabel.topAnchor.constraint(equalTo: hometownLabel.safeAreaLayoutGuide.topAnchor, constant: 48),
            majorLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -32)
        ])
        
    }
    private func setupEditProfileButton() {
        // Appearance
        editProfileButton.setTitle("Edit Profile", for: .normal)
        editProfileButton.setTitleColor(.white, for: .normal)
        editProfileButton.backgroundColor = UIColor.a2.ruby
        editProfileButton.layer.cornerRadius = 10
        
        // Action
        editProfileButton.addTarget(self, action: #selector(didTapEditProfile), for: .touchUpInside)
        
        // Layout
        view.addSubview(editProfileButton)
        editProfileButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            editProfileButton.heightAnchor.constraint(equalToConstant: 56),
            editProfileButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -32),
            editProfileButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32),
            editProfileButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -64)
        ])
        
    }
    
    // MARK: - Actions
    @objc private func didTapEditProfile() {
        let editVC = EditProfileVC(text: text, delegate1: self, MajorText: MajorText, delegate2: self)
        navigationController?.pushViewController(editVC, animated: true)
    }
}

// MARK: - Delegates
extension ProfileVC: UpdateHometownDelegate, UpdateMajorDelegate {
    func updateHometown(_ newText: String) {
        text = newText
        hometownLabel.text = text
    }
    
    func updateMajor(_ newText: String) {
        MajorText = newText
        majorLabel.text = MajorText
    }
}

// MARK: - Delegate Protocols
protocol UpdateHometownDelegate: AnyObject {
    func updateHometown(_ newText: String)
}

protocol UpdateMajorDelegate: AnyObject {
    func updateMajor(_ newText: String)
}
