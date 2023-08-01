pragma circom 2.0.0;

template AnjaliCircuit () {  

   // signal inputs  
   signal input a;  
   signal input b; 

   //signals from gates
   signal x;  
   signal y;  
 
  //signal output
   signal output q;  

  //components
  component andGate = AND();
  component orGate = OR();
  component notGate = NOT();

  //logic
  andGate.A <== a;
  andGate.B <== b;
  x <== andGate.out; 

  notGate.A <== b;
  y <== notGate.out;

  orGate.A <==x;
  orGate.B <==y;
  q <== orGate.out;
     
}

template AND() {
  signal input A;
  signal input B;
  signal output out;

  out <== A * B;
}

template NOT() {
  signal input A;
  signal output out;

  out <== 1 + A - 2 * A;
}

template OR() {
  signal input A;
  signal input B;
  signal output out;

  out <== A + B - A * B;
}
component main = AnjaliCircuit();
