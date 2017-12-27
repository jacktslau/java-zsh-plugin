Java zsh Plugin
----
This plugin adds some java configuration features

# Install
* Download the script or clone this repository in [oh-my-zsh](http://github.com/robbyrussell/oh-my-zsh) plugins directory:

        cd ~/.oh-my-zsh/custom/plugins
        git clone git://github.com/jtaisa/java-zsh-plugin.git java

* Activate the plugin in `~/.zshrc`:

        plugins=( [plugins...] java [plugins...])

* Source `~/.zshrc` to take changes into account:

        source ~/.zshrc

# Commands
| command | description |
| --- | --- |
| jdk | get current Java version |
| jdk [version] | sets Java version to JAVA_HOME and PATH |
