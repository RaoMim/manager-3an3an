# 🎯 Xcode Archive Instructions - Direct Method

## ✅ **Progress Update**
- ✅ Fixed the `PhaseScriptExecution failed` error
- ✅ CocoaPods now working correctly  
- ✅ Dependencies properly installed
- ⚠️ Build getting further but encountering compile issues

## 🚀 **Solution: Archive via Xcode (Recommended)**

Since the Flutter command line build is having some compilation issues, let's use Xcode directly, which often handles these better.

### **Step 1: Prepare Flutter Assets**
```bash
cd /Users/maymoundeveloper/NNAPI-ANAN-DASH/manager-3an3an
flutter build ios --config-only
```

### **Step 2: Open Xcode**
```bash
open ios/Runner.xcworkspace
```

### **Step 3: Configure for Archive in Xcode**

**A. Select Target & Device:**
- In the scheme dropdown (top left), select **"Runner"**
- In device dropdown, select **"Any iOS Device (arm64)"**

**B. Verify Signing:**
- Select Runner project → Runner target
- Go to **"Signing & Capabilities"** tab  
- Ensure:
  - ✅ **Team**: `4L35JZTZ3A` (should be auto-selected)
  - ✅ **Bundle Identifier**: `com.m3an3an1.manager`
  - ✅ **"Automatically manage signing"** is checked

**C. Build Configuration:**
- Select **"Edit Scheme"** (click on Runner in scheme dropdown)
- Go to **"Archive"** tab
- Ensure **"Build Configuration"** is set to **"Release"**
- Click **"Close"**

### **Step 4: Clean & Build**
1. **Product** → **Clean Build Folder** (⇧⌘K)
2. **Product** → **Build** (⌘B)
3. Wait for build to complete successfully

### **Step 5: Create Archive**
1. **Product** → **Archive** (⇧⌘B)
2. Wait for archiving process to complete
3. **Organizer** window will open automatically

### **Step 6: Upload to App Store Connect**
1. In **Organizer**, select your archive
2. Click **"Distribute App"**
3. Select **"App Store Connect"**
4. Click **"Next"**
5. Select **"Upload"** (not Export)
6. Click **"Next"**
7. Keep default distribution options
8. Click **"Upload"**

## 🎯 **Alternative: Manual Configuration**

If you encounter any signing issues, manually configure:

### **Update Development Team in Xcode:**
1. **Xcode** → **Preferences** → **Accounts**
2. Add your Apple ID if not already added
3. Select your team → **Download Manual Profiles**

### **Set Team ID in Build Settings:**
1. Select Runner project → Runner target
2. Go to **"Build Settings"** tab
3. Search for **"Development Team"**
4. Set to: **`4L35JZTZ3A`**

## 🚨 **Troubleshooting**

### **If Build Fails in Xcode:**

**Issue: Code Signing Error**
- Ensure Team ID is correctly set
- Try switching to manual signing then back to automatic

**Issue: Missing Entitlements**
- Verify Push Notifications capability is enabled
- Check that App ID exists on developer portal

**Issue: Firebase/Plugin Errors**
- Ensure GoogleService-Info.plist is in Runner folder
- Verify all plugins are compatible

### **If Archive Succeeds But Upload Fails:**

**Missing Compliance:**
- You may need to set export compliance in App Store Connect

**Bundle ID Issues:**
- Ensure bundle ID matches exactly: `com.m3an3an1.manager`

## ✅ **Pre-Archive Checklist**

Before archiving, verify:
- ✅ Team: `4L35JZTZ3A`
- ✅ Bundle ID: `com.m3an3an1.manager`  
- ✅ Build Configuration: Release
- ✅ Device: Any iOS Device (arm64)
- ✅ GoogleService-Info.plist present
- ✅ Version number updated (if needed)

## 🎉 **Expected Outcome**

After successful upload:
1. Archive uploaded to App Store Connect
2. Processing time: 10-30 minutes
3. Available in TestFlight tab
4. Ready for internal testing

---

**The CocoaPods issue is now fixed! Use Xcode to archive - it handles compilation issues better than Flutter CLI. 🚀**