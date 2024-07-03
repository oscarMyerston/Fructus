//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Oscar David Myerston Vega on 2/07/24.
//

import SwiftUI

struct SettingsRowView: View {

    // MARK: - PROPERTIES
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestintation: String? = nil

    // MARK: - BODY

    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if (linkLabel != nil && linkDestintation != nil) {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestintation!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                }
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Developer", content: "John / Jane")
            .previewLayout(.fixed(width: 375, height: 68))
            .padding()
    }
}
