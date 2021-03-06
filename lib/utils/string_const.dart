class StringConstant{

  // General UI
  static const String cancel = "Cancel";
  static const String yes = "Yes";

  // Routes
  static const String route_sign_in = "/";
  static const String route_login = "/login";
  static const String route_homePage = "/homePage";
  static const String route_home = "/home";
  static const String route_user_settings = "/user_settings";
  static const String route_entry = "/entryPage";

  // Assets
  static const String asset_sticker = "assets/stickers";

  // Login
  static const String title_login = "SignIn";
  static const String login_logo_desc = "Bloc-based Chat with Firebase";
  static const String btn_login_google = "SIGN IN WITH GOOGLE";

  // Chat List
  static const String title_chat_list = "Chats";
  static const String menu_user_settings = "Settings";
  static const String menu_sign_out = "Log out";
  static const String dialog_title_exit_app = "Exit App";
  static const String dialog_title_exit_app_desc = "Are you sure to exit app?";
  static const String list_item_name_label = "Name";
  static const String list_item_about_me_label = "About Me";
  static const String list_item_about_me_not_available = "Not available";

  // Chat
  static const String chat_text_input_hint = "Type your message...";
  static const String chat_text_empty = 'Nothing to send';
  static const String chat_image_upload_wrong_type = 'This file is not an image';

  // User Settings
  static const String title_user_settings = "Settings";

  // Resources
  static const String collection_user = "users";

  // Error
  static const String error_widget_not_found = "Widget not found";
  static const String error_login_sns = "Login failed. Please try it later again";
  static const String error_upload_type_image = "This file is not an image";

  //validator
  static final RegExp regex = new RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');

}