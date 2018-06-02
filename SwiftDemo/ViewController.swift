//
//  ViewController.swift
//  SwiftDemo
//
//  Created by Mazy on 2018/6/2.
//  Copyright © 2018年 GSAE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Swift Demo"
        // Account.interestRate = 100
        
//        let result = Account.interestRate(amount: 8)
//        print(result)
        
//        var types = ["none","warning","error"]
//        types.swapAt(0, 1)
//        print(types)
        
//        var myDic = ["name":"hangge", "url": ["hangge.com", "hangge.com"]] as [String : Any]  //声明一个字典
//        print(myDic.values)
        
//        let tupleArray = [("Monday", 30),  ("Tuesday", 25),  ("Wednesday", 27)]
//        let dictionary = Dictionary(uniqueKeysWithValues: tupleArray)
//        print(dictionary) //["Monday": 30, "Tuesday": 25, "Wednesday": 27]

//        let names = ["Apple", "Pear", "Grape", "Peach"]
//        let dict = Dictionary(grouping: names) { $0.first! }
//        print(dict) //["P": ["Pear", "Peach"], "G": ["Grape"], "A": ["Apple"]]
//        
//        let dic = ["apple": 1, "banana": 2 ]
//        let orange = dic["orange", default: 0]
//        print(orange)


    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print(Account.interestRate)
        print(Account.interestRate(amount: 8))
    }
}

struct Account {
    
    var amount: Double = 0.0
    var owner: String = ""
    
    static var interestRate: Double = 0.668
    static func interestRate(amount: Double) -> Double {
        return interestRate * amount
    }
}

class Manager {
    
    /// static
    static var interestRate: Double = 0.668
    
    static func interestBy(amount: Double) -> Double {
        return interestRate * amount
    }
    
    /// class
    /// 计算属性, 可读不可写
    class var staticProp: Double {
        return 0.668
    }
    
    class func interestedBy(amount: Double) -> Double {
        return 0.668 * amount
    }
}

