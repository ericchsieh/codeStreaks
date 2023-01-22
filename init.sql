CREATE TABLE `users` (
  `userId` int NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `pwd` varchar(45) NOT NULL,
  `nickname` varchar(45) NOT NULL,
  `status` tinyint NOT NULL,
  `preference` int NOT NULL,
  `company` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- status: 1=working 2=seeking, company is NULL
CREATE TABLE `make` (
  `userId` int NOT NULL,
  `friendId` int NOT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`userId`,`friendId`),
  KEY `friendId_idx` (`friendId`),
  CONSTRAINT `friendId` FOREIGN KEY (`friendId`) REFERENCES `users` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `userId` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `attempt` (
  `attemptId` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `questionId` int NOT NULL,
  `status` tinyint NOT NULL,
  `duration` int DEFAULT NULL,
  PRIMARY KEY (`attemptId`),
  KEY `userId_idx` (`userId`),
  KEY `uId_idx` (`userId`),
  KEY `qId_idx` (`questionId`),
  CONSTRAINT `qId` FOREIGN KEY (`questionId`) REFERENCES `questions` (`questionId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `uId` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `codestreaks`.`questions` (
  `questionId` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(100) NOT NULL,
  `category` INT NOT NULL,
  `difficulty` INT NOT NULL,
  `link` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`questionId`));


--------------- Users  --------------->
INSERT INTO `codestreaks`.`users` (`userId`, `email`, `pwd`, `nickname`, `status`, `preference`, `company`) VALUES ('1', 'aaa@gmail.com', '1234', 'Araminta', '1', '2', 'Microsoft');
INSERT INTO `codestreaks`.`users` (`userId`, `email`, `pwd`, `nickname`, `status`, `preference`, `company`) VALUES ('2', 'bbb@gmail.com', '1234', 'Arden', '1', '2', 'Meta');
INSERT INTO `codestreaks`.`users` (`userId`, `email`, `pwd`, `nickname`, `status`, `preference`, `company`) VALUES ('3', 'ccc@gmail.com', '1234', 'Azalea', '1', '1', 'Microsoft');
INSERT INTO `codestreaks`.`users` (`userId`, `email`, `pwd`, `nickname`, `status`, `preference`, `company`) VALUES ('4', 'ddd@gmail.com', '1234', 'Birdie', '1', '2', 'Meta');
INSERT INTO `codestreaks`.`users` (`userId`, `email`, `pwd`, `nickname`, `status`, `preference`, `company`) VALUES ('5', 'eee@gmail.com', '1234', 'Blythe', '1', '3', 'Amazon');
INSERT INTO `codestreaks`.`users` (`userId`, `email`, `pwd`, `nickname`, `status`, `preference`, `company`) VALUES ('6', 'fff@gmail.com', '1234', 'Clover', '1', '2', 'Nexflix');
INSERT INTO `codestreaks`.`users` (`userId`, `email`, `pwd`, `nickname`, `status`, `preference`, `company`) VALUES ('7', 'ggg@gmail.com', '1234', 'Lilac', '1', '3', 'Microsoft');
INSERT INTO `codestreaks`.`users` (`userId`, `email`, `pwd`, `nickname`, `status`, `preference`, `company`) VALUES ('8', 'hhh@gmail.com', '1234', 'Lavender', '1', '3', 'Apple');
INSERT INTO `codestreaks`.`users` (`userId`, `email`, `pwd`, `nickname`, `status`, `preference`, `company`) VALUES ('9', 'iii@gmail.com', '1234', 'Posey', '1', '2', 'Amazon');
INSERT INTO `codestreaks`.`users` (`userId`, `email`, `pwd`, `nickname`, `status`, `preference`, `company`) VALUES ('10', 'jjj@gmail.com', '1234', 'Waverly', '1', '2', 'Microsoft');
INSERT INTO `codestreaks`.`users` (`userId`, `email`, `pwd`, `nickname`, `status`, `preference`) VALUES ('11', 'kkk@gmail.com', '1234', 'Birch', '2', '2');
INSERT INTO `codestreaks`.`users` (`userId`, `email`, `pwd`, `nickname`, `status`, `preference`) VALUES ('12', 'lll@gmail.com', '1234', 'Booker', '2', '1');
INSERT INTO `codestreaks`.`users` (`userId`, `email`, `pwd`, `nickname`, `status`, `preference`) VALUES ('13', 'mm@gmail.com', '1234', 'Dane', '2', '1');
INSERT INTO `codestreaks`.`users` (`userId`, `email`, `pwd`, `nickname`, `status`, `preference`) VALUES ('14', 'nnn@gmail.com', '1234', 'Garrison', '2', '2');
INSERT INTO `codestreaks`.`users` (`userId`, `email`, `pwd`, `nickname`, `status`, `preference`) VALUES ('15', 'ooo@gmail.com', '1234', 'Hale', '2', '3');
INSERT INTO `codestreaks`.`users` (`userId`, `email`, `pwd`, `nickname`, `status`, `preference`, `company`) VALUES ('16', 'ppp@gmail.com', '1234', 'Kit', '1', '2', 'Google');
INSERT INTO `codestreaks`.`users` (`userId`, `email`, `pwd`, `nickname`, `status`, `preference`, `company`) VALUES ('17', 'qqq@gmail.com', '1234', 'Oberon', '1', '1', 'Microsoft');
INSERT INTO `codestreaks`.`users` (`userId`, `email`, `pwd`, `nickname`, `status`, `preference`, `company`) VALUES ('18', 'rrr@gmail.com', '1234', 'Shaw', '1', '2', 'Amazon');
INSERT INTO `codestreaks`.`users` (`userId`, `email`, `pwd`, `nickname`, `status`, `preference`) VALUES ('19', 'sss@gmail.com', '1234', 'Tobin', '2', '2');
INSERT INTO `codestreaks`.`users` (`userId`, `email`, `pwd`, `nickname`, `status`, `preference`) VALUES ('20', 'ttt@gmail.com', '1234', 'Winston', '2', '2');

 
--------------- Make  --------------->
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('1', '2', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('2', '1', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('1', '3', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('3', '1', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('1', '4', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('4', '1', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('1', '5', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('5', '1', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('2', '4', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('4', '2', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('1', '7', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('7', '1', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('1', '9', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('9', '1', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('1', '11', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('11', '1', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('1', '12', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('12', '1', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('1', '13', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('13', '1', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('1', '14', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('14', '1', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('1', '17', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('17', '1', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('1', '18', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('18', '1', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('1', '19', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('19', '1', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('2', '5', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('5', '2', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('2', '8', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('8', '2', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('2', '10', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('10', '2', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('2', '11', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('11', '2', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('2', '14', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('14', '2', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('2', '15', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('15', '2', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('2', '18', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('18', '2', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('3', '7', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('7', '3', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('3', '8', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('8', '3', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('3', '9', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('9', '3', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('3', '15', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('15', '3', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('3', '17', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('17', '3', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('3', '19', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('19', '3', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('4', '15', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('15', '4', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('6', '16', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('16', '6', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('6', '7', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('7', '6', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('7', '9', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('9', '7', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('7', '11', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('11', '7', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('7', '13', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('13', '7', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('7', '14', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('14', '7', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('7', '16', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('16', '7', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('7', '19', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('19', '7', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('8', '18', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('18', '8', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('8', '9', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('9', '8', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('8', '11', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('11', '8', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('8', '14', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('14', '8', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('15', '19', '1');
INSERT INTO `codestreaks`.`make` (`userId`, `friendId`, `status`) VALUES ('19', '15', '1');


--------------- Questions  --------------->
INSERT INTO `codestreaks`.`questions` (`questionId`, `title`, `category`, `difficulty`, `link`) VALUES ('1', '1. Two Sum', 'Array', 'Easy', 'https://leetcode.com/problems/two-sum/');
INSERT INTO `codestreaks`.`questions` (`questionId`, `title`, `category`, `difficulty`, `link`) VALUES ('2', '2. Add Two Numbers', 'Linked List', 'Medium', 'https://leetcode.com/problems/add-two-numbers/');
INSERT INTO `codestreaks`.`questions` (`questionId`, `title`, `category`, `difficulty`, `link`) VALUES ('3', '3. Longest Substring Without Repeating Characters', 'String', 'Medium', 'https://leetcode.com/problems/longest-substring-without-repeating-characters/');
INSERT INTO `codestreaks`.`questions` (`questionId`, `title`, `category`, `difficulty`, `link`) VALUES ('4', '4. Median of Two Sorted Arrays', 'Array', 'Hard', 'https://leetcode.com/problems/median-of-two-sorted-arrays/');
INSERT INTO `codestreaks`.`questions` (`questionId`, `title`, `category`, `difficulty`, `link`) VALUES ('5', '5. Longest Palindromic Substring', 'String', 'Medium', 'https://leetcode.com/problems/longest-palindromic-substring/');
INSERT INTO `codestreaks`.`questions` (`questionId`, `title`, `category`, `difficulty`, `link`) VALUES ('6', '6. Zigzag Conversion', 'String', 'Medium', 'https://leetcode.com/problems/zigzag-conversion/');
INSERT INTO `codestreaks`.`questions` (`questionId`, `title`, `category`, `difficulty`, `link`) VALUES ('7', '7. Reverse Integer', 'Math', 'Medium', 'https://leetcode.com/problems/reverse-integer/');
INSERT INTO `codestreaks`.`questions` (`questionId`, `title`, `category`, `difficulty`, `link`) VALUES ('8', '8. String to Integer (atoi)', 'String', 'Medium', 'https://leetcode.com/problems/string-to-integer-atoi/');
INSERT INTO `codestreaks`.`questions` (`questionId`, `title`, `category`, `difficulty`, `link`) VALUES ('9', '9. Palindrome Number', 'Math', 'Easy', 'https://leetcode.com/problems/palindrome-number/');
INSERT INTO `codestreaks`.`questions` (`questionId`, `title`, `category`, `difficulty`, `link`) VALUES ('10', '10. Regular Expression Matching', 'String', 'Hard', 'https://leetcode.com/problems/regular-expression-matching/');
INSERT INTO `codestreaks`.`questions` (`questionId`, `title`, `category`, `difficulty`, `link`) VALUES ('11', '11. Container With Most Water', 'Array', 'Medium', 'https://leetcode.com/problems/container-with-most-water/');
INSERT INTO `codestreaks`.`questions` (`questionId`, `title`, `category`, `difficulty`, `link`) VALUES ('12', '12. Integer to Roman', 'Hash Table', 'Medium', 'https://leetcode.com/problems/integer-to-roman/');
INSERT INTO `codestreaks`.`questions` (`questionId`, `title`, `category`, `difficulty`, `link`) VALUES ('13', '13. Roman to Integer', 'Hash Table', 'Easy', 'https://leetcode.com/problems/roman-to-integer/');
INSERT INTO `codestreaks`.`questions` (`questionId`, `title`, `category`, `difficulty`, `link`) VALUES ('14', '14. Longest Common Prefix', 'String', 'Easy', 'https://leetcode.com/problems/longest-common-prefix/');
INSERT INTO `codestreaks`.`questions` (`questionId`, `title`, `category`, `difficulty`, `link`) VALUES ('15', '15. 3Sum', 'Array', 'Medium', 'https://leetcode.com/problems/3sum/');
INSERT INTO `codestreaks`.`questions` (`questionId`, `title`, `category`, `difficulty`, `link`) VALUES ('16', '16. 3Sum Closest', 'Array', 'Medium', 'https://leetcode.com/problems/3sum-closest/');
INSERT INTO `codestreaks`.`questions` (`questionId`, `title`, `category`, `difficulty`, `link`) VALUES ('17', '17. Letter Combinations of a Phone Number', 'Hash Table', 'Medium', 'https://leetcode.com/problems/letter-combinations-of-a-phone-number/');
INSERT INTO `codestreaks`.`questions` (`questionId`, `title`, `category`, `difficulty`, `link`) VALUES ('18', '18. 4Sum', 'Array', 'Medium', 'https://leetcode.com/problems/4sum/');
INSERT INTO `codestreaks`.`questions` (`questionId`, `title`, `category`, `difficulty`, `link`) VALUES ('19', '19. Remove Nth Node From End of List', 'Linked List', 'Medium', 'https://leetcode.com/problems/remove-nth-node-from-end-of-list/');
INSERT INTO `codestreaks`.`questions` (`questionId`, `title`, `category`, `difficulty`, `link`) VALUES ('20', '20. Valid Parentheses', 'String', 'Easy', 'https://leetcode.com/problems/valid-parentheses/');
INSERT INTO `codestreaks`.`questions` (`questionId`, `title`, `category`, `difficulty`, `link`) VALUES ('21', '21. Merge Two Sorted Lists', 'Linked List', 'Easy', 'https://leetcode.com/problems/merge-two-sorted-lists/');
INSERT INTO `codestreaks`.`questions` (`questionId`, `title`, `category`, `difficulty`, `link`) VALUES ('22', '22. Generate Parentheses', 'String', 'Medium', 'https://leetcode.com/problems/generate-parentheses/');
INSERT INTO `codestreaks`.`questions` (`questionId`, `title`, `category`, `difficulty`, `link`) VALUES ('23', '23. Merge k Sorted Lists', 'Linked List', 'Hard', 'https://leetcode.com/problems/merge-k-sorted-lists/');
INSERT INTO `codestreaks`.`questions` (`questionId`, `title`, `category`, `difficulty`, `link`) VALUES ('24', '24. Swap Nodes in Pairs', 'Linked List', 'Medium', 'https://leetcode.com/problems/swap-nodes-in-pairs/');
INSERT INTO `codestreaks`.`questions` (`questionId`, `title`, `category`, `difficulty`, `link`) VALUES ('25', '25. Reverse Nodes in k-Group', 'Linked List', 'Hard', 'https://leetcode.com/problems/reverse-nodes-in-k-group/');
INSERT INTO `codestreaks`.`questions` (`questionId`, `title`, `category`, `difficulty`, `link`) VALUES ('26', '26. Remove Duplicates from Sorted Array', 'Array', 'Easy', 'https://leetcode.com/problems/remove-duplicates-from-sorted-array/');
INSERT INTO `codestreaks`.`questions` (`questionId`, `title`, `category`, `difficulty`, `link`) VALUES ('27', '27. Remove Element', 'Array', 'Easy', 'https://leetcode.com/problems/remove-element/');
INSERT INTO `codestreaks`.`questions` (`questionId`, `title`, `category`, `difficulty`, `link`) VALUES ('28', '28. Find the Index of the First Occurrence in a String', 'Two Pointers', 'Medium', 'https://leetcode.com/problems/find-the-index-of-the-first-occurrence-in-a-string/');
INSERT INTO `codestreaks`.`questions` (`questionId`, `title`, `category`, `difficulty`, `link`) VALUES ('29', '29. Divide Two Integers', 'Math', 'Medium', 'https://leetcode.com/problems/divide-two-integers/');
INSERT INTO `codestreaks`.`questions` (`questionId`, `title`, `category`, `difficulty`, `link`) VALUES ('30', '30. Substring with Concatenation of All Words', 'Hash Table', 'Hard', 'https://leetcode.com/problems/substring-with-concatenation-of-all-words/');
INSERT INTO `codestreaks`.`questions` (`questionId`, `title`, `category`, `difficulty`, `link`) VALUES ('31', '31. Next Permutation', 'Array', 'Medium', 'https://leetcode.com/problems/next-permutation/');
INSERT INTO `codestreaks`.`questions` (`questionId`, `title`, `category`, `difficulty`, `link`) VALUES ('32', '32. Longest Valid Parentheses', 'String', 'Hard', 'https://leetcode.com/problems/longest-valid-parentheses/');
INSERT INTO `codestreaks`.`questions` (`questionId`, `title`, `category`, `difficulty`, `link`) VALUES ('33', '33. Search in Rotated Sorted Array', 'Array', 'Medium', 'https://leetcode.com/problems/search-in-rotated-sorted-array/');
INSERT INTO `codestreaks`.`questions` (`questionId`, `title`, `category`, `difficulty`, `link`) VALUES ('34', '34. Find First and Last Position of Element in Sorted Array', 'Array', 'Medium', 'https://leetcode.com/problems/find-first-and-last-position-of-element-in-sorted-array/');
INSERT INTO `codestreaks`.`questions` (`questionId`, `title`, `category`, `difficulty`, `link`) VALUES ('35', '35. Search Insert Position', 'Array', 'Easy', 'https://leetcode.com/problems/search-insert-position/');
INSERT INTO `codestreaks`.`questions` (`questionId`, `title`, `category`, `difficulty`, `link`) VALUES ('36', '36. Valid Sudoku', 'Array', 'Medium', 'https://leetcode.com/problems/valid-sudoku/');
INSERT INTO `codestreaks`.`questions` (`questionId`, `title`, `category`, `difficulty`, `link`) VALUES ('37', '37. Sudoku Solver', 'Array', 'Hard', 'https://leetcode.com/problems/sudoku-solver/');
INSERT INTO `codestreaks`.`questions` (`questionId`, `title`, `category`, `difficulty`, `link`) VALUES ('38', '38. Count and Say', 'String', 'Medium', 'https://leetcode.com/problems/count-and-say/');
INSERT INTO `codestreaks`.`questions` (`questionId`, `title`, `category`, `difficulty`, `link`) VALUES ('39', '39. Combination Sum', 'Array', 'Medium', 'https://leetcode.com/problems/combination-sum/');
INSERT INTO `codestreaks`.`questions` (`questionId`, `title`, `category`, `difficulty`, `link`) VALUES ('40', '40. Combination Sum II', 'Array', 'Medium', 'https://leetcode.com/problems/combination-sum-ii/');
INSERT INTO `codestreaks`.`questions` (`questionId`, `title`, `category`, `difficulty`, `link`) VALUES ('41', '41. First Missing Positive', 'Array', 'Hard', 'https://leetcode.com/problems/first-missing-positive/');
INSERT INTO `codestreaks`.`questions` (`questionId`, `title`, `category`, `difficulty`, `link`) VALUES ('42', '42. Trapping Rain Water', 'Array', 'Hard', 'https://leetcode.com/problems/trapping-rain-water/');
INSERT INTO `codestreaks`.`questions` (`questionId`, `title`, `category`, `difficulty`, `link`) VALUES ('43', '43. Multiply Strings', 'Math', 'Medium', 'https://leetcode.com/problems/multiply-strings/');
INSERT INTO `codestreaks`.`questions` (`questionId`, `title`, `category`, `difficulty`, `link`) VALUES ('44', '44. Wildcard Matching', 'String', 'Hard', 'https://leetcode.com/problems/wildcard-matching/');
INSERT INTO `codestreaks`.`questions` (`questionId`, `title`, `category`, `difficulty`, `link`) VALUES ('45', '45. Jump Game II', 'Array', 'Medium', 'https://leetcode.com/problems/jump-game-ii/');
INSERT INTO `codestreaks`.`questions` (`questionId`, `title`, `category`, `difficulty`, `link`) VALUES ('46', '46. Permutations', 'Array', 'Medium', 'https://leetcode.com/problems/permutations/');
INSERT INTO `codestreaks`.`questions` (`questionId`, `title`, `category`, `difficulty`, `link`) VALUES ('47', '47. Permutations II', 'Array', 'Medium', 'https://leetcode.com/problems/permutations-ii/');
INSERT INTO `codestreaks`.`questions` (`questionId`, `title`, `category`, `difficulty`, `link`) VALUES ('48', '48. Rotate Image', 'Array', 'Medium', 'https://leetcode.com/problems/rotate-image/');
INSERT INTO `codestreaks`.`questions` (`questionId`, `title`, `category`, `difficulty`, `link`) VALUES ('49', '49. Group Anagrams', 'Array', 'Medium', 'https://leetcode.com/problems/group-anagrams/');
INSERT INTO `codestreaks`.`questions` (`questionId`, `title`, `category`, `difficulty`, `link`) VALUES ('50', '50. Pow(x, n)', 'Math', 'Medium', 'https://leetcode.com/problems/powx-n/');


--------------- Attempt  --------------->
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('1', '1', '1', '1', '21');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('2', '1', '2', '1', '22');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('3', '1', '3', '1', '23');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('4', '1', '4', '1', '24');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('5', '1', '5', '1', '22');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('6', '1', '6', '1', '22');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('7', '1', '7', '1', '21');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('8', '1', '8', '1', '15');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('9', '1', '9', '1', '16');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('10', '1', '10', '1', '18');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('11', '1', '11', '1', '12');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('12', '1', '12', '1', '25');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('13', '1', '13', '1', '27');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('14', '1', '14', '1', '28');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('15', '1', '15', '1', '29');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('16', '1', '16', '1', '21');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('17', '1', '17', '1', '22');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('18', '1', '18', '1', '23');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('19', '1', '19', '1', '24');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('20', '1', '20', '1', '25');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('21', '2', '1', '1', '22');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('22', '2', '2', '1', '23');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('23', '2', '3', '1', '24');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('24', '2', '4', '1', '25');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('25', '2', '5', '1', '26');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('26', '2', '6', '1', '27');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('27', '2', '7', '1', '28');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('28', '2', '8', '1', '29');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('29', '2', '9', '1', '31');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('30', '2', '21', '1', '33');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('31', '2', '22', '1', '32');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('32', '2', '23', '1', '35');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('33', '2', '24', '1', '54');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('34', '2', '25', '1', '35');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('35', '2', '31', '1', '33');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('36', '2', '33', '1', '55');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('37', '2', '36', '1', '34');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('38', '2', '37', '1', '100');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('39', '2', '39', '1', '34');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('40', '2', '41', '1', '55');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('41', '2', '42', '1', '33');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('42', '2', '43', '1', '23');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('43', '3', '1', '1', '12');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('44', '3', '3', '1', '23');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('45', '3', '4', '1', '44');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('46', '3', '5', '1', '55');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('47', '3', '6', '1', '33');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('48', '3', '8', '1', '22');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('49', '3', '23', '1', '13');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('50', '3', '24', '1', '24');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('51', '4', '2', '1', '43');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('52', '4', '1', '1', '23');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('53', '4', '2', '1', '22');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('54', '5', '3', '1', '43');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('55', '5', '4', '1', '35');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('56', '5', '32', '1', '33');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('57', '5', '43', '1', '23');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('58', '6', '1', '1', '33');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('59', '6', '2', '1', '32');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('60', '6', '4', '1', '32');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('61', '7', '6', '1', '23');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('62', '7', '43', '1', '13');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('63', '8', '48', '1', '43');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('64', '8', '49', '1', '24');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('65', '9', '9', '1', '53');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('66', '9', '13', '1', '35');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('67', '9', '14', '1', '34');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('68', '9', '15', '1', '32');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('69', '9', '17', '1', '33');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('70', '10', '18', '1', '34');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('71', '10', '19', '1', '23');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('72', '10', '20', '1', '32');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('73', '10', '21', '1', '13');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('74', '10', '22', '1', '23');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('75', '10', '23', '1', '24');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('76', '10', '24', '1', '35');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('77', '11', '25', '1', '35');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('78', '11', '26', '1', '32');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('79', '11', '28', '1', '33');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('80', '11', '29', '1', '33');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('81', '11', '30', '1', '44');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('82', '11', '31', '1', '55');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('83', '12', '32', '1', '43');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('84', '12', '33', '1', '32');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('85', '12', '34', '1', '33');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('86', '12', '35', '1', '32');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('87', '12', '36', '1', '23');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('88', '13', '37', '1', '32');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('89', '13', '38', '1', '13');
INSERT INTO `codestreaks`.`attempt` (`attemptId`, `userId`, `questionId`, `status`, `duration`) VALUES ('90', '13', '39', '1', '33');
