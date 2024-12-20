Please go under edit and edit this file as needed for your project.  There is no seperate documentation needed.

# Project Name - PixPlay
# Student Id - IT21232954
# Student Name - Silva R L G

#### 01. Brief Description of Project - PixPlay is an iOS application that merges creativity with technology, offering a fun and immersive photography experience enhanced by Augmented Reality (AR). With PixPlay, users can explore a variety of AR filters and effects, capture photos in real time, and save their creations effortlessly.

Key Features:
1. AR Filters and Effects: Add a touch of magic to your photos with interactive augmented reality overlays.
2. Real-Time Previews: See filters and AR effects live before capturing your perfect shot.
3. Automatic Saving: All captured photos are automatically stored in your device's gallery.
4. No Registration Required: Enjoy hassle-free access—no sign-up or login needed.

#### 02. Users of the System - 

1. General Users: Anyone who wants to capture creative and fun photos without needing an account or registration.
2. Photography Enthusiasts: Individuals interested in experimenting with real-time filters and AR effects for their photos.
3. Social Media Users: People looking to enhance their photos with engaging AR overlays before sharing them on social platforms.
4. Tech-Savvy Individuals: Users curious about exploring Augmented Reality features in a simple, user-friendly app.
5. Families and Kids: Parents and children who want to enjoy playful photo effects and AR experiences together.

#### 03. What is unique about your solution -

1. AR Photo Filters: Combines real-world environments with immersive AR effects.
2. No Registration Needed: Instantly accessible for everyone.
3. Real-Time Previews: Apply and view filters live before capturing.
4. Automatic Saving: Photos are directly saved to the gallery.
5. User-Friendly Design: Fun, simple, and perfect for all ages.

#### 04. Briefly document the functionality of the screens you have (Include screen shots of the main screens you have)

<img src="Resources/screenshot 1.png" width="300" />
<img src="Resources/screenshot 2.png" width="300" />

#### 05. Give examples of best practices used when writing code

1. Readable Code: Use clear naming conventions and add comments for better understanding.
2. Modular Design: Break functionality into reusable functions and classes.
3. Error Handling: Implement do-catch blocks to manage errors gracefully.
4. Optimize Performance: Use background threads for heavy tasks to keep the UI responsive.
5. Version Control: Track changes and collaborate effectively using Git.

#### 06. UI Components used

Camera View, Filter Selection Panel, Text, HStack, Button, Image


#### 07. Testing carried out

In this project, unit testing was implemented for several key components to ensure the app's functionality and performance. Below are the main areas tested:

1. AR Filter Logic
2. Photo Capture Functionality
3. Filter Selection
4. Button Actions
5. App Initialization

Example test class for ARFilterLogic:

```swift
Copy code
import XCTest
@testable import PixPlay

class ARFilterLogicTests: XCTestCase {

    func testARFilterApplication() {
        let viewController = CameraViewController()
        
        // Initially, no filter should be applied
        XCTAssertNil(viewController.currentFilter)
        
        // Simulate filter selection
        viewController.applyFilter(named: "Vintage")
        
        // After applying filter, current filter should be "Vintage"
        XCTAssertEqual(viewController.currentFilter, "Vintage")
    }
}
```

#### 08. Documentation 

(a) Design Choices

**SwiftUI** for easy UI creation and updates.
**ARSCNView** for displaying AR objects.
**NavigationStack** for smooth transitions.
**@State** for managing visibility and navigation.
**Animations** for smooth transitions.
**Modular** design for easy maintenance.

(b) Implementation Decisions

**AR Integration**: Used `ARSCNView` for interactive AR objects.
**State Management**: Managed UI changes with `@State`.
**Custom Views**: Organized screens with custom views.
**Navigation**: Used `NavigationStack` and `NavigationLink` for transitions.
**User Experience**: Simple design with large buttons for kids.

(c) Challenges

**AR Object Placement**: Ensuring accuracy in real-world environments, especially on older devices.
**State Management**: Handling multiple UI states efficiently with @State.
**Performance**: Optimizing AR features for smooth performance across devices.
**Testing**: AR testing in varied environments was challenging.

#### 09. References and All GenAI Prompts and Responses that you got

**References**:
    - https://stackoverflow.com/questions/tagged/ios
    - https://developer.apple.com/documentation/

- The following prompts and responses from GenAI (ChatGPT) were used to assist with various aspects of the project:

    **Prompt 1**: *"How can I ensure smooth performance with AR features on older iOS devices?"*  
    **Response**: *[Response]*

    **Prompt 2**: *"What are some design considerations for making an app intuitive for kids using AR and interactive elements?"*  
    **Response**: *[Response]*

#### 10. Reflection

Challenges Faced:
1. User Interface for Kids: Designing a simple, intuitive UI for children while keeping it engaging was challenging.
2. AR Object Placement: Ensuring accurate AR object placement in different environments was difficult due to device performance and lighting conditions.
3. State Management: Managing multiple states for navigation and interactions in SwiftUI required careful coordination.
4. Performance on Older Devices: AR features caused performance issues on lower-end devices, requiring optimization.
5. Testing AR Features: Testing in real-world conditions was tricky due to variability in lighting and space.

Approach Differently
1. Prototyping: Start with more thorough wireframing and user flow testing.
2. Early Testing: Test AR features and performance on various devices earlier in the development.
3. Collaboration: Work with AR design experts to improve object placement and performance.
4. User Feedback: Conduct more user testing, especially with kids, to refine UI and interactions.
5. Accessibility Focus: Integrate accessibility features for a more inclusive experience.

  

