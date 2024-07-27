import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    
    var body: some View {
        VStack {
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            if let url = URL(string: framework.urlString) ?? URL(string: "https://www.apple.com") {
                Link(destination: url) {
                    AFButton(text: "Learn more...")
                }
            } else {
                Text("Invalid URL")
                    .foregroundColor(.red)
            }
        }
        .padding()
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
        .preferredColorScheme(.dark)
}
