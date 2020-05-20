//
//  ContentView.swift
//  TONI Pro
//
//  Created by 曽谷朱由 on 2020/05/20.
//  Copyright © 2020 曽谷朱由. All rights reserved.
//

import SwiftUI
import SafariServices


struct ContentView: View {
    @State var safari = false
    @State var url = ""
    
    var body: some View {
        
        Button(action: {
            self.url = "https://filmarks.com/users/TO2I"
            self.safari = true
        }) {
            Text(/*@START_MENU_TOKEN@*/"Jump to my Filmarks!"/*@END_MENU_TOKEN@*/)
                .lineLimit(0)}
            .sheet(isPresented: self.$safari) {
                SafariView(url:URL(string: self.url)!)
            }
            
    }
    

    struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
struct SafariView: UIViewControllerRepresentable {

    let url: URL

    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }

    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {

    }

}
