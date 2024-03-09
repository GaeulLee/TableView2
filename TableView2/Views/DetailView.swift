//
//  DetailView.swift
//  TableView2
//
//  Created by 이가을 on 3/9/24.
//

import UIKit

class DetailView: UIView {
    
    // MARK: - Property
    
    let mainImageView: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()
    
    let mainLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 22)
        label.textColor = .black
        return label
    }()
    
    let infoLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17)
        label.textColor = .black
        label.numberOfLines = 0
        return label
    }()
    
    let stackView: UIStackView = {
        let sv = UIStackView()
        sv.axis = .vertical
        sv.distribution = .fill
        sv.alignment = .fill
        sv.spacing = 15
        return sv
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setStackView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // 오토레이아웃 업데이트
    override func updateConstraints() {
        setConstraints()
        super.updateConstraints()
    }
    
    
    // MARK: - Private
    
    private func setStackView() {
        stackView.addArrangedSubview(mainImageView)
        stackView.addArrangedSubview(mainLabel)
        stackView.addArrangedSubview(infoLabel)
        
        self.addSubview(stackView)
    }
    
    private func setConstraints() {
        setMainImageViewConstraints()
        setMainLabelConstraints()
        setInfoLabelConstraints()
        setStackViewConstraints()
    }
    
    private func setMainImageViewConstraints() {
        mainImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            mainImageView.widthAnchor.constraint(equalToConstant: 240),
            mainImageView.heightAnchor.constraint(equalToConstant: 240)
        ])
    }

    private func setMainLabelConstraints() {
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            mainLabel.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    private func setInfoLabelConstraints() {
        infoLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            infoLabel.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    private func setStackViewConstraints() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 100),
            stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ])
    }
}
