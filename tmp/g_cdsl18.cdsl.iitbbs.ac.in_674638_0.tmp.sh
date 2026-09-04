#!/bin/sh


shopt -s extglob
shopt -s dotglob
if mkdir "/home/cdsllab/25ec01021/MOSFET_Copy.~copy~";
then
     exec 3<>/dev/tcp/localhost/39429
     echo -e "1|/home/cdsllab/25ec01021/MOSFET_Copy.~copy~|localhost|--|1|REFRESH_EXPLORER|" >&3 
     rsync -lrv --exclude={'.nfs*','core core.*','.project','mongo*.conf','mongo*.lock','mongo*.pid','mongod.log','WiredTigerLog*','WiredTigerPreplog.*','WiredTiger.lock'} "/home/cdsllab/25ec01021/MOSFET/"  "/home/cdsllab/25ec01021/MOSFET_Copy.~copy~" 
    if [ -f /home/cdsllab/25ec01021/MOSFET/.project ]; then
      cp "/home/cdsllab/25ec01021/MOSFET/.project" "/home/cdsllab/25ec01021/MOSFET_Copy.~copy~"
    fi
    rm -rf "/home/cdsllab/25ec01021/MOSFET_Copy.~copy~/gsteps.dat"
    rm -rf "/home/cdsllab/25ec01021/MOSFET_Copy.~copy~/gparams.dat"
    rm -rf "/home/cdsllab/25ec01021/MOSFET_Copy.~copy~/.lock"
    rm -rf "/home/cdsllab/25ec01021/MOSFET_Copy.~copy~/gcmds.dat"
    rm -rf "/home/cdsllab/25ec01021/MOSFET_Copy.~copy~/gpp.log"
    rm -rf "/home/cdsllab/25ec01021/MOSFET_Copy.~copy~/gligvars.dat"
    rm -rf "/home/cdsllab/25ec01021/MOSFET_Copy.~copy~/.gview"
    rm -rf "/home/cdsllab/25ec01021/MOSFET_Copy.~copy~/.gindex"
    rm -rf "/home/cdsllab/25ec01021/MOSFET_Copy.~copy~/run_map.dat"
    rm -rf "/home/cdsllab/25ec01021/MOSFET_Copy.~copy~/.listeners"
    rm -rf "/home/cdsllab/25ec01021/MOSFET_Copy.~copy~/run_map_lock.lck"
    rm -rf "/home/cdsllab/25ec01021/MOSFET_Copy.~copy~/obsolete.dat"
    rm -rf "/home/cdsllab/25ec01021/MOSFET_Copy.~copy~/gtcl.dat"
    rm -rf "/home/cdsllab/25ec01021/MOSFET_Copy.~copy~/.nfs*"
    rm -rf "/home/cdsllab/25ec01021/MOSFET_Copy.~copy~/core"
    rm -rf "/home/cdsllab/25ec01021/MOSFET_Copy.~copy~/core.*"
    rm -rf "/home/cdsllab/25ec01021/MOSFET_Copy.~copy~/n_tclResults*"
    rm -rf "/home/cdsllab/25ec01021/MOSFET_Copy.~copy~/enigma/mongodb.conf"
    rm -rf "/home/cdsllab/25ec01021/MOSFET_Copy.~copy~/enigma/db/mongod.lock"
    rm -rf "/home/cdsllab/25ec01021/MOSFET_Copy.~copy~/enigma/db/mongod.pid"
    rm -rf "/home/cdsllab/25ec01021/MOSFET_Copy.~copy~/.projectdata/db/mongo*.conf"
    rm -rf "/home/cdsllab/25ec01021/MOSFET_Copy.~copy~/.projectdata/db/mongo*.lock"
    rm -rf "/home/cdsllab/25ec01021/MOSFET_Copy.~copy~/.projectdata/db/mongo*.pid"
    rm -rf "/home/cdsllab/25ec01021/MOSFET_Copy.~copy~/.projectdata/db/mongod.log"
    rm -rf "/home/cdsllab/25ec01021/MOSFET_Copy.~copy~/.projectdata/db/journal/WiredTigerLog*"
    rm -rf "/home/cdsllab/25ec01021/MOSFET_Copy.~copy~/.projectdata/db/journal/WiredTigerPreplog.*"
    rm -rf "/home/cdsllab/25ec01021/MOSFET_Copy.~copy~/.projectdata/db/WiredTiger.lock"
    if [ -f /home/cdsllab/25ec01021/MOSFET_Copy.~copy~/.isSWBdb ]; then
      if [ -f /home/cdsllab/25ec01021/MOSFET_Copy.~copy~/.status ]; then
        if grep "running" "/home/cdsllab/25ec01021/MOSFET_Copy.~copy~/.status"; then
          gpythonsh --vanilla -c "from swbutils.mongo.mongomon import MongoMon;MongoMon().Connect('/home/cdsllab/25ec01021/MOSFET_Copy.~copy~');MongoMon().GetSwbOperations('/home/cdsllab/25ec01021/MOSFET_Copy.~copy~').ResetNodeActiveStatuses();MongoMon().GetSwbOperations('/home/cdsllab/25ec01021/MOSFET_Copy.~copy~').DeleteData('Project')"
          rm -rf "/home/cdsllab/25ec01021/MOSFET_Copy.~copy~/.status"
        fi
      fi
      rm -rf "/home/cdsllab/25ec01021/MOSFET_Copy.~copy~/.projectdata/mongomon.conf"
    fi
directory="/home/cdsllab/25ec01021/MOSFET_Copy.~copy~"


      grep -rEils --include "*.sta" --include ".status" "pending|ready|running|queued" "$directory" | xargs rm -f
        echo -e "1|/home/cdsllab/25ec01021/MOSFET_Copy.~copy~|localhost|--|1|REFRESH_EXPLORER|" >&3 
    mv /home/cdsllab/25ec01021/MOSFET_Copy.~copy~ /home/cdsllab/25ec01021/MOSFET_Copy
    echo -e "1|/home/cdsllab/25ec01021/MOSFET_Copy|localhost|--|1|REFRESH_EXPLORER|" >&3 
fi

