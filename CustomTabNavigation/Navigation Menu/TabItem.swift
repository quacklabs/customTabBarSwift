//
//  TabItem.swift
//  CustomTabNavigation
//
//  Created by Sprinthub on 09/10/2019.
//  Copyright © 2019 Sprinthub Mobile. All rights reserved.
//

import UIKit

enum TabItem: String, CaseIterable {
    case calls = "calls"
    case photos = "photos"
    case contacts = "friends"
    case messages = "messages"
    
    
    var viewController: UIViewController {
        switch self {
        case .calls:
            return CallsViewController()
        case .contacts:
            return ContactsViewController()
        case .photos:
            return PhotosViewController()
        case .messages:
            return InboxViewController()
        }
    }
    
    var icon: UIImage? {
        switch self {
        case .calls:
            return UIImage(named: "ic_phone")!
        case .photos:
            return UIImage(named: "ic_camera")!
        case .contacts:
            return UIImage(named: "ic_contacts")!
        case .messages:
            return UIImage(named: "ic_message")!
        }
    }
    
    var displayTitle: String {
        return self.rawValue.capitalized(with: nil)
    }
}
