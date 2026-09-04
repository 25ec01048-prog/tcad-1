# project name
name MOSFET
# execution graph
job 1   -post { extract_vars "$nodedir" n1_dvs.out 1 }  -o n1_dvs "sde -e -l n1_dvs.cmd"
check mosfet_1_dvs.cmd 1788176915
check mosfet_1_dvs.bnd 1787565771
check id_vds_des.cmd 1788178988
check sdevice.par 1787567664
check idvg_des.cmd 1788494427
check equillibrium_des.cmd 1787567439
check global_tooldb 1697803711
check gtree.dat 1788494439
# included files
