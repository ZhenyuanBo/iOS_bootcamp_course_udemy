//
//  ContentView.swift
//  H4XOR News
//
//  Created by Zhenyuan Bo on 2020-10-21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List(posts) {(post) in
                Text(post.title)
            }
            .navigationBarTitle("H4XOR NEWS")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//for a post to be identifiable, it has to have id
struct Post: Identifiable{
    let id: String
    let title: String
}

let posts = [
    Post(id: "1", title: "Hello"),
    Post(id: "2", title: "Bonjour"),
    Post(id: "3", title: "Hola")
]

