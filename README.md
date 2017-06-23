# Page Scroll Using Swipe Gestures

Use of ScrollView followed by Mark Price for the assets and basic implementation of Scroll View.

Implementation of Swipe Gesture Recognizer:

1. Drag two Swipe Gesture Recognizer components in XCODE and reference it to View
2. Change one component in the attribute page to Swipe to Left.
3. Double-check that the other component in the attribute page has Swipe to Right.
4. In Storyboard, select Scroll View and look at attribute page and uncheck Scrolling enabled
5. Reference both components to ViewController.swift and create two functions: one for swiping right and one for swiping left.
6. Use ScrollView function of RectToVisible to enable move (animation must be true)
