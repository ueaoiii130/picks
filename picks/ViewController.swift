//
//  ViewController.swift
//  picks
//
//  Created by 阪上葵 on 2018/09/04.
//  Copyright © 2018年 ueao. All rights reserved.
//

import UIKit
import PageMenu

class ViewController: UIViewController {

    var pageMenu : CAPSPageMenu?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var controllers : [UIViewController] = []
        var feeds: [Dictionary<String, String>] =
            [
                [
                    "link": "http://ajax.googleapis.com/ajax/services/feed/load?v=1.0&q=http://careerhack.en-japan.com/feed/application/rss",
                    "title": "TOP"
                ],
                [
                    "link": "http://ajax.googleapis.com/ajax/services/feed/load?v=1.0&q=http://careerhack.en-japan.com/category/career/application/rss",
                    "title": "キャリア"
                ],
                [
                    "link": "http://ajax.googleapis.com/ajax/services/feed/load?v=1.0&q=http://careerhack.en-japan.com/category/life/application/rss",
                    "title": "ライフ"
                ],
                [
                    "link": "http://ajax.googleapis.com/ajax/services/feed/load?v=1.0&q=http://careerhack.en-japan.com/category/eventreport/application/rss",
                    "title": "イベントレポート"
                ],
                [
                    "link": "http://ajax.googleapis.com/ajax/services/feed/load?v=1.0&q=http://careerhack.en-japan.com/category/know-how/application/rss",
                    "title": "ノウハウ"
                ],
                [
                    "link": "http://ajax.googleapis.com/ajax/services/feed/load?v=1.0&q=http://careerhack.en-japan.com/category/summary/application/rss",
                    "title": "まとめ"
                ],
                [
                    "link": "http://ajax.googleapis.com/ajax/services/feed/load?v=1.0&q=http://careerhack.en-japan.com/category/trend/application/rss",
                    "title": "トレンド"
                ]
                ]
        for feed in feeds
        {
            var feedController = ArticleTableViewController(nibName: "TableViewController", bundle: nil)
//            feedController.parent = self
            print("parent")
            feedController.fetchFrom = feed["link"]!
            feedController.title = feed["title"]
            controllers.append(feedController)
        }
        let parameters: [CAPSPageMenuOption] = [
            .menuItemSeparatorWidth(4.3),
            .useMenuLikeSegmentedControl(true),
            .menuItemSeparatorPercentageHeight(0.1)
        ]
        pageMenu = CAPSPageMenu(
            viewControllers: controllers,
            frame:           CGRect(x: 0.0, y: 0.0, width: self.view.frame.width, height: self.view.frame.height),
            pageMenuOptions: parameters
        )
        
        self.addChildViewController(pageMenu!)
        self.view.addSubview(pageMenu!.view)
        pageMenu?.didMove(toParentViewController: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    pageMenu!.delegate = self


}

