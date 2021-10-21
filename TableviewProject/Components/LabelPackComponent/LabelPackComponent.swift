//
//  LabelPackComponent.swift
//  PermissionProject
//
//  Created by Erkut Bas on 26.09.2021.
//

import UIKit
import BaseComponents

class LabelPackComponent: GenericBaseView<LabelPackComponentData> {
    
    private lazy var mainStackView: UIStackView = {
        let temp = UIStackView(arrangedSubviews: [titleLabel, subTitleLabel])
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.alignment = .center
        temp.distribution = .fill
        temp.axis = .vertical
        temp.spacing = 10
        return temp
    }()
    
    private lazy var titleLabel: UILabel = {
        let temp = UILabel()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.textColor = .black
        temp.text = " "
        temp.lineBreakMode = .byWordWrapping
        temp.numberOfLines = 0
        temp.contentMode = .center
        temp.textAlignment = .center
        temp.font = FontManager.bold(24).value
        return temp
    }()
    
    private lazy var subTitleLabel: UILabel = {
        let temp = UILabel()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.textColor = .black
        temp.text = " "
        temp.lineBreakMode = .byWordWrapping
        temp.numberOfLines = 0
        temp.contentMode = .center
        temp.textAlignment = .center
        temp.font = FontManager.regular(16).value
        return temp
    }()
    
    override func addMajorViewComponents() {
        super.addMajorViewComponents()
        addUserComponents()
    }
    
    private func addUserComponents() {
        addSubview(mainStackView)
        
        NSLayoutConstraint.activate([
        
            mainStackView.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            mainStackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            mainStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            mainStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
        
        ])
        
    }
    override func setupViewConfigurations() {
        super.setupViewConfigurations()
        //setupTitleConfigurations()
        setupSubTitleConfigurations()
    }
    
    override func loadDataView() {
        super.loadDataView()
        guard let data = returnData() else { return }
        titleLabel.text = data.title
        subTitleLabel.text = data.subTitle
    }
    
    private func setupSubTitleConfigurations() {
            guard let data = returnData() else { return }
            subTitleLabel.lineBreakMode = data.subTitleLabelDistributionData.lineBreakMode
            subTitleLabel.numberOfLines = data.subTitleLabelDistributionData.numberOfLines
            subTitleLabel.contentMode = data.subTitleLabelDistributionData.contentMode
            subTitleLabel.textAlignment = data.subTitleLabelDistributionData.textAlignment
        }
    
    private func setupTitleConfigurations() {
            guard let data = returnData() else { return }
            titleLabel.lineBreakMode = data .titleLabelDistributionData.lineBreakMode
            titleLabel.numberOfLines = data.titleLabelDistributionData.numberOfLines
            titleLabel.contentMode = data.titleLabelDistributionData.contentMode
            titleLabel.textAlignment = data.titleLabelDistributionData.textAlignment
        }
}
