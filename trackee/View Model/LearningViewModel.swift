//
//  CoreDataViewModel.swift
//  trackee
//
//  Created by Jonathan Ricky Sandjaja on 25/07/22.
//

import Foundation
import CoreData

class LearningViewModel: ObservableObject {
    
    let container: NSPersistentContainer
    @Published var title: String = ""
    @Published var domain: String = ""
    @Published var link: String = ""
    @Published var savedLearning: [Learning] = []
    @Published var selectedLearning: Learning?
    
    init() {
        container = PersistenceController.shared.container
        fetchLearning()
    }
    
    func fetchLearning() {
        let request = NSFetchRequest<Learning>(entityName: "Learning")
        
        do {
            savedLearning = try container.viewContext.fetch(request)
        } catch let error {
            print("Error fetching. \(error)")
        }
        
    }
    
    func addLearning() {
        let newLearning = Learning(context: container.viewContext)
        newLearning.id = UUID()
        newLearning.title = title
        newLearning.domain = domain
        
//        newLearning.addToResource(<#T##value: Resource##Resource#>)
        
        saveData()
    }
    
    func addResource() {
        let newResource = Resource(context: container.viewContext)
        newResource.link = link
        newResource.learning = selectedLearning
         
        saveData()
    }
    
    func saveData() {
        do {
            try container.viewContext.save()
            fetchLearning()
        } catch let error {
            print("Error saving. \(error)")
        }
        
    }
}
