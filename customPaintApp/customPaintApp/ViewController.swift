//
//  ViewController.swift
//  customPaintApp
//
//  Created by Alehandro on 7.02.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "S T A R T"
        view.backgroundColor = .systemGray6
    }
    @IBAction func onStartButton(_ sender: Any) {
        transitToGameScreen()
    }
    
    private func transitToGameScreen() {
        let storyboard = UIStoryboard.init(name: "GameScreen", bundle: Bundle.main)
        let vc = storyboard.instantiateInitialViewController() as! GameScreen
        navigationController?.pushViewController(vc, animated: true)
    }
    

}

