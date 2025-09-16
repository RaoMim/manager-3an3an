#!/bin/bash

echo "🚀 Manager 3an3an - App Store Archive Preparation"
echo "==============================================="
echo ""

# Color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Check if we're in the right directory
if [ ! -f "pubspec.yaml" ]; then
    echo -e "${RED}❌ Error: Not in Flutter project directory${NC}"
    echo "Please run this script from the project root directory"
    exit 1
fi

echo -e "${BLUE}📋 Pre-Archive Checklist${NC}"
echo "========================"

# Check Flutter version
echo -e "${YELLOW}🔍 Checking Flutter version...${NC}"
flutter --version

# Check if iOS folder exists
if [ ! -d "ios" ]; then
    echo -e "${RED}❌ iOS folder not found${NC}"
    exit 1
else
    echo -e "${GREEN}✅ iOS project found${NC}"
fi

# Check for Firebase configuration
if [ -f "ios/Runner/GoogleService-Info.plist" ]; then
    echo -e "${GREEN}✅ Firebase configuration found${NC}"
else
    echo -e "${RED}❌ GoogleService-Info.plist missing${NC}"
    exit 1
fi

# Check for export options
if [ -f "ios/ExportOptions.plist" ]; then
    echo -e "${GREEN}✅ Export options configured${NC}"
else
    echo -e "${YELLOW}⚠️  Creating ExportOptions.plist${NC}"
    # File should already be created by the script
fi

echo ""
echo -e "${BLUE}🧹 Cleaning project...${NC}"
flutter clean

echo -e "${BLUE}📦 Getting dependencies...${NC}"
flutter pub get

echo -e "${BLUE}🔧 Building iOS release...${NC}"
flutter build ios --release

if [ $? -eq 0 ]; then
    echo -e "${GREEN}✅ iOS build completed successfully!${NC}"
    echo ""
    echo -e "${BLUE}📱 Next Steps:${NC}"
    echo "1. Open Xcode: ${YELLOW}open ios/Runner.xcworkspace${NC}"
    echo "2. Configure code signing (Team: 4L35JZTZ3A)"
    echo "3. Select 'Any iOS Device (arm64)' as destination"
    echo "4. Go to Product → Archive"
    echo "5. Distribute to App Store Connect"
    echo ""
    echo -e "${GREEN}🚀 Ready for App Store Connect upload!${NC}"
else
    echo -e "${RED}❌ Build failed. Check the errors above.${NC}"
    echo ""
    echo -e "${YELLOW}💡 Common fixes:${NC}"
    echo "1. Configure code signing in Xcode"
    echo "2. Ensure Team ID (4L35JZTZ3A) is set"
    echo "3. Check Bundle ID matches: com.m3an3an1.manager"
    exit 1
fi

echo ""
echo -e "${BLUE}📋 App Store Connect Information:${NC}"
echo "=================================="
echo "Bundle ID: com.m3an3an1.manager"
echo "Team ID: 4L35JZTZ3A"
echo "App Name: Manager 3an3an iOS"
echo "Version: $(grep version pubspec.yaml | head -n1 | cut -d ' ' -f2)"
echo ""
echo -e "${GREEN}Happy archiving! 🎉${NC}"