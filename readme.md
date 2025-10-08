# 🧩 ColorChessBoard

A simple SwiftUI project that displays an 8x8 color-based grid (similar to a chessboard), where different colors and symbols represent different pieces or states like elephants, camels, and more. The board can be recalculated dynamically using a button.

---

## 📷 Preview

### 🎞️ Screen Recording

https://github.com/your-username/ColorChessBoard/assets/screenshots/Simulator%20Screen%20Recording%20-%20iPhone%2016e%20-%202025-10-08%20at%2022.11.55.mp4

> *(GitHub doesn’t natively embed `.mp4` playback from repo files, so it's best to upload the video to the "Releases" or as a GitHub Issue comment to get an embeddable URL — or upload to YouTube and link it.)*

---

### 🖼 Screenshots

<img src="screenshots/Simulator%20Screenshot%20-%20iPhone%2016e%20-%202025-10-08%20at%2019.45.53.png" width="300" />
<img src="screenshots/Simulator%20Screenshot%20-%20iPhone%2016e%20-%202025-10-08%20at%2022.12.03.png" width="300" />
<img src="screenshots/Simulator%20Screenshot%20-%20iPhone%2016e%20-%202025-10-08%20at%2022.12.09.png" width="300" />

---

## 🛠 Features

- 8x8 grid display using SwiftUI `ForEach` loops.
- Uses `enum ColorCode` to define and manage color-coded states:
  - 🟡 `.yellow`
  - 🔴 `.red`
  - 🔵 `.blue`
  - ⚫️ `.black` → Represents an Elephant (`E`)
  - 🟢 `.green` → Represents a Camel (`C`)
  - ⚪️ `.undefine` → Empty/default cell
- Tap a button to **recalculate** the board state (e.g., mark rows/columns yellow).
- Clean separation of logic in `ChessViewModel` and `BoardModel`.

---


## 📦 Structure
.
├── Demo-1
│   ├── AppDelegate.swift
│   ├── Assets.xcassets
│   │   ├── AccentColor.colorset
│   │   │   └── Contents.json
│   │   ├── AppIcon.appiconset
│   │   │   └── Contents.json
│   │   └── Contents.json
│   ├── Base.lproj
│   │   ├── LaunchScreen.storyboard
│   │   └── Main.storyboard
│   ├── Coordinator
│   │   └── MainCoordinator.swift
│   ├── Info.plist
│   ├── Model
│   │   └── ColorCode.swift
│   ├── SceneDelegate.swift
│   ├── Service
│   │   └── CalculationService.swift
│   ├── View
│   │   └── ChessView.swift
│   ├── ViewController.swift
│   └── ViewModel
│       └── ChessViewModel.swift
├── Demo-1.xcodeproj
│   ├── project.pbxproj
│   ├── project.xcworkspace
│   │   ├── contents.xcworkspacedata
│   │   ├── xcshareddata
│   │   │   └── swiftpm
│   │   │       └── configuration
│   │   └── xcuserdata
│   │       └── shreyas.xcuserdatad
│   │           └── UserInterfaceState.xcuserstate
│   └── xcuserdata
│       └── shreyas.xcuserdatad
│           ├── xcdebugger
│           │   └── Breakpoints_v2.xcbkptlist
│           └── xcschemes
│               └── xcschememanagement.plist
├── Demo-1Tests
│   ├── CalculationServiceTests.swift
│   └── Demo_1Tests.swift
├── Demo-1UITests
│   ├── Demo_1UITests.swift
│   └── Demo_1UITestsLaunchTests.swift
├── readme.md


## 🤖 About this README

This README file was generated with the assistance of **ChatGPT**.
