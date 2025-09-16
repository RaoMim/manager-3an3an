# 📱 Manager 3an3an - FCM Token Production Monitoring Guide

## 🎯 What to Monitor During Login

### 1. 🚀 App Initialization
- ✅ Firebase app initialization
- ✅ FCM service setup
- ✅ Notification permissions granted

### 2. 🔑 FCM Token Generation
```
✅ FCM Token generated successfully
   📄 Token length: 142 characters
   🔑 Token preview: dr0h2KE4RRaOOxI19IuXrJ:APA91bH...
```

### 3. 📤 Login Flow Monitoring
When you login, watch for these sequential events:

#### A. Authentication Request
```
🔄 Starting authentication...
```

#### B. Successful Login
```
✅ Authentication successful
🔄 Starting FCM token registration after successful login
```

#### C. FCM Token Registration
```
📤 sendTokenToBackend called
   🔑 Auth token preview: eyJhbGciOiJIUzI1NiIsInR5cCI...
   📱 FCM token status: Available (142 chars)

📤 Sending FCM token to backend...
   🌐 Endpoint: https://akl.3an3an.ma/api/Notification/manager/register-token
   📱 Platform: android
   🔑 Token preview: dr0h2KE4RRaOOxI19IuXrJ:APA91bHZjVo4SBOgvYJVtPRp...
```

#### D. Server Response
```
📨 Server response received:
   📊 Status code: 200
   📄 Response body: {"Success":true,"Message":"FCM token registered successfully"}

✅ SUCCESS: FCM token sent successfully to backend
✅ FCM token registration completed
```

## 🔍 How to Monitor

### Option 1: Use the Monitoring Script
```bash
cd /Users/maymoundeveloper/NNAPI-ANAN-DASH/manager-3an3an
./monitor_fcm_logs.sh
```

### Option 2: Manual Flutter Logs
```bash
flutter logs -d emulator-5554
```

### Option 3: Android Studio Logcat
Filter for: `flutter`, `FCM`, `token`, `firebase`

## 🚨 Error Scenarios to Watch For

### 1. FCM Token Generation Failed
```
⚠️  WARNING: FCM token is null
   🔍 Check Firebase configuration and Google Services
```
**Fix**: Check `google-services.json` and Firebase project settings

### 2. API Request Failed
```
🔴 FAILED to send FCM token:
   📊 Status: 401
   📄 Response: {"Message":"Unauthorized"}
```
**Fix**: Check authentication token validity

### 3. Network Issues
```
🔴 ERROR sending FCM token to backend: Connection refused
   🔍 Check network connection and API endpoint
```
**Fix**: Verify internet connection and API server status

### 4. Firebase Configuration Issues
```
🔴 Error initializing FCM: Firebase configuration error
   🔍 Check Firebase configuration files
```
**Fix**: Verify `google-services.json` is correctly placed

## ✅ Success Indicators

1. **FCM Token Generated**: Look for `✅ FCM Token generated successfully`
2. **API Call Successful**: Look for `✅ SUCCESS: FCM token sent successfully to backend`
3. **No Error Messages**: No 🔴 red error messages in logs

## 🔬 Database Verification

After successful login, you can verify the token was saved by checking:

1. **Backend Logs**: Check NNApi server logs for token registration
2. **Database Query**: 
   ```sql
   SELECT * FROM ManagerFCMTokens 
   WHERE ManagerId = [YOUR_MANAGER_ID] 
   AND IsActive = 1 
   ORDER BY CreatedAt DESC;
   ```

## 📱 Testing Steps

1. **Clear App Data** (optional - for fresh test)
2. **Open Manager App**
3. **Monitor Logs** using one of the options above
4. **Login with Manager Credentials**
5. **Verify Success Messages** in logs
6. **Check Database** for new FCM token entry

## 🚀 Production Monitoring Commands

### Start Monitoring
```bash
# Terminal 1: Start monitoring
cd /Users/maymoundeveloper/NNAPI-ANAN-DASH/manager-3an3an
./monitor_fcm_logs.sh

# Terminal 2: Keep Flutter connection alive
flutter run -d emulator-5554
```

### Test Login Flow
1. Open the app on emulator
2. Enter manager credentials
3. Watch the logs for the complete flow
4. Verify success messages

---

**Ready for Production Testing! 🎉**

The FCM token system is now properly configured and monitored. When you login, you should see the complete flow from token generation to backend registration.