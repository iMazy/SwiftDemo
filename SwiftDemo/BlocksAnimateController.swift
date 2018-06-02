//
//  BlocksAnimateController.swift
//  SwiftDemo
//
//  Created by Mazy on 2018/6/2.
//  Copyright © 2018年 GSAE. All rights reserved.
//

import UIKit

class BlocksAnimateController: UIViewController {

    //
    var blcokView: UIView!
    
    //
    var blcokView1: UIView!
    var blcokView2: UIView!
    var blcokView3: UIView!
    
    //
    var blcokView4: UIView!
    var blcokView5: UIView!
    var blcokView6: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        
        setAnimation()
        palyAnimation()
        
        setAnimations()
        playAnimaitons()
        
        setAnimations2()
        playAnimaitons1()
    }
}

extension BlocksAnimateController {
    
    func setAnimations2() {
        blcokView4 = UIView(frame: CGRect(x: 0, y: 0, width: 25, height: 25))
        blcokView4.center.y = 300
        blcokView4.center.x = view.bounds.width / 2 - 30
        blcokView4.backgroundColor = UIColor.red
        blcokView4.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
        view.addSubview(blcokView4)
        
        blcokView5 = UIView(frame: CGRect(x: 0, y: 0, width: 25, height: 25))
        blcokView5.center.y = 300
        blcokView5.center.x = view.bounds.width / 2
        blcokView5.backgroundColor = UIColor.red
        view.addSubview(blcokView5)
        
        blcokView6 = UIView(frame: CGRect(x: 0, y: 0, width: 25, height: 25))
        blcokView6.center.y = 300
        blcokView6.center.x = view.bounds.width / 2 + 30
        blcokView6.backgroundColor = UIColor.red
        blcokView6.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
        view.addSubview(blcokView6)
    }
    
    func playAnimaitons1() {
        UIView.animate(withDuration: 0.6, delay: 0.4, options: [.repeat, .autoreverse], animations: {
            self.blcokView4.transform = CGAffineTransform(translationX: 60, y: 0)
            self.blcokView4.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        }, completion: nil)
        
//        UIView.animate(withDuration: 0.6, delay: 0.4, options: [.repeat, .autoreverse], animations: {
//            self.blcokView5.frame.origin.x = self.view.bounds.width - self.blcokView5.bounds.width
//        }, completion: nil)
        
        UIView.animate(withDuration: 0.6, delay: 0.4, options: [.repeat, .autoreverse], animations: {
            self.blcokView6.transform = CGAffineTransform(translationX: -60, y: 0)
            self.blcokView6.transform = CGAffineTransform(scaleX: 0.8, y: 0.7)
        }, completion: nil)
    }
    
}

extension BlocksAnimateController {
    
    func setAnimations() {
        blcokView1 = UIView(frame: CGRect(x: 0, y: 0, width: 25, height: 25))
        blcokView1.center.y = 200
        blcokView1.backgroundColor = UIColor.darkGray
        view.addSubview(blcokView1)
        
        blcokView2 = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        blcokView2.center.y = 200
        blcokView2.backgroundColor = UIColor.darkGray
        view.addSubview(blcokView2)
        
        blcokView3 = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: 15))
        blcokView3.center.y = 200
        blcokView3.backgroundColor = UIColor.darkGray
        view.addSubview(blcokView3)
    }
    
    func playAnimaitons() {
        UIView.animate(withDuration: 0.6, delay: 0.4, options: [.repeat, .autoreverse], animations: {
            self.blcokView1.frame.origin.x = self.view.bounds.width - self.blcokView1.bounds.width
        }, completion: nil)
        
        UIView.animate(withDuration: 0.6, delay: 0.45, options: [.repeat, .autoreverse], animations: {
            self.blcokView2.frame.origin.x = self.view.bounds.width - self.blcokView2.bounds.width
        }, completion: nil)
        
        UIView.animate(withDuration: 0.6, delay: 0.5, options: [.repeat, .autoreverse], animations: {
            self.blcokView3.frame.origin.x = self.view.bounds.width - self.blcokView3.bounds.width
        }, completion: nil)
    }
    
}

// MARK: - animtion
extension BlocksAnimateController {
    func setAnimation() {
        blcokView = UIView(frame: CGRect(x: 0, y: 0, width: 25, height: 25))
        blcokView.center.y = 120
        blcokView.backgroundColor = UIColor.darkGray
        view.addSubview(blcokView)
    }
    
    func palyAnimation() {
        UIView.animate(withDuration: 0.6, delay: 0.4, options: [.repeat, .autoreverse], animations: {
            self.blcokView.frame.origin.x = self.view.bounds.width - self.blcokView.bounds.width
        }, completion: nil)
    }
}
