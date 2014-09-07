function jvm
    echo eval /usr/libexec/java_home -v $argv
    /usr/libexec/java_home -v $argv | $jv
    set -x JAVA_HOME $jv
    java -version
end
