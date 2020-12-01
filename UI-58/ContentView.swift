//
//  ContentView.swift
//  UI-58
//
//  Created by にゃんにゃん丸 on 2020/12/01.
//

import SwiftUI
import SafariServices

struct ContentView: View {
    
    @State var show = false
    @State var change = false
    var body: some View {
        
        Button(action: {
            show.toggle()
            
        }, label: {
            Text("Push")
                .font(.system(size: 60, weight: .heavy))
                .foregroundColor(.white)
                .background(Color.green)
                .clipShape(Capsule())
            
            
            
        })
        
        
        
        
        
        .fullScreenCover(isPresented: $show, content: {
            SafariView()
        })
        
        Spacer(minLength: 0)
        
        Button(action: {change.toggle()}, label: {
            Text(change ? "Me" : "Push")
                .bold()
                .padding(.horizontal,20)
                .padding(.vertical,10)
                .foregroundColor(.white)
                .background(Color.red)
                .clipShape(Capsule())
            
        })
       
        
        
    }
    
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct SafariView : UIViewControllerRepresentable {
    
    let url = "https://developer.apple.com/"
    func makeUIViewController(context: Context) -> SFSafariViewController{
        
        let Controller = SFSafariViewController(url: URL(string: url)!)
        return Controller
        
    }
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {
        
        
    }
}
