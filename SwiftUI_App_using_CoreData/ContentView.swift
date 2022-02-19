    //
    //  ContentView.swift
    //  SwiftUI_App_using_CoreData
    //
    //  Created by Devolper.Scorpio on 19/02/2022.
    //

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var moc
        //Property Rapper
    @FetchRequest(sortDescriptors: []) var students: FetchedResults<Students>
        //Break Down this Statment
        //new @FetchRequest with no sorting just give it me random Result
        //put this result into property of student:FetchedResults<Students>
    var body: some View {
        NavigationView{
            VStack{
                List(students){ student in
                    Text(student.name ?? "Unknown")
                }
            }.navigationTitle("Student List")
                .navigationBarTitleDisplayMode(.large)
                .navigationBarItems(
                    trailing:
                        Button("Add"){
                            addStudent()
                        }
                )
        }
    }
    
    func addStudent(){
        let firstNames = ["Ali","Ahmed","Mohiz","Hammad"]
        let lastNames = ["Ahmed","Babar","Sultan","Gujjar"]
        
        let chosenFirstName = firstNames.randomElement()!
        let chosenLastName = lastNames.randomElement()!
        
        let student = Students(context: moc)
        student.id = UUID()
        student.name = "\(chosenFirstName) \(chosenLastName)"
        
        try?moc.save()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
