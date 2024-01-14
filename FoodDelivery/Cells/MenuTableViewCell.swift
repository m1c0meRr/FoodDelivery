//
//  MenuTableViewCell.swift
//  FoodDelivery
//
//  Created by Sergey Savinkov on 12.01.2024.
//

import UIKit

class MenuTableViewCell: UITableViewCell {
    
    private let tableImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "nameImage")
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 5
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 13, weight: .semibold)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let priceLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = #colorLiteral(red: 0.9921568627, green: 0.2274509804, blue: 0.4117647059, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 13, weight: .semibold)
        label.layer.cornerRadius = 10
        label.layer.borderWidth = 1
        label.layer.borderColor = #colorLiteral(red: 0.9921568627, green: 0.2274509804, blue: 0.4117647059, alpha: 1)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        backgroundColor = .white
        
        addSubview(tableImageView)
        addSubview(nameLabel)
        addSubview(descriptionLabel)
        addSubview(priceLabel)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            
            tableImageView.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            tableImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            tableImageView.widthAnchor.constraint(equalToConstant: 132),
            tableImageView.heightAnchor.constraint(equalToConstant: 132),
            
            nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            nameLabel.leadingAnchor.constraint(equalTo: tableImageView.trailingAnchor, constant: 10),
            nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            nameLabel.heightAnchor.constraint(equalToConstant: 50),
            
            descriptionLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 0),
            descriptionLabel.leadingAnchor.constraint(equalTo: tableImageView.trailingAnchor, constant: 10),
            descriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            descriptionLabel.heightAnchor.constraint(equalToConstant: 50),
            
            priceLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20),
            priceLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            priceLabel.heightAnchor.constraint(equalToConstant: 32),
            priceLabel.widthAnchor.constraint(equalToConstant: 87)
        ])
    }
    
    func cellConfigure(model: TableViewCellModel) {
        
        tableImageView.image = UIImage(named: model.image)
        nameLabel.text = model.name
        descriptionLabel.text = model.description
        priceLabel.text = model.price
    }
}

