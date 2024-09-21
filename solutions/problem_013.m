# Problem 13. Remove all the consonants

function s2 = refcn(s1)
  % Hardcoded list of English vowels
  VOWELS = [
      'a', 'e', 'i', 'o', 'u',
      'A', 'E', 'I', 'O', 'U'
  ];

  % Get an array containing the elements of s1 which are letters.
  isLetter = isstrprop(s1, 'alpha');

  % Get an array containing the indices of the elements of s1 which are vowels
  isVowel = ismember(s1, VOWELS);
  isConsonant = isLetter & ~isVowel;
  nonConsonantsOfS1 = s1(~isConsonant);

  s2 = nonConsonantsOfS1;
end
