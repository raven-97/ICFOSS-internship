#define DELAY        500
#define ON           0x01
#define OFF          0x00
#define NUM_LEDS     0x03

#define RED_LED      0x400000
#define BLUE_LED     0x200000
#define GREEN_LED    0x080000
#define OUTPUT       0x00
#define INPUT        0x01
#define HIGH         0x01
#define LOW          0x00

#define PIN0        0x010000
#define PIN1           0x020000
#define PIN2            0x040000
#define PIN3            0x080000
#define PIN4            0x100000
#define PIN5            0x200000
#define PIN6            0x400000
#define PIN7            0x800000
#define PIN8            0x000001
#define PIN9            0x000002
#define PIN10           0x000004
#define PIN11           0x000008
#define PIN12           0x000010
#define PIN13           0x000020

#define PIN15           0x000200
#define PIN16           0x000400
#define PIN17           0x000800
#define PIN18           0x001000
#define PIN19           0x002000


void setupPIN(int pin);
void setPIN(int pin, int state);



void delay(int milliseconds);
void pinMode1(int state);

