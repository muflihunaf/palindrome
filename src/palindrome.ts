function isPalindrome(str: string): boolean {
  const cleanStr = str.toLowerCase().replace(/[\W_]/g, '');
  const reversedStr = cleanStr.split('').reverse().join('');
  return cleanStr === reversedStr;
}

const testStrings: string[] = ["Kasur ini rusak", "Aku suka kamu", "level", "malam"];
testStrings.forEach(str => {
  console.log(`"${str}" adalah ${isPalindrome(str) ? '' : 'bukan '}palindrome.`);

});
