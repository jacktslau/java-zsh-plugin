function java_versions {
	reply=($(ls /Library/Java/JavaVirtualMachines | sed -E 's/jdk([0-9._]+)\.jdk/\1/'))
}

function remove_from_path {
	export PATH=$(echo $PATH | sed -E -e "s;:$1;;" -e "s;$1:?;;")
}

function jdk {
  if [ $# -ne 0 ]; then
  	local rprompt=${RPROMPT/<java:$JAVA_VERSION>/}

    if [ -n "${JAVA_HOME+x}" ]; then
      remove_from_path $JAVA_HOME
    fi

  	export JAVA_VERSION=$1
  	export JAVA_HOME=`/usr/libexec/java_home -v $1`
    export PATH=$JAVA_HOME/bin:$PATH

  	export RPROMPT="<java:$JAVA_VERSION>$rprompt"

    echo "Java Environment Updated.\nJAVA_HOME: $JAVA_HOME"
    echo `jv`
  else
    echo "JAVA_HOME: $JAVA_HOME"
    echo `jv`
  fi
}

alias jv="java -version"

compctl -K java_versions jdk

jdk 1.8
