// returns longest non-repeating substring
// if multiple substrings tie in length, returns first occuring
String longestUniqueSubstring(String str) {
  int start = 0;
  int maxLength = 0;
  String longestSubstring = "";
  // dict to track most recent index of char
  Map<String, int> charIndexMap = {};

  for (int end = 0; end < str.length; end++) {
    String char = str[end];

    if (charIndexMap.containsKey(char) && charIndexMap[char]! >= start) {
      start = charIndexMap[char]! + 1;
    }
    charIndexMap[char] = end;
    int currentLength = end - start + 1;

    if (currentLength > maxLength) {
      maxLength = currentLength;
      longestSubstring = str.substring(start, end + 1);
    }
  }
  return longestSubstring;
}
