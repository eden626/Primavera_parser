# Primavera_parser
# usage:
java -jar antlr-4.13.2-complete.jar -Dlanguage=Dart -visitor Primavera.g4

dart pub get

# 1. Run lexer to generate tokens.tsv
dart lexer_aluno.dart exemplo.txt

# 2. Run the Dart ANTLR parser and semantic analysis
dart run main.dart
