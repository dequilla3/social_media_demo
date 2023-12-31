import 'package:flutter_full_course/pages/chat/chat_home_page.dart';
import 'package:flutter_full_course/pages/chat/chat_page.dart';
import 'package:flutter_full_course/pages/chat/search_user_chat.dart';
import 'package:flutter_full_course/pages/edit_profile_page.dart';
import 'package:flutter_full_course/pages/home_page.dart';
import 'package:flutter_full_course/pages/login_page.dart';
import 'package:flutter_full_course/pages/main_page.dart';
import 'package:flutter_full_course/pages/nearby_page.dart';
import 'package:flutter_full_course/provider/login_provider.dart';
import 'package:provider/provider.dart';

class AppRoutes {
  static const loginPage = '/';
  static const homePage = '/home';
  static const mainPage = '/main_page';
  static const editProfilePage = '/edit_profile';
  static const nearbyPage = '/nearby_page';
  static const message = '/chat_home_page';
  static const searchUserChat = '/search_user_chat';
  static const chatPage = '/chat_page';

  static final pages = {
    loginPage: (context) => ChangeNotifierProvider(
          create: (context) => LoginProvider(),
          child: const LoginPage(),
        ),
    mainPage: (context) => const MainPage(),
    homePage: (context) => const HomePage(),
    editProfilePage: (context) => const EditProfilePage(),
    nearbyPage: (context) => const NearByPage(),
    message: (contex) => const ChatHomePage(),
    searchUserChat: (contex) => const SearchUserChat(),
    chatPage: (context) => const ChatPage()
  };
}
