# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "/home/abdosalah/Abdos/Embedded_AVR/Lab3/lab1-1/out/lab1-1/default.eep"
  "/home/abdosalah/Abdos/Embedded_AVR/Lab3/lab1-1/out/lab1-1/default.hex"
  "/home/abdosalah/Abdos/Embedded_AVR/Lab3/lab1-1/out/lab1-1/default.lss"
  "/home/abdosalah/Abdos/Embedded_AVR/Lab3/lab1-1/out/lab1-1/default.srec"
  "/home/abdosalah/Abdos/Embedded_AVR/Lab3/lab1-1/out/lab1-1/default.usersignatures"
  )
endif()
