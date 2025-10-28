//
//  EditProfileVC.swift
//  A2
//
//  Created by Vin Bui on 6/4/23.
//

import UIKit

class EditProfileVC: UIViewController {
    
    // MARK: - Properties (view)
    private let saveButton = UIButton()
    private let titleLabel = UILabel()
    private let ProfilePictureImage = UIImageView()
    private let nameLabel = UILabel()
    private let BioLabel = UILabel()
    private let hometownTextField = UITextField()
    private let hometownLabel = UILabel()
    private let majorTextField = UITextField()
    private let majorLabel = UILabel()
    
    // MARK: - Properties (data)
    private var text: String
    private var MajorText: String
    private weak var delegate1: UpdateHometownDelegate?
    private weak var delegate2: UpdateMajorDelegate?
    
    // MARK: - viewDidLoad and init
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.a2.white
        
        setupTitleLabel()
        setupProfilePicture()
        setupNameLabel()
        setupBioLabel()
        setupHometownLabel()
        setupHometownTextField()
        setupMajorLabel()
        setupMajorTextField()
        setupsaveButton()
    }
    
    init(text: String, delegate1: UpdateHometownDelegate, MajorText: String, delegate2: UpdateMajorDelegate){
        self.text = text
        self.delegate1 = delegate1
        self.delegate2 = delegate2
        self.MajorText = MajorText
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Set Up Views
    private func setupTitleLabel(){
        titleLabel.text = "Edit My Profile"
        titleLabel.font = .systemFont(ofSize: 16, weight: .semibold)
        titleLabel.textColor = UIColor.a2.black
        
        view.addSubview (titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: -41),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    private func setupProfilePicture(){
        ProfilePictureImage.image = UIImage(named: "image")
        
        view.addSubview(ProfilePictureImage)
        
        ProfilePictureImage.layer.cornerRadius = 96/2
        ProfilePictureImage.layer.masksToBounds = true
        
        ProfilePictureImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            ProfilePictureImage.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 32),
            ProfilePictureImage.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 32),
            ProfilePictureImage.heightAnchor.constraint(equalToConstant: 96),
            ProfilePictureImage.widthAnchor.constraint(equalToConstant: 96),
        ])
    }
    private func setupNameLabel(){
        nameLabel.text = "Aishah Abdul-Hakeem"
        nameLabel.font = .systemFont(ofSize: 24, weight: .semibold)
        nameLabel.textColor = UIColor.a2.black
        
        view.addSubview (nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: titleLabel.safeAreaLayoutGuide.bottomAnchor),
            nameLabel.centerYAnchor.constraint(equalTo: ProfilePictureImage.centerYAnchor),
            nameLabel.leadingAnchor.constraint(equalTo: ProfilePictureImage.trailingAnchor, constant: 16)
        ])
    }
    private func setupBioLabel(){
        BioLabel.text = "I Love Pasta"
        BioLabel.font = .italicSystemFont(ofSize: 14)
        BioLabel.textColor = UIColor.a2.black
        
        view.addSubview(BioLabel)
        BioLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            BioLabel.centerYAnchor.constraint(equalTo: ProfilePictureImage.centerYAnchor, constant: 21),
            BioLabel.leadingAnchor.constraint(equalTo: ProfilePictureImage.trailingAnchor, constant: 16),
        ])
        
    }
    private func setupHometownLabel(){
        hometownLabel.text = "Hometown"
        hometownLabel.numberOfLines = 0
        hometownLabel.lineBreakMode = .byWordWrapping
        hometownLabel.font = .systemFont(ofSize: 14, weight: .semibold)
        hometownLabel.textColor = UIColor.a2.black
        
        view.addSubview(hometownLabel)
        hometownLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            hometownLabel.topAnchor.constraint(equalTo: ProfilePictureImage.safeAreaLayoutGuide.bottomAnchor, constant: 38),
            hometownLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 32)
        ])
        
    }
    private func setupHometownTextField(){
        hometownTextField.layer.borderWidth = 1
        hometownTextField.layer.borderColor = UIColor.a2.silver.cgColor
        hometownTextField.layer.cornerRadius = 10
        hometownTextField.placeholder = text
        
        view.addSubview(hometownTextField)
        hometownTextField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            hometownTextField.topAnchor.constraint(equalTo: hometownLabel.bottomAnchor, constant: 4),
            hometownTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 32),
            hometownTextField.trailingAnchor.constraint(equalTo:view.safeAreaLayoutGuide.trailingAnchor, constant: -32),
            hometownTextField.heightAnchor.constraint(equalToConstant: 40)
        ])
        
    }
    
    private func setupMajorLabel(){
        majorLabel.text = "Major"
        majorLabel.numberOfLines = 0
        majorLabel.lineBreakMode = .byWordWrapping
        majorLabel.font = .systemFont(ofSize: 14, weight: .semibold)
        majorLabel.textColor = UIColor.a2.black
        
        view.addSubview(majorLabel)
        majorLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            majorLabel.topAnchor.constraint(equalTo: hometownTextField.safeAreaLayoutGuide.topAnchor, constant: 64),
            majorLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 32)
        ])
    }
   
    private func setupMajorTextField(){
        majorTextField.layer.borderWidth = 1
        majorTextField.layer.borderColor = UIColor.a2.silver.cgColor
        majorTextField.layer.cornerRadius = 8
        majorTextField.placeholder = MajorText
        
        view.addSubview(majorTextField)
        majorTextField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            majorTextField.topAnchor.constraint(equalTo: majorLabel.bottomAnchor, constant: 4),
            majorTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 32),
            majorTextField.trailingAnchor.constraint(equalTo:view.safeAreaLayoutGuide.trailingAnchor, constant: -32),
            majorTextField.heightAnchor.constraint(equalToConstant: 40)
        ])
        
    }
    private func setupsaveButton(){
        saveButton.setTitle("Save", for : .normal)
        saveButton.setTitleColor(.white, for: .normal)
        saveButton.backgroundColor = UIColor.a2.ruby
        saveButton.layer.cornerRadius = 10
        saveButton.addTarget(self, action: #selector(popVC), for: .touchUpInside)
        
        view.addSubview(saveButton)
        saveButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            saveButton.heightAnchor.constraint(equalToConstant: 56),
            saveButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -32),
            saveButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32),
            saveButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -64)
        ])
//        saveButton.contentEdgeInsets = UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16)
    }
    
    @objc private func popVC(){
        navigationController?.popViewController(animated: true)
        delegate1?.updateHometown(hometownTextField.text ?? "")
        delegate2?.updateMajor(majorTextField.text ?? "")
    }
}
