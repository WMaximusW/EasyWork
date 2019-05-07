//
//  RouterHelper.swift
//  EasyWork
//
//  Created by Maximus Nguyen on 5/7/19.
//  Copyright © 2019 Maximus Nguyen. All rights reserved.
//

import Foundation
import UIKit

class RouterHelper <T:UIViewController> {
    func Storyboard_GetView(storyBoard: String, identifierView: String) -> UIViewController {
        
        let storyboard = UIStoryboard(name: storyBoard, bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: identifierView) as! T
        
        return viewController;
    }
    
    func Storyboard_RedictView_Navigation(parent:UIViewController, view: UIViewController) -> Void {
        parent.navigationController?.pushViewController(view, animated: true);
    }
}
