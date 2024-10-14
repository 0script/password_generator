class Password {
  String value = '';
  bool haslowercase = true;
  bool hascapital = true;
  bool hasfigure = true;
  bool hasspecial = false;
  int size = 8;

  String get getvalue {
    return value;
  }

  bool get lowercase {
    return haslowercase;
  }

  bool get capital {
    return hascapital;
  }

  bool get number {
    return hasfigure;
  }

  bool get special {
    return hasspecial;
  }

  int get getsize {
    return size;
  }

  set setsize(int n) {
    size = n;
  }

  void togglelowercase() {
    haslowercase == true ? false : true;
  }

  void togglecapital() {
    hascapital == true ? false : true;
  }

  void togglenumber() {
    hasfigure == true ? false : true;
  }

  void togglespecial() {
    hasspecial == true ? false : true;
  }

  void generatepassword() {
    const lower = 'abcdefghijklmnopqrstuvwxyz';
    const capchars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    const numbers = '0123456789';
    const specials = "{}!@#\$%^&*()<>,./";

    final String selectedcharsset =
        "${haslowercase ? lower : ''}${hascapital ? capchars : ''}${hasfigure ? numbers : ''}${hasspecial ? specials : ''}";
  }

  Password();
}
