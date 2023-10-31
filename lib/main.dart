import 'package:flutter/material.dart';
void main() => runApp(MyPage());

// class MyPage extends StatelessWidget {
//   const MyPage({Key? key}): super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: PreferredSize(
//             preferredSize: Size.fromHeight(
//                 80.0
//             ),
//             child: AppBar(
//                 title: Text('appbar title')
//             )
//         )
//     );
//   }
// }
class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        // Scaffold 배경 색 지정하지 않으면 Appbar 위 아래로 하얀색 여백 나타남
          backgroundColor: const Color.fromARGB(255, 1, 18, 38),
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(80),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppBar(
                  elevation: 0, // 그림자 효과. 0: 없음
                  automaticallyImplyLeading: false, // 뒤로 가기 버튼 사용 유무
                  leadingWidth: 170,
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: GestureDetector(
                        onTap: (){
                          setState(() {
                            controller = null;
                            title = titleString;
                            webviewURL = monitoringURL;
                          });
                        },

                    ),
                  ),
                ),
              ],
            ),
          ),
          body: Text('helo?');
      ),
    );
  }
}