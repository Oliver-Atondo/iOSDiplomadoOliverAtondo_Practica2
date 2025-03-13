//
//  GamesViewController.swift
//  GOW
//
//  Created by Rafael Gonzalez on 07/03/25.
//

import UIKit

class GamesViewController: UIViewController {
    @IBOutlet weak var gameImage: UIImageView!
    
    @IBOutlet weak var imagePageControl: UIPageControl!
    
    @IBAction func rigthSwipeDone(_ sender: Any) {
        if imagePageControl.currentPage == 0 {
            imagePageControl.currentPage = 7
            gameImage.image = UIImage(named: gamePosters.last?.description ?? "7")
            updateImagePageControl(pastPageNumber: 0)
        } else {
            imagePageControl.currentPage -= 1
            gameImage.image = UIImage(named: gamePosters[imagePageControl.currentPage].description)
            updateImagePageControl(
                pastPageNumber: imagePageControl.currentPage + 1
            )
        }
    }
    
    @IBAction func leftSwipeDone(_ sender: Any) {
        if imagePageControl.currentPage == 7 {
            imagePageControl.currentPage = 0
            gameImage.image = UIImage(named: gamePosters.first?.description ?? "0")
            updateImagePageControl(pastPageNumber: 7)
        } else {
            imagePageControl.currentPage += 1
            gameImage.image = UIImage(named: gamePosters[imagePageControl.currentPage].description)
            updateImagePageControl(
                pastPageNumber: imagePageControl.currentPage - 1
            )
        }
    }
    
    
    let gamePosters = Array(0...7)
    
    let selectorImage = UIImage(resource: .gowLogo)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .gowBlack1
        navigationController?.navigationBar.tintColor = .gowText
        
        // Do any additional setup after loading the view.
        imagePageControl.numberOfPages = gamePosters.count
        gameImage.image = UIImage(named: gamePosters.first?.description ?? "0")

        updateImagePageControl(pastPageNumber: 0)
    }
    
    func updateImagePageControl(pastPageNumber: Int) {
        imagePageControl.setIndicatorImage(.none, forPage: pastPageNumber)
        imagePageControl.setIndicatorImage(.gowLogo, forPage: imagePageControl.currentPage)
    }
    
}
