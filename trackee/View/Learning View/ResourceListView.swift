//
//  ResourceListView.swift
//  trackee
//
//  Created by Jonathan Ricky Sandjaja on 24/07/22.
//

import SwiftUI

struct ResourceListView: View {
    
    var learn: Learning
    @State var isPresented = false
    @ObservedObject var vm: LearningViewModel
    
    var body: some View {
        List {
            Section(header:
                HStack {
                    Text("Resources")
                        .foregroundColor(Color("darkGray"))
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                Button {
                    isPresented = true
                } label: {
                    Image(systemName: "plus")
                    .font(.body)
                }
                
            }){
                if let resources = learn.resource?.allObjects as? [Resource] {
                    ForEach(resources) { data in
                        Link(data.name ?? "", destination: URL(string: data.link ?? "")!)
                    }
                }
            }
            .headerProminence(.increased)
            
        }
        .listStyle(DefaultListStyle())
        .onAppear {
            // Set the default to clear
            UITableView.appearance().backgroundColor = .clear
        }
        .sheet(isPresented: $isPresented) {
            NewResourceView(learning: learn, vm: vm, isPresented: $isPresented)
        }
    }
}

//struct ResourceListView_Previews: PreviewProvider {
//    static var previews: some View {
//        ResourceListView()
//    }
//}
