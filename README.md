# 📱 CS 1998 – Assignment 2: Profile & Edit Profile App (UIKit)

### 🧾 Description  
A simple two-page iOS application built **programmatically using UIKit**, following the **MVC design pattern**.  
The app includes a **Profile page** that displays user information and an **Edit Profile page** that allows updating it.  
Users can navigate between pages using a `UINavigationController`, and changes are communicated back via **delegation**.  

---

## 🧠 Learning Objectives  
- Follow the **Model–View–Controller (MVC)** design pattern.  
- Build UI elements (`UILabel`, `UIButton`, `UIImageView`, `UITextField`, etc.) programmatically.  
- Apply **Auto Layout** with `NSLayoutConstraint` for responsive positioning.  
- Use **UINavigationController** for push/pop navigation.  
- Implement **delegation** to pass data between view controllers.  
- Work with **design systems** using custom `UIColor` and `UIFont` extensions.  
- Manage version control using **Git and GitHub**.  

---

## 📂 Project Structure  
| File | Description |
|------|--------------|
| **ProfileVC.swift** | Implements the main profile page UI — displays profile image, name, bio, hometown, and major. Includes an “Edit Profile” button that pushes `EditProfileVC`. |
| **EditProfileVC.swift** | Implements the edit profile page UI — allows editing hometown and major through `UITextField`. Contains a “Save” button that pops back to `ProfileVC` and uses **delegation** to update the data. |
| **UIColor+Extension.swift** | Contains the design system colors from Figma. |


---

## 🎨 Design & Styling  
- UI built according to **Figma design** provided by instructors.  
- Fonts and colors accessed via `.systemFont(ofSize:, weight:)` and `UIColor.a2.<color_name>`.  
- Circular profile images created with `layer.cornerRadius` and `layer.masksToBounds`.  
- Each `viewDidLoad()` calls helper setup functions for clarity and organization.  

---

## ⚙️ Technologies Used  
- Swift 5  
- UIKit  
- Auto Layout / NSLayoutConstraint  
- UINavigationController  
- Delegation Pattern  
- Git + GitHub  
- Figma (for UI reference)

---
Done By Aishah Abdul-Hakeem and Ysrael Hernandez


