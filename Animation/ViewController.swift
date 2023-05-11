//
//  ViewController.swift
//  Animation
//
//  Created by Cyrus Butcher on 10/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstView: UIView!
    
    @IBOutlet weak var sampleOut: UIButton!
    @IBOutlet weak var jumpOut: UIButton!
    @IBOutlet weak var funkyOut: UIButton!
    @IBOutlet weak var hopOut: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func sampleTapped(_ sender: UIButton) {
        sampleAnimation(whatView: firstView)
    }
    @IBAction func hopTapped(_ sender: UIButton) {
        HopAnimation(whatView: firstView)
    }
    @IBAction func jumpTapped(_ sender: UIButton) {
        JumpAnimation(whatView: firstView)
        
    }
    @IBAction func funkyTapped(_ sender: UIButton) {
        UIView.animate(withDuration: 1, delay: 0.1, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: [.repeat, .autoreverse, .curveEaseIn], animations:{
            self.firstView.backgroundColor = .red
            self.firstView.alpha = 0.25
            self.firstView.center.x = self.view.bounds.width - 100
            }, completion: nil)
    }
    
    func sampleAnimation(whatView: UIView) {
        UIView.animate(withDuration: 1, delay: 1, animations: {
            whatView.backgroundColor = .systemPink
            whatView.frame.size.width += 10
            whatView.frame.size.height += 10
        }) { _ in
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseIn) {
                whatView.backgroundColor = .systemOrange
                whatView.frame.origin.y += 40
            }
            }
            }
    func HopAnimation(whatView: UIView) {
        UIView.animate(withDuration: 1, delay: 1, animations: {
            whatView.backgroundColor = .red
            whatView.frame.origin.y -= 40
           
        }) { _ in
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseIn) {
                whatView.backgroundColor = .systemPink
                whatView.frame.origin.x -= 40
                whatView.frame.origin.y += 40
            }
            }
            }
    func JumpAnimation(whatView: UIView) {
        UIView.animate(withDuration: 1, delay: 1, animations: {
            whatView.backgroundColor = .red
            whatView.frame.origin.y -= 60
        }) { _ in
            UIView.animate(withDuration: 0.2, delay: 0, options: .curveEaseIn) {
                whatView.backgroundColor = .systemPink
                whatView.frame.origin.x += 60
                whatView.frame.origin.y += 60
            }
            }
            }
    
    
}

