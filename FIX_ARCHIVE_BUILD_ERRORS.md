# 🔧 Fix Archive Build Errors - "Command PhaseScriptExecution failed"

## 🚨 **Issue Identified: CocoaPods Sync Problem**

The error `Command PhaseScriptExecution failed with a nonzero exit code` is typically caused by:
1. CocoaPods Podfile.lock out of sync
2. Missing or corrupted pods
3. Build script failures

## 🛠️ **Solution Steps**

### **Step 1: Clean Everything**
```bash
# Navigate to project
cd /Users/maymoundeveloper/NNAPI-ANAN-DASH/manager-3an3an

# Flutter clean
flutter clean

# Remove iOS build artifacts
rm -rf ios/build/
rm -rf ios/Pods/
rm -rf ios/Podfile.lock
rm -rf ios/.symlinks/
rm -rf ios/Flutter/ephemeral/

# Clear pub cache
flutter pub cache clean --force
```

### **Step 2: Reinstall Dependencies**
```bash
# Get Flutter dependencies
flutter pub get

# Navigate to iOS folder
cd ios

# Update CocoaPods
pod repo update
pod install --clean-install

# Go back to project root
cd ..
```

### **Step 3: Fix Xcode Configuration**
Open Xcode:
```bash
open ios/Runner.xcworkspace
```

**In Xcode:**
1. **Select Runner target**
2. **Build Settings** → Search for "User Script Sandboxing"
3. **Set "Enable User Script Sandboxing" to NO** (already set correctly)
4. **Clean Build Folder** (Cmd+Shift+K)
5. **Rebuild** (Cmd+B)

### **Step 4: Try Alternative Build Method**

**Option A: Build in Xcode First**
```bash
# Open Xcode
open ios/Runner.xcworkspace

# In Xcode:
# - Select "Any iOS Device (arm64)" 
# - Product → Build (Cmd+B)
# - If successful, then Product → Archive
```

**Option B: Use Flutter with specific flags**
```bash
flutter build ios --release --no-tree-shake-icons
```

## 🎯 **Quick Fix Script**

I'll create an automated fix script:

```bash
#!/bin/bash
echo "🔧 Fixing iOS Build Issues..."

# Clean everything
flutter clean
rm -rf ios/build/ ios/Pods/ ios/Podfile.lock ios/.symlinks/

# Reinstall
flutter pub get
cd ios
pod install --clean-install --verbose
cd ..

# Try build
flutter build ios --release --verbose
```

## 🔍 **Common Issues & Solutions**

### **Issue 1: Podfile.lock out of sync**
```bash
cd ios
rm Podfile.lock
pod install
```

### **Issue 2: CocoaPods cache corruption**
```bash
pod cache clean --all
pod repo update
pod install --clean-install
```

### **Issue 3: Xcode Command Line Tools**
```bash
sudo xcode-select --install
sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
```

### **Issue 4: Flutter/Firebase plugin conflicts**
Update `ios/Podfile` to ensure compatibility:
```ruby
# Add at the top of Podfile
platform :ios, '13.0'

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '13.0'
      config.build_settings['ENABLE_USER_SCRIPT_SANDBOXING'] = 'NO'
    end
  end
end
```

## 🚀 **Alternative: Archive via Xcode Only**

If Flutter build keeps failing:

1. **Build Flutter assets first:**
   ```bash
   flutter build ios --config-only
   ```

2. **Open Xcode and archive:**
   ```bash
   open ios/Runner.xcworkspace
   ```

3. **In Xcode:**
   - Ensure Team is set: `4L35JZTZ3A`
   - Select "Any iOS Device (arm64)"
   - Product → Clean Build Folder
   - Product → Archive

## ⚡ **Execute Fix Now**

Run this single command to fix everything:
```bash
cd /Users/maymoundeveloper/NNAPI-ANAN-DASH/manager-3an3an && flutter clean && rm -rf ios/build/ ios/Pods/ ios/Podfile.lock && flutter pub get && cd ios && pod install --clean-install && cd .. && flutter build ios --release
```

## 🔬 **If Still Failing**

Check for specific error in build log:
```bash
flutter build ios --release --verbose 2>&1 | grep -A5 -B5 "error:"
```

The most common fix is the CocoaPods sync issue, which the above steps should resolve.

**Try the automated fix commands first - they should resolve the PhaseScriptExecution error! 🎯**