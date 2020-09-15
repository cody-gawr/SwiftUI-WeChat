//
//  SearchEntryView.swift
//  SwiftUI-WeChat
//
//  Created by Gesen on 2019/11/29.
//  Copyright © 2019 Gesen. All rights reserved.
//

import SwiftUI

struct SearchEntryView: View {
    @State private var isSearchPresented: Bool = false
    
    var body: some View {
        Button(action: { self.isSearchPresented.toggle() }) {
            VStack {
                Spacer()
                HStack(spacing: 4) {
                    Spacer()
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .frame(width: 13, height: 13)
                        .foregroundColor(.secondary)
                    Text("搜索")
                        .font(.system(size: 16))
                        .foregroundColor(.secondary)
                    Spacer()
                }
                Spacer()
            }
            .background(Color("search_corner_background"))
            .cornerRadius(6)
            .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
        }
        .background(Color("light_gray"))
        .sheet(isPresented: $isSearchPresented, content: { SearchView() })
    }
}

struct SearchEntryView_Previews: PreviewProvider {
    static var previews: some View {
        SearchEntryView()
            .previewLayout(.fixed(width: 414, height: 44))
    }
}
