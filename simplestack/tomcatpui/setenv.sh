
CATALINA_OPTS=$CATALINA_OPTS" -server"
CATALINA_OPTS=$CATALINA_OPTS" -Xms128m -Xmx256m"
CATALINA_OPTS=$CATALINA_OPTS" -XX:NewRatio=8 -XX:SurvivorRatio=8"
#CATALINA_OPTS=$CATALINA_OPTS" -XX:MaxPermSize=256M -XX:PermSize=128M"

CATALINA_OPTS=$CATALINA_OPTS" -XX:+UseConcMarkSweepGC -XX:+UseParNewGC -XX:+CMSParallelRemarkEnabled"
CATALINA_OPTS=$CATALINA_OPTS" -XX:+ScavengeBeforeFullGC -XX:+CMSScavengeBeforeRemark"
CATALINA_OPTS=$CATALINA_OPTS" -XX:+ExplicitGCInvokesConcurrent"
CATALINA_OPTS=$CATALINA_OPTS" -XX:+CMSClassUnloadingEnabled"
CATALINA_OPTS=$CATALINA_OPTS" -XX:+UseCMSInitiatingOccupancyOnly"
CATALINA_OPTS=$CATALINA_OPTS" -XX:CMSInitiatingOccupancyFraction=80"

CATALINA_OPTS=$CATALINA_OPTS" -Djava.net.preferIPv4Stack=true"
CATALINA_OPTS=$CATALINA_OPTS" -Dsun.net.inetaddr.ttl=60"

CATALINA_OPTS=$CATALINA_OPTS" -Djava.rmi.server.hostname=127.0.0.1" # External ADMIN IP IN PREFERENCE !
CATALINA_OPTS=$CATALINA_OPTS" -Dcom.sun.management.jmxremote"
CATALINA_OPTS=$CATALINA_OPTS" -Dcom.sun.management.jmxremote.port=4501"
CATALINA_OPTS=$CATALINA_OPTS" -Dcom.sun.management.jmxremote.ssl=false"
CATALINA_OPTS=$CATALINA_OPTS" -Dcom.sun.management.jmxremote.authenticate=false"

CATALINA_OPTS=$CATALINA_OPTS" -verbose:gc"
CATALINA_OPTS=$CATALINA_OPTS" -XX:+PrintGCDetails"
CATALINA_OPTS=$CATALINA_OPTS" -XX:+PrintGCDateStamps"
CATALINA_OPTS=$CATALINA_OPTS" -Xloggc:$CATALINA_BASE/logs/GC_`date '+%y%m%d_%H%M%S'`.log"

CATALINA_OPTS=$CATALINA_OPTS" -XX:+HeapDumpOnOutOfMemoryError"
CATALINA_OPTS=$CATALINA_OPTS" -XX:HeapDumpPath=$CATALINA_BASE/logs"
