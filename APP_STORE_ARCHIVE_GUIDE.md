# 🚀 App Store Connect TestFlight Archive Guide

## 📱 Manager 3an3an - iOS Distribution Setup

### ✅ **Current Configuration**
- **Bundle ID**: `com.m3an3an1.manager`
- **Team ID**: `4L35JZTZ3A`
- **App Name**: Manager 3an3an iOS
- **Firebase**: ✅ Properly configured

---

## 🔧 **Step 1: Configure Code Signing in Xcode**

I've opened your Xcode project. Now configure the signing:

### 1. **Select Runner Target**
   - In Xcode navigator, select **"Runner"** project
   - Select **"Runner"** target

### 2. **Configure Signing & Capabilities**
   ```
   Team: [Select your team - 4L35JZTZ3A]
   Bundle Identifier: com.m3an3an1.manager
   Signing Certificate: Apple Distribution
   Provisioning Profile: [Let Xcode manage automatically]
   ```

### 3. **Release Configuration**
   - Select **"Release"** build configuration
   - Ensure "Automatically manage signing" is ✅ checked
   - Team should be set to your Apple Developer Team

---

## 📦 **Step 2: Create Archive via Flutter Command**

Once Xcode signing is configured, run:

```bash
# Clean and prepare
flutter clean
flutter pub get

# Build for App Store
flutter build ios --release
```

---

## 🚀 **Step 3: Archive in Xcode**

### Method A: Using Xcode (Recommended)

1. **Open Xcode project**:
   ```bash
   open ios/Runner.xcworkspace
   ```

2. **Select Device Target**:
   - Set destination to **"Any iOS Device (arm64)"**

3. **Archive**:
   - Go to **Product > Archive**
   - Wait for archive to complete

4. **Upload to App Store Connect**:
   - When archive completes, Organizer will open
   - Select your archive
   - Click **"Distribute App"**
   - Choose **"App Store Connect"**
   - Select **"Upload"**
   - Follow the prompts

### Method B: Using Command Line

```bash
# After flutter build ios --release
cd ios
xcodebuild -workspace Runner.xcworkspace \
           -scheme Runner \
           -sdk iphoneos \
           -configuration Release \
           -archivePath build/Runner.xcarchive \
           archive

# Upload to App Store Connect
xcodebuild -exportArchive \
           -archivePath build/Runner.xcarchive \
           -exportPath build/Runner.ipa \
           -exportOptionsPlist ExportOptions.plist
```

---

## 📄 **Step 4: Export Options Plist**

Create `ios/ExportOptions.plist`:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>method</key>
    <string>app-store</string>
    <key>teamID</key>
    <string>4L35JZTZ3A</string>
    <key>uploadBitcode</key>
    <false/>
    <key>compileBitcode</key>
    <false/>
    <key>uploadSymbols</key>
    <true/>
    <key>signingStyle</key>
    <string>automatic</string>
    <key>destination</key>
    <string>upload</string>
</dict>
</plist>
```

---

## 🔍 **Step 5: App Store Connect Setup**

### 1. **Create App in App Store Connect**
   - Go to [App Store Connect](https://appstoreconnect.apple.com)
   - Create new app:
     - **Platform**: iOS
     - **Name**: Manager 3an3an iOS  
     - **Primary Language**: French
     - **Bundle ID**: com.m3an3an1.manager
     - **SKU**: manager-3an3an-ios

### 2. **TestFlight Configuration**
   - Go to **TestFlight** tab
   - Add internal testers
   - Configure test information
   - Add app description for testers

---

## 🚨 **Common Issues & Solutions**

### Issue 1: "No Development Team"
**Solution**: 
1. Open Xcode
2. Go to Xcode > Preferences > Accounts
3. Add your Apple ID
4. Download certificates and profiles

### Issue 2: "Bundle ID not registered"
**Solution**:
1. Go to [Apple Developer Console](https://developer.apple.com)
2. Certificates, IDs & Profiles
3. Register `com.m3an3an1.manager` as App ID
4. Enable Push Notifications capability

### Issue 3: "Provisioning Profile Issues"
**Solution**:
1. In Xcode, select automatic signing
2. Let Xcode create and manage profiles
3. Ensure Team is selected

---

## ✅ **Pre-Upload Checklist**

### 📱 **App Configuration**
- ✅ Bundle ID matches App Store Connect
- ✅ Version number updated in pubspec.yaml
- ✅ App icons included (all sizes)
- ✅ Launch screen configured
- ✅ Push notification entitlements

### 🔧 **Build Configuration**
- ✅ Release build mode
- ✅ Code signing configured
- ✅ Team ID set correctly
- ✅ Firebase configuration included

### 🔥 **Firebase/FCM**
- ✅ GoogleService-Info.plist included
- ✅ Push notification capability enabled
- ✅ APNs certificates configured in Firebase Console

---

## 🚀 **Quick Archive Commands**

```bash
# Complete build and archive process
cd /Users/maymoundeveloper/NNAPI-ANAN-DASH/manager-3an3an

# Clean and prepare
flutter clean && flutter pub get

# Build iOS release
flutter build ios --release

# Open in Xcode for archiving
open ios/Runner.xcworkspace
```

---

## 📋 **TestFlight Upload Steps**

1. **Archive in Xcode** → Product → Archive
2. **Select Archive** in Organizer
3. **Distribute App** → App Store Connect
4. **Upload** → Next → Upload
5. **Processing** → Wait for App Store Connect processing
6. **TestFlight** → Add to TestFlight when ready
7. **Test** → Invite internal testers

---

**🎯 Your app is ready for App Store Connect upload once the code signing is configured in Xcode!**