# 프로젝트명 LaLa (iOS / Android / Web)


## 프로젝트 개요

> 탁상용 시계와 여행 로깅 기능을 포함한 앱의 개발.<br/><br/>
> 탁상용 시계
- 시간/날씨 등의 기본 정보를 출력.
- 테마 설정과 알람 설정, 나이트 모드 포함.

> 여행 로깅 
- GPS좌표를 수신하여 일정 시간 간격으로 저장.
- 여행 중 이동 경로를 맵에 출력.
- 로깅 시간 중 촬영 된 사진을 맵에 표시.
- 서버 연동을 통해 로깅 정보를 서버에 저장.

![Alt text](https://thumb1.shutterstock.com/display_pic_with_logo/489190/388515670/stock-vector-vector-flat-abstract-city-map-with-pin-pointers-navigation-route-and-infrastructure-icons-388515670.jpg)
<hr/>

## iOS

> ViewController : 시계 + 테마 + 알람 + 로깅 + 설정
> 최초 진입은 시계뷰. 제스처 혹은 버튼 터치를 통해 여행 로깅, 테마 설정, 알람으로 전환.
> 시계뷰 
- 시간과 일자, 날씨를 출력. 
- 알람이 설정 될 경우 알람 아이콘 추가. 
- 시간 정보는 시스템과 시간을 출력.
- 날씨 정보는 SK플래닛의 OpenAPI 사용.(https://developers.skplanetx.com/apidoc/kor/weather/)
> 테마 설정 
- 배경 색상 
- 시간 출력 방식 + 날씨 출력 여부 
> 알람 설정 
- 알람 설정 및 편집 
- 알람음 설정 
> 여행 로깅 
- 애플 맵킷을 사용한 UI 구성 
- GPS 로깅 기능 
- 블로깅 기능 : 로깅 중에 찍힌 사진을 읽어 
- 환경설정 
  - 로깅 시간 간격 설정 
  - 네트워크 연동 및 로그/사진 업로드 
 <hr/>
 
 ## Android
 
 <hr/>
 
 ## Web
 
