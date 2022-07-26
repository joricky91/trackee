////
////  ResourceViewModel.swift
////  trackee
////
////  Created by Jonathan Ricky Sandjaja on 25/07/22.
////
//
//import Foundation
//import CoreData
//
//class ResourceViewModel: ObservableObject {
//    
//    let container: NSPersistentContainer
//    @Published var savedResource: [Resource] = []
//    
//    init() {
//        container = PersistenceController.shared.container
//        fetchResource()
//    }
//    
//    func fetchResource() {
//        let request = NSFetchRequest<Resource>(entityName: "Resource")
//        
//        do {
//            savedResource = try container.viewContext.fetch(request)
//        } catch let error {
//            print("Error fetching. \(error)")
//        }
//        
//    }
//    
//    func addLearning(resourceLink: String) {
//        let newResource = Resource(context: container.viewContext)
//        newResource.id = UUID()
//        newResource.link = resourceLink
//        
//        saveData()
//    }
//    
//    func saveData() {
//        do {
//            try container.viewContext.save()
//            fetchResource()
//        } catch let error {
//            print("Error saving. \(error)")
//        }
//        
//    }
//}
