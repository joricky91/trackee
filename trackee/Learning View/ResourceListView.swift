//
//  ResourceListView.swift
//  trackee
//
//  Created by Jonathan Ricky Sandjaja on 24/07/22.
//

import SwiftUI

struct ResourceListView: View {
    var dummyResource: [ResourceModel] = [
        ResourceModel(resource: "https://www.youtube.com/watch?v=BPQkpxtgalY&t=1420s"),
        ResourceModel(resource: "https://stackoverflow.com/questions/61423915/core-data-in-swiftui")
    ]
    
    var body: some View {
        List {
            Section(header:
                HStack {
                    Text("Resources")
                        .foregroundColor(Color("darkGray"))
                        .font(.title3)
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    Image(systemName: "plus")
                    .font(.body)
                
            }){
                ForEach(dummyResource, id: \.id) { data in
                    Text(data.resource)
                }
            }
            
        }
        .listStyle(DefaultListStyle())
        .onAppear {
            // Set the default to clear
            UITableView.appearance().backgroundColor = .clear
        }
    }
}

struct ResourceListView_Previews: PreviewProvider {
    static var previews: some View {
        ResourceListView()
    }
}
