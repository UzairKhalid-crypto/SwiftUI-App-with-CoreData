//
//  DataController.swift
//  SwiftUI_App_using_CoreData
//
//  Created by Devolper.Scorpio on 19/02/2022.
//

import CoreData

class DataController : ObservableObject{
    //What is NSPersistentContainer?
    //It is Core Data Type which is Responsible for
    //Coding a Model & then giving us acess to data inside.
    let container = NSPersistentContainer(name: "Student_Information")
    
    init(){
        //load Persistent Store
        container.loadPersistentStores{ description , error in
            print("Unable to Load : \(String(describing: error?.localizedDescription))")
        }
    }
    
    
}
