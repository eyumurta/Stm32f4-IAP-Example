# Stm32f4-IAP-Example
This code example using AN4657 app note.The stm32f1 code porting for stm32f411 Nucleoo board and adding password athentication.

This IAP driver based  [X-CUBE-IAP-USART](https://www.st.com/en/embedded-software/x-cube-iap-usart.html).

IAP Deneme folder contains IAP code. The IAP code using sector 0 of mcu.

IAP Blink folder contains APP code.The code compiled for sector 1 of mcu.
APP code linker files  STM32F411RETX_FLASH.ld and STM32F411RETX_RAM.ld chanched this line.

```c
FLASH    (rx)    : ORIGIN = 0x08004000,   LENGTH = 512K
```
Another important point vec table adress.Top of main function in main.c contains below line.
```C

	SCB->VTOR = 0x08004000;
```

You are ready for booting mcu.The applicaiton using YMODEM protocol so we use Tera Term.Tera Term 4 some problems so I'm using teraterm 5 beta.
The Default Bootloader Password in defined IAP Deneme file.Find this line in main.c

```C
uint8_t password[7]={"sel3543"};//password
uint8_t buffer[7];//password receive buffer

```

Press user button while reset button and unpress the reset button.The mcu entering the boot mode and tera term showing like this.

![pass](https://user-images.githubusercontent.com/57114692/232314167-6314bdf3-b53d-431c-97d0-ce8399999eca.JPG)

Enter the default password.If boot code accept your password showing like this.

![pass2](https://user-images.githubusercontent.com/57114692/232314257-8df170a5-1965-451f-afe8-67220138233c.JPG)


Press 1 and boot code will be waiting send bin code.follow this File>Transfer>YMODEM>Send 
Send the IAP Blink>Debug> IAP_Blink.bin 
If download completed and press 3 Tera Term showning like this.

![pass3](https://user-images.githubusercontent.com/57114692/232314595-16c5649d-3812-4ad7-9084-d955f87c332b.JPG)
