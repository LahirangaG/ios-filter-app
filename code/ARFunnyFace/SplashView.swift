import SwiftUI

struct SplashView: View {
    @State private var isActive = false
    @State private var imageScale: CGFloat = 1.0 // State for image scale effect

    var body: some View {
        VStack {
            if isActive {
                // Main screen or Home View
                HomeView()
                    .transition(.opacity) // Fade transition when navigating to HomeView
            } else {
                ZStack {
                    Color.white // Background color
                        .edgesIgnoringSafeArea(.all)

                    // Centered Image
                    Image("splash") // Replace with your splash image name
                        .resizable()
                        .scaledToFit()
                        .frame(width: 400, height: 400) // Adjust size as necessary
                        .scaleEffect(imageScale) // Apply scale effect
                        .onAppear {
                            // Animation for scaling
                            withAnimation(Animation.easeInOut(duration: 2).repeatForever(autoreverses: true)) {
                                imageScale = 1.1 // Scale up slightly
                            }
                        }
                }
                .onAppear {
                    // Timer for splash screen duration
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                        withAnimation {
                            self.isActive = true
                        }
                    }
                }
            }
        }
        .animation(.easeInOut(duration: 1), value: isActive) // Smooth fade-in transition
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
