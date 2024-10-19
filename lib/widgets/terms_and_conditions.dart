import 'package:flutter/material.dart';

// 약관 및 정책을 표시하는 함수
void showTermsAndConditions(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('심전도앱 V1.1.0'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('1. 이 앱은 간호학과 학생, 간호사, 방사선사, 의대생, 의사, 응급 구조사, 임상병리사, 기타 의료 종사자, 심전도 해석을 배우고자 하는 일반인들을 대상으로, 심전도 해석과 관련된 다양한 학습 자료와 문제를 제공하여 사용자가 심전도 판독능력을 향상시키는데 도움을 주는 어플입니다.'),
              SizedBox(height: 10),
              Text('2. 해당 앱의 자료 정보는 중앙대학교 광명병원에 있습니다.'),
              SizedBox(height: 10),
              Text('3. 제공된 정보는 의학적인 진단으로 사용할 수 없습니다.'),
              // 더 많은 약관 내용을 여기에 추가할 수 있습니다.
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: Text('업데이트 현황'),
            onPressed: () {
              Navigator.of(context).pop(); // 현재 팝업 닫기
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => UpdateStatusPage(),
                ),
              );
            },
          ),
          TextButton(
            child: Text('확인'),
            onPressed: () {
              Navigator.of(context).pop(); // 팝업 닫기
            },
          ),
        ],
      );
    },
  );
}

// 업데이트 현황 정보를 표시하는 페이지
class UpdateStatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('업데이트 현황정보'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            // 모든 자식 위젯들을 왼쪽으로 정렬
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // 버전 제목
              Text(
                'V1.0.0',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 3),

              // 업데이트 항목
              Text(
                '1. 심전도앱 출시',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 5),
              Text(
                '2. 네비게이션 UI 형성',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 5),
              Text(
                '3. Class현황에서 심전도의 설명, 원인, 증상, 특징, 치료로 구분',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 20),

              // 다음 버전 제목
              Text(
                'V1.0.1',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 3),

              // 업데이트 항목
              Text(
                '1. 증례별 심전도 이미지 추가.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 5),
              Text(
                '2. Quiz & 약물사전 추가',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 20),

              // 다음 버전 제목
              Text(
                'V1.0.2',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 3),

              // 업데이트 항목
              Text(
                '1. 심전도 배우기 페이지에서 이미지 삽화 추가',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 5),
              Text(
                '2. Quiz & Advanced Quiz 항목 추가 (Basic & Advanced)',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 5),
              Text(
                '3. Quiz페이지에서 랜덤으로 문제 출제',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 5),
              Text(
                '4. 심전도 이미지를 클릭 시 이미지 로테이션 기능, 전체 화면 전환, 드래그 확대/축소 기능 추가',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 20),

              // 다음 버전 제목
              Text(
                'V1.0.3',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 3),

              // 업데이트 항목
              Text(
                '1. 심전도 Class 페이지 항목 추가 (7개)',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 5),
              Text(
                '2. Basic & Advanced Quiz 나머지 소스 추가',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 5),
              Text(
                '3. EKG learn 항목 추가 (2개)',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 5),
              Text(
                '4. Cases 페이지 항목 추가 (5개)',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 5),
              Text(
                '5. Quiz페이지에서 객관식 항목 중 중복답으로 보기가 나오지 않도록 수정',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 5),
              Text(
                '6. 기타 버그 fix 및 코드 최적화',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 20),

              // 다음 버전 제목
              Text(
                'V1.0.4',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 3),

              // 업데이트 항목
              Text(
                '1. 위젯 UI 전체 변경',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 5),
              Text(
                '2. Toggle 스위치로 자동 번역기능 추가',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 5),
              Text(
                '3. Search 기능 추가',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 20),

              // 다음 버전 제목
              Text(
                'V1.0.5',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 3),

              // 업데이트 항목
              Text(
                '1. Class 페이지 항목 추가',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 5),
              Text(
                '2. Quiz 위젯 UI 변경',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 5),
              Text(
                '3. 가이드탭에서 번역기능 사용 시 스크립트가 불러와지지 않는 문제 해결',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 5),
              Text(
                '4. 심전도 Class 항목 추가',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 20),

              // 다음 버전 제목
              Text(
                'V1.0.6',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 3),

              // 업데이트 항목
              Text(
                '1. Basic Quiz의 Emergency rhythm 카테고리 추가',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 5),
              Text(
                '2. App title 색상 변경',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 5),
              Text(
                '3. Cases 항목 추가 (5개)',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 5),
              Text(
                '4. Quiz 22개 추가',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 5),
              Text(
                '5. 네비게이션탭 ACLS drug 11개 추가 (약물정보, 효과, 용법, 주의사항)',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 20),

              // 다음 버전 제목
              Text(
                'V1.0.7',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 3),

              // 업데이트 항목
              Text(
                '1. 심전도 앱 이미지 변경',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 5),
              Text(
                '2. 안드로이드 앱 제목 타이틀 변경',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 20),

              // 다음 버전 제목
              Text(
                'V1.0.8',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 3),

              // 업데이트 항목
              Text(
                '1. Quiz 18개 추가',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 5),
              Text(
                '2. ACLS drug 항목 약품 이미지 추가',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 5),
              Text(
                '3. Quiz 페이지에서 심전도 이미지 클릭 시 드래그 확대/축소 기능 추가',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 5),
              Text(
                '4. 약관/업데이트 현황 정보 추가',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 20),

              Text(
                'V1.0.9',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 3),

              // 업데이트 항목
              Text(
                '1. Class1개, Quiz 5개 추가',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 5),
              Text(
                '2. Loading page에 병원 로고추가',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 5),
              Text(
                '3. 기타 버그 fix',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 20),

              Text(
                'V1.1.0',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 3),

              // 업데이트 항목
              Text(
                '1. ECG guide 항목 2개 추가',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 5),
              Text(
                '2. 퀴즈페이지에서 학습자의 진행상황을 표시해주는 대시보드 추가',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}