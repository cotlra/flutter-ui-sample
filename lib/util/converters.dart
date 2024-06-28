class Converters {
  static String convertCamelCaseToPascalCase(String camelCase) {
    return camelCase[0].toUpperCase() + camelCase.substring(1);
  }
}
