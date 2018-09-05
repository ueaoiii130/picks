//
//  ArticleTableViewController.swift
//  picks
//
//  Created by 阪上葵 on 2018/09/05.
//  Copyright © 2018年 ueao. All rights reserved.
//

import UIKit
//import PageMenu
import Alamofire
import SwiftyJSON

class ArticleTableViewController: UITableViewController {
//    var pageMenu : CAPSPageMenu?
    
    var fetchFrom: String?
//    var parent: UIViewController?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        Alamofire.request(self.baseUrl, parameters: parameters)
//        Alamofire.request(.GET, fetchFrom).responseJSON { response in
//            if let values = response.result.value {
//                JSON(values)["responseData"]["feed"]["entries"].forEach {i,value in
//                    print(value["title"].string!)
//                    print(value["link"].string!)
//                }
//            }
//        }
        
//        Alamofire.request(.GET, "http://careerhack.en-japan.com", parameters: Parameters).responseJSON { response in
//                        if let values = response.result.value {
//                            JSON(values)["responseData"]["feed"]["entries"].forEach {i,value in
//                                print(value["title"].string!)
//                                print(value["link"].string!)
//                            }
//                        }
//                    }
//
//        Alamofire.request(.GET, URL?, parameters: Parameters)
//            .responseJSON { response in
//                switch response.result {
//                case .Success(let value):
//                    print("value: \(value)")
//                case .Failure(let error):
//                    print(error)
//                }
//        }
        
        Alamofire.request("http://careerhack.en-japan.com", method: .get, parameters: ["":""], encoding: URLEncoding.default, headers: nil).responseJSON { (response:DataResponse<Any>) in
            
            switch(response.result) {
            case .success(_):
                if let data = response.result.value{
                    print(response.result.value)
                }
                break
                
            case .failure(_):
                print(response.result.error)
                break
                
            }
        }
//        Alamofire.request("http://careerhack.en-japan.com",method:.GET, parameters: Parameters).responseJSON(completionHandler: { response in
//            print(response.value) // レスポンスがディクショナリ形式で入っている
//        })
        
        
    }
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        var controllers : [UIViewController] = []
//        for i in 1...4 {
//            let controller   = UITableViewController(
//                nibName: "ArticleTableViewController",
//                bundle:  nil
//            )
//            controller.title = "MENU" + String(i)
//            controllers.append(controller)
//        }
//
//        let parameters: [CAPSPageMenuOption] = [
//            .menuItemSeparatorWidth(4.3),
//            .useMenuLikeSegmentedControl(true),
//            .menuItemSeparatorPercentageHeight(0.1)
//        ]
//        pageMenu = CAPSPageMenu(
//            viewControllers: controllers,
//            frame:           CGRect(x: 0.0, y: 0.0, width: self.view.frame.width, height: self.view.frame.height),
//            pageMenuOptions: parameters
//        )
//
//        self.addChildViewController(pageMenu!)
//        self.view.addSubview(pageMenu!.view)
//        pageMenu?.didMove(toParentViewController: self)
        
        
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
}

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

