//
//  Detail.swift
//
//
//  Created by 홍성준 on 3/27/24.
//

import Vercel
import TokamakCore
import TokamakStaticHTML

struct Detail: View {
  
  @Environment(\.request) var req
  
  var body: some View {
    VStack {
      Text("Detail View")
        .font(.title)
      
      Text("This is a server rendered SwiftUI website")
        .font(.subheadline)
      
      Text("Your ip address \(req.clientIPAddress)")
    }
  }
  
}
