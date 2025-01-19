SECTIONS
{
  . = 0x10000;
  ENTRY(main)
  .text : {*(.text)}
}
