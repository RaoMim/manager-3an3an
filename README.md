# 3an3an Manager App

Flutter application for managing orders with FCM notifications, phone call integration, and permission management.

## Features

✅ **FCM Notifications** - Receive real-time order notifications  
✅ **Permission Management** - Comprehensive Android 13+ permission handling  
✅ **Phone Integration** - Direct calling with contact options  
✅ **Order Management** - View, search, and filter orders  
✅ **Multi-role Support** - Manager-specific notifications  

## Setup

1. Clone the repository
2. Run `flutter pub get`
3. Configure Firebase (google-services.json)
4. Build and run: `flutter run`

## Architecture

- **FCM Token Storage**: Both in-memory and backend database
- **Permission Service**: Centralized permission management
- **Phone Service**: Call/SMS functionality with permissions
- **Auth Service**: JWT authentication with automatic FCM registration

## API Integration

- Backend: .NET Core API at https://akl.3an3an.ma
- FCM Endpoint: /api/Manager/fcm-token
- App Package: com.m3an3an1.manager

