//cerner_2^5_2019
//Run this code in https://www.tutorialspoint.com/compile_scala_online.php
//The output of the program is 32
object HelloWorld {
   def main(args: Array[String]) {
      val x = 999499999l
      val y=0f
      val z=x-(if(true){x} else{y})
      println(z+1)
   }
}
