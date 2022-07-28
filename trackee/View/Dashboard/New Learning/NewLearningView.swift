//
//  NewLearningView.swift
//  trackee
//
//  Created by Jonathan Ricky Sandjaja on 25/07/22.
//

import SwiftUI

struct NewLearningView: View {
    @Binding var isPresented: Bool
    @ObservedObject var vm: LearningViewModel
    var domainChoice = ["Tech", "Design", "Business"]
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Insert title", text: $vm.title)
                        .background()
                } header: {
                    Text("Title")
                }
                
                Section {
                    Picker("Choose a domain", selection: $vm.domain) {
                        ForEach(domainChoice, id: \.self) {
                            Text($0)
                        }
                    }
                } header: {
                    Text("Domain")
                }
            }
            .onAppear {
                UITableView.appearance().backgroundColor = .clear
            }
            .background(Color("lightBlue"))
            .navigationTitle("New Learning")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing:
                Button(action: {
                    vm.addLearning()
                    isPresented = false
                }, label: {
                    Text("Save")
                })
            )
        }
    }
}

//struct NewLearningView_Previews: PreviewProvider {
//    static var previews: some View {
//        NewLearningView()
//    }
//}
