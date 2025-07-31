class Transaction {
  final String title;
  final String date;
  final String amount;
  final String projectName;
  final String projectDescription;
  final String projectManager;
  final String projectCreatedAt;

  Transaction({
    required this.title,
    required this.date,
    required this.amount,
    required this.projectName,
    required this.projectDescription,
    required this.projectManager,
    required this.projectCreatedAt,
  });
}
