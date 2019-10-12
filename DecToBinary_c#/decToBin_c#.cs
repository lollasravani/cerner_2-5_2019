//cerner_2^5_2019
using System;  
  public class Conversion
   {  
     public static void Main(string[] args)  
      {  
       int  n, i;       
       int[] a = new int[10];     
       n= 32;     
       for(i=0; n>0; i++)      
        {      
         a[i]=n%2;      
         n= n/2;    
        }      
       Console.Write("Binary of the given number= ");      
       for(i=i-1 ;i>=0 ;i--)      
       {      
        Console.Write(a[i]);      
       }                 
      }  
  }