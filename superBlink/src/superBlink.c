#include <stdio.h>
#include "superBlink.h"


int main()
{
    
    pinMode1(OUTPUT);   
                                                                                                                                                                                           
    


    
    
        while(1)
        {
         
        setPIN(PIN8, HIGH);
        setPIN(PIN9, LOW);
        delay(DELAY);
        setPIN(PIN8, LOW);
        setPIN(PIN9, HIGH);
        delay(DELAY);
        }
        
       

    

}
