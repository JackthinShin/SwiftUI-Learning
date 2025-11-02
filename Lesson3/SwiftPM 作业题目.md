** SwiftPM 作业题目**  
##   
作业目标  
##   
## **通过本次作业，你将：**  
	1.	使用 SwiftPM 创建一个 **模块化 SwiftUI 组件库**  
	2.	编写 **两个可复用的 SwiftUI 小组件**（FancyButton + GradientText）  
	3.	实现组件间依赖和复用  
	4.	支持参数化、可配置组件属性  
	5.	能在新的 iOS 项目中导入并使用你的组件库  
	6.	（可选）上传 GitHub 并支持远程引用  
  
⸻  
##   
作业要求  
##   
1️⃣** 创建 Swift Package**  
	•	Package 名称：ClubUI  
	•	目录结构：  
  
```
ClubUI/
├── Package.swift
├── Sources/
│   ├── FancyButton/
│   │   └── FancyButton.swift
│   └── GradientText/
│       └── GradientText.swift
└── Tests/
    └── ClubUITests/

```
2️⃣** 组件功能描述**  
##   
**2.1 FancyButton**  
	•	类型：View  
	•	功能：  
	•	渐变背景按钮  
	•	可配置文字、圆角半径、背景渐变颜色  
	•	点击动作可绑定闭包  
	•	可复用性：  
	•	可在其他组件或 App 中直接调用  
	•	示例使用：  
  
```
FancyButton("Tap Me") {
    print("Button tapped!")
}

```
  
**2.2 GradientText**  
	•	类型：View  
	•	功能：  
	•	渐变文字显示  
	•	可自定义文字、颜色数组、字体大小、字体类型  
	•	可复用性：  
	•	可在 App 或其他组件中使用  
	•	示例使用：  
  
GradientText("Hello ClubUI!", colors: [.purple, .blue])  
  
  
⸻  
##   
3️⃣** 模块间依赖（可选）**  
	•	允许 GradientText target 依赖 FancyButton target  
	•	Package.swift 示例：  
  
.target(name: "GradientText", dependencies: ["FancyButton"])  
  
	•	注意：**禁止循环依赖**  
  
⸻  
##   
4️⃣** 测试与使用**  
	•	在新 iOS 项目中引用：  
	1.	**File → Add Packages → Local Package**  
	2.	使用：  
  
```
import FancyButton
import GradientText

VStack {
    FancyButton("Press Me") { print("Tapped!") }
    GradientText("Hello ClubUI!", colors: [.purple, .blue])
}

```
  
  
⸻  
##   
5️⃣** 拓展挑战（可选）**  
	1.	参数化组件属性（字体大小、渐变方向、圆角半径等）  
	2.	编写单元测试（Tests/ClubUITests/）  
	3.	使用 GitHub Actions 实现 CI/CD 自动构建和测试  
	4.	SwiftUI 预览增强，展示不同配置效果  
##   
提交要求  
	1.	提交到iOS ouc仓库  
	2.	README.md 内容：  
	•	每个组件功能说明  
	•	使用示例  
	•	拓展挑战说明（如完成）  
	3.	目录结构清晰，组件文件可直接编译  
