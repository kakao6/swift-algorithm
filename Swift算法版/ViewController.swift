//
//  ViewController.swift
//  Swift算法版
//
//  Created by 魏跃勇 on 2022/10/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    lazy var titleArr:[String] = {
        let array:[String] = ["1.数组中的重复数字","2.替换空格","3.两数之和","4.两数相加","5.二叉树的中序遍历"]
        return array
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cellIdl")
        if cell == nil {
            cell = UITableViewCell.init(style: .default, reuseIdentifier: "cellIdl")
        }
        cell?.textLabel?.text = self.titleArr[indexPath.row]
        return cell!
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.titleArr.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            do {
                let s = Day1_01.init()
                print ("数组中重复的数字:\(s.duplicte([2,1,3,0,2,5,3,2]))")
            }
            break;
        case 1:
            do {
                let s = Day1_02.init()
                print("替换空格:\(s.replaceSpace("we are family"))")
            }
            break;
            
        default:
            break;
        }
    }
    

}

