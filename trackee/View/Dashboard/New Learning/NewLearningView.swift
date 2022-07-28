//
//  NewLearningView.swift
//  trackee
//
//  Created by Jonathan Ricky Sandjaja on 25/07/22.
//

import SwiftUI

struct NewLearningView: View {
//    @State var title: String = ""
//    @State var domain: String = ""
//    @State var duration: Int = 0
    @Binding var isPresented: Bool
    @ObservedObject var vm: LearningViewModel
    var domainChoice = ["Tech", "Design", "Business"]
    var durationRange = [5000, 10000, 15000, 20000, 25000, 30000, 35000, 40000, 45000, 50000, 55000, 60000]
    
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
                
                Section {
                    Picker("Pick a duration", selection: $vm.duration){
                        ForEach(0..<61, id: \.self) { i in
                            Text("\(i) min").tag(i)
                        }
                    }
                    
                } header: {
                    Text("Duration")
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
