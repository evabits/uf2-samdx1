./edbg -t samd51 -F w0,0,1           # BOD33 Disable at power-on.
./edbg -t samd51 -F w0,8:1,0x1C      # BOD33 threshold level at power-on.
./edbg -t samd51 -F w0,10:9,1        # BOD33 Action at power-on
./edbg -t samd51 -F w0,14:11,2       # BOD33 Hysteresis configuration at power-on.
./edbg -t samd51 -F w0,29:26,0xf     # NVM Bootloader Size
./edbg -t samd51 -F w0,35:32,1       # Number of NVM Blocks composing a SmartEEPROM sector
./edbg -t samd51 -F w0,38:36,3       # SmartEEPROM Page Size
./edbg -t samd51 -F w0,39,1          # RAM ECC Disable
./edbg -t samd51 -F w0,48,0          # WDT Enable at power-on.
./edbg -t samd51 -F w0,49,0          # WDT Always-On at power-on.
./edbg -t samd51 -F w0,53:50,0xB     # WDT Period at power-on.
./edbg -t samd51 -F w0,57:54,0xB     # WDT Window mode time-out at power-on
./edbg -t samd51 -F w0,61:58,0xB     # WDT Early Warning Interrupt Time Offset at power-on.
./edbg -t samd51 -F w0,62,0          # WDT Timer Window Mode Enable at power-on.
./edbg -t samd51 -F w0,95:64,0xffffffff # NVM Region Lock Bits.

./edbg -t samd51 -F r0,0          
# 0x1 (1)
./edbg -t samd51 -F r0,8:1     
# 0x1c (28)
./edbg -t samd51 -F r0,10:9  
# 0x1 (1)
./edbg -t samd51 -F r0,14:11
# 0x2 (2)
./edbg -t samd51 -F r0,25:15
# 0x7ff (2047)
./edbg -t samd51 -F r0,29:26
# 0xf (15)

# Unlock bootloader
./edbg -t samd51 -F w0,29:26,0xf     # NVM Bootloader Size

# lock bootloader
./edbg -t samd51 -F w0,29:26,0xd     # NVM Bootloader Size



# Read fuses

./edbg -t samd51 -F r0,35:32      # Number of NVM Blocks composing a SmartEEPROM sector
# 1
./edbg -t samd51 -F r0,38:36      # SmartEEPROM Page Size
# 3
./edbg -t samd51 -F r0,48         # WDT Enable at power-on.
# 0
./edbg -t samd51 -F r0,49         # WDT Always-On at power-on.
# 0
./edbg -t samd51 -F r0,53:50      # WDT Period at power-on.
# 0xB
./edbg -t samd51 -F r0,57:54      # WDT Window mode time-out at power-on
# 0xB
./edbg -t samd51 -F r0,61:58      # WDT Early Warning Interrupt Time Offset at power-on.
# 0xB
./edbg -t samd51 -F r0,62         # WDT Timer Window Mode Enable at power-on.
# 0
./edbg -t samd51 -F r0,95:64
# 0xffffffff