# project name
name MOSFET
# execution graph
job 18 -d "1"  -post { extract_vars "$nodedir" n18_des.out 18 }  -o n18_des "sdevice pp18_des.cmd"
job 44 -d "1"  -post { extract_vars "$nodedir" n44_des.out 44 }  -o n44_des "sdevice pp44_des.cmd"
job 31 -d "1"  -post { extract_vars "$nodedir" n31_des.out 31 }  -o n31_des "sdevice pp31_des.cmd"
job 21 -d "1"  -post { extract_vars "$nodedir" n21_des.out 21 }  -o n21_des "sdevice pp21_des.cmd"
job 20 -d "1"  -post { extract_vars "$nodedir" n20_des.out 20 }  -o n20_des "sdevice pp20_des.cmd"
job 30 -d "1"  -post { extract_vars "$nodedir" n30_des.out 30 }  -o n30_des "sdevice pp30_des.cmd"
job 40 -d "1"  -post { extract_vars "$nodedir" n40_des.out 40 }  -o n40_des "sdevice pp40_des.cmd"
job 6 -d "1"  -post { extract_vars "$nodedir" n6_des.out 6 }  -o n6_des "sdevice pp6_des.cmd"
job 8 -d "1"  -post { extract_vars "$nodedir" n8_des.out 8 }  -o n8_des "sdevice pp8_des.cmd"
job 10 -d "1"  -post { extract_vars "$nodedir" n10_des.out 10 }  -o n10_des "sdevice pp10_des.cmd"
job 12 -d "1"  -post { extract_vars "$nodedir" n12_des.out 12 }  -o n12_des "sdevice pp12_des.cmd"
job 1   -post { extract_vars "$nodedir" n1_dvs.out 1 }  -o n1_dvs "sde -e -l n1_dvs.cmd"
job 9 -d "1"  -post { extract_vars "$nodedir" n9_des.out 9 }  -o n9_des "sdevice pp9_des.cmd"
job 7 -d "1"  -post { extract_vars "$nodedir" n7_des.out 7 }  -o n7_des "sdevice pp7_des.cmd"
job 5 -d "1"  -post { extract_vars "$nodedir" n5_des.out 5 }  -o n5_des "sdevice pp5_des.cmd"
job 4 -d "1"  -post { extract_vars "$nodedir" n4_des.out 4 }  -o n4_des "sdevice pp4_des.cmd"
job 14 -d "1"  -post { extract_vars "$nodedir" n14_des.out 14 }  -o n14_des "sdevice pp14_des.cmd"
job 3 -d "1"  -post { extract_vars "$nodedir" n3_des.out 3 }  -o n3_des "sdevice pp3_des.cmd"
check mosfet_1_dvs.cmd 1788498421
check mosfet_1_dvs.bnd 1787565771
check Breakdown_des.cmd 1788500992
check sdevice.par 1787567664
check id_vds_des.cmd 1788496438
check idvg_des.cmd 1788494886
check equillibrium_des.cmd 1787567439
check global_tooldb 1697803711
check gtree.dat 1788500999
check ./Nitride.par 1698676163
check ./PolySilicon.par 1697803594
check ./SiO2.par 1697803594
check ./Silicide.par 1698676163
check ./Silicon.par 1697803594
# included files
file sdevice.par included ./Nitride.par
file sdevice.par included ./PolySilicon.par
file sdevice.par included ./SiO2.par
file sdevice.par included ./Silicide.par
file sdevice.par included ./Silicon.par
