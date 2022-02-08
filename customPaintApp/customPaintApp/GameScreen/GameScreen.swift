//
//  GameScreen.swift
//  customPaintApp
//
//  Created by Alehandro on 7.02.22.
//

import UIKit

class GameScreen: UIViewController {
    
    private var path = UIBezierPath()
    private let layer = CAShapeLayer()

    override func viewDidLoad() {
        super.viewDidLoad()

        let panGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(onTap))
        view.addGestureRecognizer(panGestureRecognizer)
    }
    
    @objc private func onTap(gesture: UIPanGestureRecognizer) {
        var location = gesture.location(in: view)
        var x = location.x
        var y = location.y
        path.move(to: CGPoint(x: x, y: y))
//        path.addQuadCurve(to: CGPoint(x: x+30, y: y),
//                          controlPoint: CGPoint(x: x, y: y))
                path.addLine(to: CGPoint(x: x + 30, y: y))
        layer.path = path.cgPath
        layer.cornerRadius = 20
        layer.strokeColor = UIColor.blue.cgColor
        layer.lineWidth = 30
        view.layer.addSublayer(layer)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
