import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  final quotes = [
    "He who conquers himself is the mightiest warrior. – Confucius",
    "Time doesn't heal anything, it teaches us to live with the pain.",
    "Discipline is the bridge between goals and accomplishment.",
    "Fear is a liar. Action is the truth.",
  ];

  String randomQuote = quotes[Random().nextInt(quotes.length)];

  stdout.write(
    "🧘 Welcome, Warrior. Only those who conquer themselves unlock truth.\n\n",
  );

  stdout.write("🧠 Solve this to prove your focus: What is 12 / 3 + 4? ");
  String? answer = stdin.readLineSync();

  if (answer?.trim() == "8") {
    print("\n✅ Well done, warrior. Here's your reward:\n");
    print("📜 $randomQuote");
  } else {
    print("\n❌ The mind wavered. Try again when you're ready.");
  }
}

// Optional utility function — not used yet
T? withAll<T>(List<T?> optionals, T Function(List<T>) callback) {
  return optionals.any((e) => e == null)
