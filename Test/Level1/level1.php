<?php
/**
 * Expand Online Basic PHP Assessment
 *
 * @author Jan Dorsman, Expand Online <jdorsman@expandonline.nl>
 * @copyright (c) 2011, Expand Online B.V.
 */
	 
class Assessment {

	/**
	 * This function should calculate the faculty of the given number.
	 * The faculty is the multiplication of a number with a decreasing number up until 1.
	 * 
	 * For example: The faculty of 4 is: (4 * 3 * 2 * 1) = 24.
	 *
	 * @param int $number The number for which to calculate the faculty.
	 * @return int
	 */
	public static function faculty($number) {
		// We will determine our output based on the initial input.
		$output = $number;

		// CODE YOUR SOLUTION HERE

		return (int) $output;
	}

	/**
	 * This function should return all the Fibonacci numbers until it hits the set limit.
	 * The Fibonacci number sequence starts with 0 and 1, each next number after those is the sum of the last two numbers of the sequence.
	 *
	 * @param int $limit The limit where to stop calculating any more Fibonacci numbers.
	 * @return mixed
	 */
	public static function fibonacci($limit = 100) {
		// The start of the Fibonacci series is always 0, 1 .. extend this array with the rest of the numbers.
		$fibo = array(0, 1);

		// CODE YOUR SOLUTION HERE

		return $fibo;
	}
	
	/**
	 * Do not alter this function in any way!
	 *
	 * @return string
	 */
	
	private static function hello() {
		return "Hello World!";
	}
	
	/**
	 * This function should make a call to the hello function above.
	 *
	 * @return string
	 */
	 
	public static function world() {
		// CODE YOUR SOLUTION HERE
		
		// Make the below line return "Hello World" from the hello() function, without altering the hello function in any way.
		return $out;
	}
	
	/**
	 * Explain what the below function does.
	 *
	 * @param string $str Input text string.
	 * @return string
	 */
	
	public static function replaceText($str) {
		$out = preg_replace('([\d]{4})', rand(1,9) . '000', $str);
		return $out;
	}
	
}
