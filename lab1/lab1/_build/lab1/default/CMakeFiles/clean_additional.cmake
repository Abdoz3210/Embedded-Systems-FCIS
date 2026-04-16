# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "/home/abdosalah/Abdos/Embedded_AVR/lab1/lab1/out/lab1/default.eep"
  "/home/abdosalah/Abdos/Embedded_AVR/lab1/lab1/out/lab1/default.hex"
  "/home/abdosalah/Abdos/Embedded_AVR/lab1/lab1/out/lab1/default.lss"
  "/home/abdosalah/Abdos/Embedded_AVR/lab1/lab1/out/lab1/default.srec"
  "/home/abdosalah/Abdos/Embedded_AVR/lab1/lab1/out/lab1/default.usersignatures"
  )
endif()
