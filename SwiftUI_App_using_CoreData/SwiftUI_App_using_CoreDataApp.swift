//
//  SwiftUI_App_using_CoreDataApp.swift
//  SwiftUI_App_using_CoreData
//
//  Created by Devolper.Scorpio on 19/02/2022.
//

import SwiftUI

@main
struct SwiftUI_App_using_CoreDataApp: App {
    //instatnce of Data Controller that is live entier time
    @State private var dataController = DataController()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
