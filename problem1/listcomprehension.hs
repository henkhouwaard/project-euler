--If we list all the natural numbers below 10 that are multiples
--of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
--Find the sum of all the multiples of 3 or 5 below 1000.
import Test.HUnit
problem1 n = sum [x | x <- [1..n], x `mod` 3 == 0 || x `mod` 5 ==0]

test1 = TestCase (assertEqual "problem1 33," 33 (problem1 10))
test2 = TestCase (assertEqual "problem1 999," 233168 (problem1 999))
test3 = TestCase (assertEqual "problem1 1000," 234168 (problem1 1000))
test4 = TestCase (assertEqual "problem1 996," 232169 (problem1 996))
test5 = TestCase (assertEqual "problem1 998," 232169 (problem1 998))
tests = TestList
    [TestLabel "test1" test1,
    TestLabel "test2" test2,
    TestLabel "test3" test3,
    TestLabel "test4" test4,
    TestLabel "test5" test5]