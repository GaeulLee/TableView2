//
//  MovieTableViewCell.swift
//  TableView2
//
//  Created by 이가을 on 3/9/24.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    // MARK: - Property
    
    // create imageView
    let mainImageView: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()
    
    // create mainLabel
    let mainLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.textColor = .black
        return label
    }()

    // create infolabel
    let infoLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.textColor = .black
        label.numberOfLines = 0 // 텍스트 줄이지 않고 전부 표시
        return label
    }()
    
    let stackView: UIStackView = {
        let sv = UIStackView()
        sv.axis = .vertical
        sv.distribution = .fill
        sv.alignment = .fill
        sv.spacing = 8
        return sv
    }()
    
    
    // 셀 오토레이아웃 일반적으로 생성자에서 잡으면 됨 ⭐️⭐️⭐️
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
        setStackView()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: - Private
    
    private func setStackView() {
        
        stackView.addArrangedSubview(mainLabel)
        stackView.addArrangedSubview(infoLabel)
        
        // self.addSubview보다 self.contentView.addSubview로 잡는게 더 정확함 ⭐️
        // cell은 기본뷰로 contentView를 가지고 있기 때문
        self.contentView.addSubview(mainImageView)
        self.contentView.addSubview(stackView)
    }
    
    private func setConstraints() {
        setMainImageViewConstraints()
        setMainLabelConstraints()
        setStackViewConstraints()
    }
    
    
    private func setMainImageViewConstraints() {
        mainImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            mainImageView.heightAnchor.constraint(equalToConstant: 100),
            mainImageView.widthAnchor.constraint(equalToConstant: 100),
            mainImageView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 10),
            mainImageView.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor)
        ])
    }

    private func setMainLabelConstraints() {
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            mainLabel.heightAnchor.constraint(equalToConstant: 22)
        ])
    }
    
    private func setStackViewConstraints() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: mainImageView.trailingAnchor, constant: 15),
            stackView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
            stackView.topAnchor.constraint(equalTo: self.mainImageView.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: self.mainImageView.bottomAnchor)
        ])
    }
}
