class ValidationMixins {

  validatePassword(String value) {
    if (value.length < 6) {
      return "Password must be between 6 and 30";
    } else
      return null;
  }

  validateEmail(String value){
    if (!value.contains("@")){
      return "Please input a valid email";
    }
    return null;
  }
}