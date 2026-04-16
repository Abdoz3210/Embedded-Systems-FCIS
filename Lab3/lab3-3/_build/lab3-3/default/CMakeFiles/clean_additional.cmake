# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "/home/abdosalah/Abdos/Embedded_AVR/Lab3/lab3-3/out/lab3-3/default.eep"
  "/home/abdosalah/Abdos/Embedded_AVR/Lab3/lab3-3/out/lab3-3/default.hex"
  "/home/abdosalah/Abdos/Embedded_AVR/Lab3/lab3-3/out/lab3-3/default.lss"
  "/home/abdosalah/Abdos/Embedded_AVR/Lab3/lab3-3/out/lab3-3/default.srec"
  "/home/abdosalah/Abdos/Embedded_AVR/Lab3/lab3-3/out/lab3-3/default.usersignatures"
  )
endif()
