# SPM-Wrapping-XCFramework-With-A-Binary-Target-Fails-To-Find-Resources
SPM wrapping an XCFramework with a binary target fails to find resources

Reroduce steps
1) Clone the repo
2) Install Xcode 15.3 and select it as the working xcode
3) Open the project file
4) Run the app
5) See the following error, where the plist of the xcframework wrapped by SPM cannot be found

Runtime error
![Uploading Screenshot 2024-03-06 at 6.22.10 PM.png…]()


# Change to Xcode 15.2 or lower version and the app will run
