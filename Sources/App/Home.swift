//
//  Home.swift
//
//
//  Created by 홍성준 on 3/27/24.
//

import Vercel
import TokamakCore
import TokamakStaticHTML

struct Home: View {
  
  @Environment(\.request) var req
  
  var body: some View {
    VStack(alignment: .leading) {
      HTMLTitle("Hello, Hogumachu")
      HTMLMeta(charset: "utf-8")
      Text("Hello, Tokamak")
        .font(.title)
        .padding(.bottom, 10)
      Text("This is a fully dynamic server side swift app powered by Tokamak")
      Text("The current time is \(DateFormatter().string(from: Date()))")
      Text("Your IP address is \(req.clientIPAddress)")
      Spacer().frame(height: 20)
      
      Link(destination: .init(string: "http://\(req.host)/detail")!) {
        VStack(alignment: .center) {
          Text("detail")
            .foregroundColor(Color.white)
        }
        .padding(10)
        .background(Color.black)
        .clipShape(RoundedRectangle(cornerRadius: 16))
      }
    }
    .padding(22)
    .background(Color.gray.opacity(0.1))
    .clipShape(RoundedRectangle(cornerRadius: 8))
  }
  
}
