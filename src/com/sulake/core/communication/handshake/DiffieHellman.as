package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1473:BigInteger;
      
      private var var_1021:BigInteger;
      
      private var var_2080:BigInteger;
      
      private var var_1472:BigInteger;
      
      private var var_2078:BigInteger;
      
      private var var_2079:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         var_1473 = param1;
         var_2080 = param2;
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return var_2078.toRadix(param1);
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         var_1472 = new BigInteger();
         var_1472.fromRadix(param1,param2);
         var_2078 = var_1472.modPow(var_1021,var_1473);
         return getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return var_2079.toRadix(param1);
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         var_1021 = new BigInteger();
         var_1021.fromRadix(param1,param2);
         var_2079 = var_2080.modPow(var_1021,var_1473);
         return true;
      }
   }
}
