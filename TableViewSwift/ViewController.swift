//
//  ViewController.swift
//  TableViewSwift
//
//  Created by uxd on 6/2/20.
//  Copyright © 2020 uxd. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tt: UITableView!
    var arr1 = ["AA", "BB" , "CC", "DD"]
    var arr2 = ["aa", "bb", "cc" , "dd"]
    
    var arrimg : [UIImage] = [#imageLiteral(resourceName: "car-logo-22545528"), #imageLiteral(resourceName: "car-logos-mazda") , #imageLiteral(resourceName: "car-logos-mazda"), #imageLiteral(resourceName: "car-logo-with-circle-hand-colorful-logo-vector-22266844")]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
  
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return arr1.count
      }
      
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        /*let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = arr1[indexPath.row]
        cell?.detailTextLabel?.text = arr2[indexPath.row]
        return cell!*/
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! CekkTableViewCell
        cell.lbl1.text = arr1[indexPath.row]
        cell.lbl2.text = arr2[indexPath.row]
        cell.img.image = arrimg[indexPath.row]
        return cell
        
      }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.view.backgroundColor = UIColor.blue
        
        let detailed = self.storyboard?.instantiateViewController(withIdentifier: "DetailedViewController") as! DetailedViewController
        detailed.str1 = arr1[indexPath.row]
        detailed.str2 = arr2[indexPath.row]
        detailed.pic = arrimg[indexPath.row]
        self.navigationController?.pushViewController(detailed, animated: true)
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            arr1.remove(at: indexPath.row)
            arr2.remove(at: indexPath.row)
            arrimg.remove(at: indexPath.row)
            tt.deleteRows(at: [indexPath], with: .fade)
        }
    }

}

