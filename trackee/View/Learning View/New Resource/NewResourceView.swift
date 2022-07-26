//
//  NewLearningView.swift
//  trackee
//
//  Created by Jonathan Ricky Sandjaja on 25/07/22.
//

import SwiftUI

struct NewResourceView: View {
    @State var resource = ""
    var learning: Learning
    @ObservedObject var vm: LearningViewModel
    @Binding var isPresented: Bool
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Insert resource link...", text: $vm.link)
                        .background()
                } header: {
                    Text("Link")
                }
            }
            .onAppear {
                UITableView.appearance().backgroundColor = .clear
            }
            .background(Color("lightBlue"))
            .navigationTitle("New Resource")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing:
                Button(action: {
                    vm.addResource()
                    isPresented = false
                }, label: {
                    Text("Save")
                })
            )
        }
    }
}

//struct NewResourceView_Previews: PreviewProvider {
//    static var previews: some View {
//        NewResourceView()
//    }
//}
