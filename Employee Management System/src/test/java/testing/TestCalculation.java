package testing;
import static org.junit.Assert.*;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import com.bway.springproject.testing.Calculation;



public class TestCalculation {
	
	static Calculation c = null;
	
	@BeforeClass
	public static void init(){
	   c = new Calculation();
	   System.out.println("before class method");
	}

	@Test
	public void testSquare() {
	 
		int result = c.getSquare(10);
		assertEquals(100, result);
	}

	@Test
	public void testAddition(){
		
		int value = c.addition(5, 5);
		assertEquals(10, value);
	}
	
	
	@AfterClass
	public static void classEnd(){
		System.out.println("after class");
	}
	
	@Before
	public void initMethod(){
		 System.out.println("init method ");
	}
	
	
	@After
	public void afterMethod(){
		 System.out.println("after method ");
		c = null;
	}
	
	
}
