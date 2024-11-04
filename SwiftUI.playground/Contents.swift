import Foundation
import SwiftUI
import PlaygroundSupport


struct CustomSegmentedControl: View {
    @Binding var preselectedIndex: Int
    var options: [String]
    // this color is coming theme library
    let color = Color.blue

    var body: some View {
        HStack(spacing: 0) {
            ForEach(options.indices, id:\.self) { index in
                ZStack {
                    Rectangle()
                        .fill(color.opacity(0.2))

                    Rectangle()
                        .fill(color)
                        .cornerRadius(20)
                        .padding(3)
                        .opacity(preselectedIndex == index ? 1 : 0.01)
                        .onTapGesture {
                                withAnimation(.interactiveSpring()) {
                                    preselectedIndex = index
                                }
                            }
                }
                .overlay(
                    Text(options[index])
                )
            }
        }
        .frame(height: 40)
        .cornerRadius(14)
    }
}
// Main View with a @State property for preselectedIndex
struct ContentView: View {
    @State private var preselectedIndex: Int = 0 {
        didSet{
            print("RRRRRRR\(preselectedIndex)")
        }
    }
    
    var body: some View {
        CustomSegmentedControl(preselectedIndex: $preselectedIndex, options: ["1", "2","3","4","5"])
            .frame(width: 300)
    }
}

// Set the live view
PlaygroundPage.current.setLiveView(ContentView())
