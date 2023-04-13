//
//  CampusMap.swift
//  parking_app
//
//  Created by Bianka B on 4/12/23.
//

import Foundation
import SwiftUI
import WebKit


struct WebView: UIViewRepresentable {
    let url: URL
    
    func makeUIView(context: Context) -> some UIView {
        let webView = WKWebView()
        let request = URLRequest(url:url)
        webView.load(request)
        return webView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
    }
}

struct CampusMap: View {
  var body: some View {
      VStack {
          WebView(url: URL(string:"https://map.nmsu.edu")!)
      }
  }
}



