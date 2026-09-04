# project name
name q9
# execution graph
job 2 -d "1"  -post { extract_vars "$nodedir" n2_des.out 2 }  -o n2_des "sdevice pp2_des.cmd"
job 1   -post { extract_vars "$nodedir" n1_dvs.out 1 }  -o n1_dvs "sde -e -l n1_dvs.cmd"
check mosfet_1_dvs.cmd 1788502985
check mosfet_1_dvs.bnd 1787565771
check Breakdown_des.cmd 1788502338
check sdevice.par 1787567664
check global_tooldb 1697803711
check gtree.dat 1788503034
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
