# test0125

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
 // pod ios 적용 
ios 폴더 삭제
flutter create .
pod install --repo-update 
앱추가 파일 GoogleService-info.plist 파일 ios 왼쪽마우스키 open ios 
Runnar 밑에 복사 붙여넣기 
# platform :ios, '9.0' 변경  => platform :ios, '9.0'

8.0 =>
fltter clean 
flutter upgrade
pod init 

flutter build ios
flutter build --release


Runner 팀 선택

설정 / 일반 /기기관리 / 해당웹 신뢰 

flutter run --release // 실재 기기 적용시 ios14버전 debug 적용안돼서  release 적용 해야함 