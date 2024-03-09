//
//  DetailViewController.swift
//  TableView2
//
//  Created by 이가을 on 3/9/24.
//

import UIKit

class DetailViewController: UIViewController {

    // MARK: - Property

    private let detailView = DetailView()
    var movieData: Movie?
    
    
    override func loadView() {
        view = detailView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUI()
    }
    
    
    // MARK: - Private
    
    private func setUI() {
        detailView.mainImageView.image = movieData?.movieImage
        detailView.mainLabel.text = movieData?.movieName
        detailView.infoLabel.text = movieData?.movieInfo
    }
}
