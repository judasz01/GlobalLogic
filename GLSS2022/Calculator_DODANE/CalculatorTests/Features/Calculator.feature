Feature: Calculator

@SetFirstNumber
Scenario: Add two numbers
	Given the second number is 70
	When the two numbers are added
	Then the result should be 120

Scenario Outline: Subtract two numbers
	Given the first number is <x>
	And the second number is <y>
	When the two numbers are subtracted
	Then the result should be <result>
Examples:
| x  | y   | result |
| 50 | 70  | -20    |
| 90 | -10 | 100    |

Scenario: Divide by 0 returns 0
	Given the first number is 0
	And the second number is 50
	When the two numbers are divided
	Then the result should be 0

Scenario: Multiply two numbers
	Given the first number is 10
	And the second number is 100
	When the two numbers are multiplied
	Then the result should be 1000

Scenario: Delta
	When I calculate delta from 2,2,-3 as coefficients of the quadratic equation
	Then the equation has two real number solutions





Scenario Outline: Delta for Calculator (sum of two numbers and Delta value;;)
    
	Given two numbers are given for <x> and <y>
	When the sum was calculated with a Delta <z>
	Then the result should be "<expected_result>"

Examples:
| x  | y  | z   |expected_result(_numberOfSolutions)|
| 1  | 3  | 1   |     5                             |
| 2  | 4  | 2   |     1                             |
| 5  | 4  | 1   |     0                             |




