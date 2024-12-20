import SwiftUI

// Extension to support hex color
extension Color {
    init(hex: String) {
        let hexSanitized = hex.replacingOccurrences(of: "#", with: "")
        var hexInt = UInt64()
        Scanner(string: hexSanitized).scanHexInt64(&hexInt)
        
        let red = Double((hexInt & 0xFF0000) >> 16) / 255.0
        let green = Double((hexInt & 0x00FF00) >> 8) / 255.0
        let blue = Double(hexInt & 0x0000FF) / 255.0
        
        self.init(red: red, green: green, blue: blue)
    }
}

struct HomeView: View {
    let customPink = Color(hex: "#FF83A8") // Define the custom color
    @State private var isNavigating = false // State to manage navigation

    var body: some View {
        NavigationView {
            ZStack {
                // Background color
                Color.white.edgesIgnoringSafeArea(.all)
                
                // Image on top of the heading
                Image("home") // Replace "yourImage" with your image name
                    .resizable()
                    .scaledToFit()
                    .frame(width: 1000, height: 500) // Adjust the size of the image
                    .padding(.top, -150) // Padding above the image to give it some space

                VStack(spacing: 5) { // Reduced spacing between elements
                    // Heading - Set the color to black
                    Text("Welcome to PixPlay")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.black) // Set the color to black
                        .padding(.top, 470) // Adjust padding to move the text closer to the next section

                    // Updated Description Text
                    Text("Snap, share, and explore your moments with friends!")
                        .font(.body)
                        .multilineTextAlignment(.center) // Center align the text
                        .foregroundColor(.gray)
                        .frame(width: 300) // Match the width of the description to the button
                        .lineLimit(2) // Limit to two lines
                        .fixedSize(horizontal: false, vertical: true) // Allow vertical resizing

                    // NavigationLink to ContentView when button is pressed
                    NavigationLink(destination: ContentView(), isActive: $isNavigating) {
                        Button(action: {
                            // Action when the button is pressed
                            print("Try Me button pressed")
                            isNavigating = true // Trigger navigation
                        }) {
                            Text("Try Me")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding()
                                .frame(width: 300) // Set a fixed width for the button
                                .background(customPink) // Use custom pink for the button background
                                .cornerRadius(10) // Rounded corners for the button
                        }
                        .padding(.top, 20) // Reduced padding to bring the button closer
                    }

                    // Footer Text - "Developed by PixPlay"
                    HStack {
                        Spacer() // This pushes the text to the center horizontally
                        
                        Text("Developed by ")
                            .font(.body)
                            .foregroundColor(.gray)
                        
                            
                        
                        Button(action: {
                            // Action for PixPlay link (e.g., opening a website, etc.)
                            print("PixPlay clicked")
                        }) {
                            Text("PixPlay")
                                .font(.body)
                                .fontWeight(.bold) // Make PixPlay bold
                                .foregroundColor(customPink) // Custom color for PixPlay
                        }
                        
                        Spacer() // Ensures the text stays centered
                    }
                    .padding(.top, 120) // Reduced padding for the bottom text
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

