//
//  NommiesApp.swift
//  Nommies
//
//  Created by Syed ShahRukh Haider on 01/06/2021.
//

import SwiftUI

@main
struct NommiesApp: App {
    var body: some Scene {
        WindowGroup {
            WelcomeView()
        }
    }
}

func GetRect() -> CGRect{
    return UIScreen.main.bounds
}
