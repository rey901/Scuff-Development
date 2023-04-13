//
//  pageView.swift
//  parking_app
//
//  Created by Pat Jojola on 4/9/23.
//

import SwiftUI

struct pageView: View {
    var body: some View {
        
        VStack(spacing: 30) {
            Text("Title")
                .font(.system(size: 100))
                
            Text("Description")
                .font(.system(size: 50))
        }
    }
}

struct pageView_Previews: PreviewProvider {
    static var previews: some View {
        pageView()
    }
}
