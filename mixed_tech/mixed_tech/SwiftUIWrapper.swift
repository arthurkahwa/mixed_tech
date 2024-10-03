//
//  SwiftUIWrapper.swift
//  mixed_tech
//
//  Created by Arthur Nsereko Kahwa on 10/3/24.
//

import SwiftUI

@MainActor
@objc
class SwiftUIWrapper: NSObject {
     @objc func createSwiftUIView() -> UIViewController {
        let viewController = UIHostingController(rootView: SwiftUIView())
        
         return viewController
    }
}
