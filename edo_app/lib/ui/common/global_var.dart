String userName;
enum delivery { shop, taxi, personal }
enum paymentForDelivery { equl, proportional }
enum statustOfOrder { active, inProgress, devivery, delivered, complete }
List<String> shopNames = ["Фреш", "Реми", "DNS", "Zuma", "KFC"];

String enumValueToString(Object o) => o.toString().split('.').last;
T enumValueFromString<T>(String key, Iterable<T> values) => values.firstWhere(
      (v) => v != null && key == enumValueToString(v),
      orElse: () => null,
    );
