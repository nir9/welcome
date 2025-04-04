
ENTRY(main)             /* Define the entry point   */

SECTIONS
{
    . = 0x10000;
    .text : 
    {
        *(.text.main)   /* Place main first         */
        *(.text)        /* Place all .text sections */
    }

    .data : 
    {
        *(.data)        /* Place all .data sections */
    }

    .bss : 
    {
        *(.bss)         /* Place all .bss sections  */
    }
}
