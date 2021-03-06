#########################################
# Tradeshift:
#########################################

# TS home folder
export TS_HOME=~/ts-code/

# tell Maven where Java7 is
export JAVA_HOME=`/usr/libexec/java_home -v 1.7`

# Riak needs at least a ulimit of 4096
ulimit -n 10240

# Increase allowed memory consumption for Maven
export MAVEN_OPTS="-Xmx2048m -XX:MaxPermSize=1024m"
export GRAILS_OPTS="-server -Xmx1024M -XX:MaxPermSize=512m"
export SBT_OPTS="-Xmx1024m -XX:MaxPermSize=256m"

# Apptoolw alias
alias apptoolw='~/ts-code/Apps/scripts/apptoolw'

function app-activate {
  APP=$1
  ~/ts-code/Apps/scripts/apptoolw activate ts-code/Apps/src/main/apps/$APP
}