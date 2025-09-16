# 🔧 Fix Xcode PhaseScriptExecution Error

## 🚨 **Issue: Still Getting Script Execution Error in Xcode**

The error is likely occurring in one of these build script phases:
1. **Run Script** (Flutter build phase)
2. **Thin Binary** (Flutter optimization)
3. **[CP] Check Pods Manifest.lock** (CocoaPods)
4. **[CP] Copy Pods Resources** (CocoaPods resources)

## 🛠️ **Step-by-Step Fix in Xcode**

### **Step 1: Identify the Failing Script**

1. **In Xcode**, when the build fails, look at the **error details**
2. **Expand the error** to see which script phase is failing
3. **Note the exact script name** (e.g., "Run Script", "[CP] Check Pods Manifest.lock")

### **Step 2: Fix Common Script Issues**

#### **A. Flutter Run Script Issues**

1. **Select Runner target** in Xcode
2. Go to **Build Phases** tab
3. Find **"Run Script"** phase
4. **Verify the script path**:
   ```bash
   /bin/sh "$FLUTTER_ROOT/packages/flutter_tools/bin/xcode_backend.sh" build
   ```
5. **Add this line at the top** if missing:
   ```bash
   set -e
   ```

#### **B. CocoaPods Manifest Lock Issues**

1. **In Terminal**, run these commands:
   ```bash
   cd /Users/maymoundeveloper/NNAPI-ANAN-DASH/manager-3an3an/ios
   rm -rf Pods/
   rm Podfile.lock
   pod cache clean --all
   pod install
   ```

2. **Back in Xcode**: Clean Build Folder (⇧⌘K)

#### **C. Permissions Issue Fix**

1. **In Xcode Build Settings**, search for **"User Script Sandboxing"**
2. **Set to "No"** for both Runner and Pods targets
3. **Or add this to build settings**:
   ```
   ENABLE_USER_SCRIPT_SANDBOXING = NO
   ```

### **Step 3: Manual Script Debugging**

#### **Check Flutter Environment**

1. **In Terminal**:
   ```bash
   echo $FLUTTER_ROOT
   which flutter
   flutter doctor
   ```

2. **If FLUTTER_ROOT is empty**:
   ```bash
   export FLUTTER_ROOT=/opt/homebrew/Caskroom/flutter/3.32.6/flutter
   # Or wherever your Flutter is installed
   ```

#### **Verify Script Permissions**

```bash
ls -la "$FLUTTER_ROOT/packages/flutter_tools/bin/xcode_backend.sh"
chmod +x "$FLUTTER_ROOT/packages/flutter_tools/bin/xcode_backend.sh"
```

### **Step 4: Alternative Build Script**

If the Flutter script keeps failing, **temporarily replace it**:

1. **In Xcode Build Phases** → **Run Script**
2. **Replace the script with**:
   ```bash
   set -e
   echo "Building Flutter app..."
   cd "${SRCROOT}/.."
   /opt/homebrew/bin/flutter build ios --config-only --release --no-tree-shake-icons
   ```

### **Step 5: Xcode Project Cleanup**

1. **Close Xcode completely**
2. **Run cleanup commands**:
   ```bash
   cd /Users/maymoundeveloper/NNAPI-ANAN-DASH/manager-3an3an
   flutter clean
   rm -rf ios/build/
   rm -rf ios/.symlinks/
   rm -rf ios/Flutter/ephemeral/
   flutter pub get
   cd ios && pod install && cd ..
   ```
3. **Reopen Xcode**: `open ios/Runner.xcworkspace`

### **Step 6: Build Configuration Check**

**In Xcode Build Settings**, verify these are set correctly:

| Setting | Value |
|---------|--------|
| **Development Team** | `4L35JZTZ3A` |
| **Bundle Identifier** | `com.m3an3an1.manager` |
| **Enable User Script Sandboxing** | `NO` |
| **Code Sign Style** | `Automatic` |
| **Build Configuration** | `Release` (for Archive) |

## 🎯 **Quick Fix Commands**

**Run these in Terminal, then try Xcode again**:

```bash
# Navigate to project
cd /Users/maymoundeveloper/NNAPI-ANAN-DASH/manager-3an3an

# Complete cleanup
flutter clean
rm -rf ios/build/ ios/Pods/ ios/Podfile.lock ios/.symlinks/

# Reinstall everything
flutter pub get
cd ios
pod repo update
pod install --clean-install
cd ..

# Set Flutter path (if needed)
export FLUTTER_ROOT=$(which flutter | sed 's/\/bin\/flutter$//')

# Test Flutter build
flutter build ios --config-only --release
```

## 🚨 **If Still Failing**

### **Check Specific Error Message**

1. **In Xcode**, when build fails, click on the **red error**
2. **Look for specific error details** like:
   - File not found errors
   - Permission denied
   - Command not found
   - Script timeout

### **Common Fixes by Error Type**:

**"Command not found" → Flutter path issue**
```bash
export PATH="$PATH:/opt/homebrew/bin"
```

**"Permission denied" → Script permissions**
```bash
chmod -R 755 ios/Pods/
```

**"Sandbox violation" → User Script Sandboxing**
Set `ENABLE_USER_SCRIPT_SANDBOXING = NO` in Build Settings

## 🎉 **Alternative: Use Command Line Archive**

If Xcode keeps failing, try direct command line:

```bash
cd /Users/maymoundeveloper/NNAPI-ANAN-DASH/manager-3an3an
flutter build ipa --release
```

This will create an IPA file you can upload via **Transporter app** or **Application Loader**.

---

**Try the cleanup commands first, then use Xcode again. The script execution error should be resolved! 🚀**