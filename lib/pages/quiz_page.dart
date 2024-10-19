import 'package:flutter/material.dart';
import 'quiz_detail_page.dart'; // QuizDetailPage import
import 'quiz_data/regular_rhythm.dart'; // regularQuizQuestions import
import 'quiz_data/irregular_rhythm.dart'; // irregularQuizQuestions import
import 'quiz_data/narrow_qrs_rhythm.dart';
import 'quiz_data/wide_qrs_rhythm.dart';
import 'quiz_data/bradycardia_rhythm.dart';
import 'quiz_data/ectopic_rhythm.dart';
import 'quiz_data/emergency_rhythm.dart';
import 'quiz_data/all_rhythm.dart';

class QuizPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BasicQuizPage(); // 바로 BasicQuizPage로 이동
  }
}

class BasicQuizPage extends StatefulWidget {
  @override
  _BasicQuizPageState createState() => _BasicQuizPageState();
}

class _BasicQuizPageState extends State<BasicQuizPage> {
  int correctAnswers = 0; // 정답 수
  int incorrectAnswers = 0; // 오답 수

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic Quiz'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // 정답률 대시보드 추가
            _buildAccuracyDashboard(),
            SizedBox(height: 16), // 대시보드와 퀴즈 카드 사이의 패딩
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                children: [
                  quizCard(context, 'Regular rhythm', regularQuizQuestions, 'Start Quiz'),
                  quizCard(context, 'Irregular rhythm', irregularQuizQuestions, 'Start Quiz'),
                  quizCard(context, 'Narrow QRS rhythm', narrowqrsQuizQuestions, 'Start Quiz'),
                  quizCard(context, 'Wide QRS rhythm', wideqrsQuizQuestions, 'Start Quiz'),
                  quizCard(context, 'Bradycardia rhythm', bradycardiaQuizQuestions, 'Start Quiz'),
                  quizCard(context, 'Ectopic rhythm', ectopicQuizQuestions, 'Start Quiz'),
                  quizCard(context, 'Emergency rhythm', emergencyQuizQuestions, 'Start Quiz'),
                  quizCard(context, 'All rhythm', allrhythmQuizQuestions, 'Start Quiz'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 정답률 대시보드 위젯
  Widget _buildAccuracyDashboard() {
    double accuracyRate = (correctAnswers + incorrectAnswers) > 0
        ? (correctAnswers / (correctAnswers + incorrectAnswers)) * 100
        : 0;

    // 정답률이 100을 초과하지 않도록 설정
    if (accuracyRate > 100) {
      accuracyRate = 100;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Accuracy Rate: ${accuracyRate.toStringAsFixed(1)}%',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        // 바 차트로 정답률 표현
        Row(
          children: [
            Expanded(
              flex: (correctAnswers + incorrectAnswers) > 0
                  ? (correctAnswers * 100 ~/ (correctAnswers + incorrectAnswers))
                  : 0,
              child: Container(
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.horizontal(left: Radius.circular(10)),
                ),
              ),
            ),
            Expanded(
              flex: (correctAnswers + incorrectAnswers) > 0
                  ? (incorrectAnswers * 100 ~/ (correctAnswers + incorrectAnswers))
                  : 0,
              child: Container(
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.horizontal(right: Radius.circular(10)),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        // 가로로 정렬
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '문제풀이 횟수: ${correctAnswers + incorrectAnswers}', // 정답과 오답의 합
              style: TextStyle(fontSize: 14),
            ),
            Row(
              children: [
                Text(
                  '정답 횟수: $correctAnswers',
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  '틀린 횟수: $incorrectAnswers',
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  // 퀴즈 카드 위젯 수정
  Widget quizCard(BuildContext context, String title, List<Map<String, dynamic>> quizQuestions, String buttonText) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QuizDetailPage(
                    quizQuestions: quizQuestions,
                    onAnswerCorrect: _incrementCorrectAnswers,
                    onAnswerIncorrect: _incrementIncorrectAnswers,
                  ),
                ),
              );
            },
            child: Text(buttonText),
          ),
        ],
      ),
    );
  }

  // 정답 수 증가
  void _incrementCorrectAnswers() {
    setState(() {
      correctAnswers++;
    });
  }

  // 오답 수 증가
  void _incrementIncorrectAnswers() {
    setState(() {
      incorrectAnswers++;
    });
  }
}
