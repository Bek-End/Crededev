class Faq {
  final int id;
  final String question;
  final String answer;
  Faq({
    required this.id,
    required this.question,
    required this.answer,
  });

  @override
  String toString() => 'Faq(id: $id, question: $question, answer: $answer)';
}
