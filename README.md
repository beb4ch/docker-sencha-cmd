# What is Sencha Cmd?
Sencha Cmd is the cornerstone for building your Sencha Ext JS and Sencha Touch applications. Sencha Cmd provides a full set of lifecycle management features such as scaffolding, code minification, production build generation, and more, to complement your Sencha projects.
![](https://www.sencha.com/wp-content/uploads/2015/03/sencha-cmd-hero.png)

# How to use this image?

## Standalone applications

Standalone applications are those where workspace.json is at the root of the app (a single-application workspace).
To run any command over your codebase, just mount it over at `/code`:

    docker run -it -v /some/local/dir:/code sencha/cmd app build

## Multi-application workspace

Besides mounting your workspace at `/code` you'll need to specify the application directory to work on. This is done using the `--workdir` parameter. For example, to build an application located in the `myapp` directory inside the mounted workspace, you'd need to run this command:

    docker run -it -v /some/local/workspace:/code --workdir=/code/myapp sencha/cmd app build

# What's included?

This image is based on [OpenJDK's image](https://hub.docker.com/_/openjdk/) ([`openjdk:8-jre-alpine`](https://github.com/docker-library/openjdk/blob/54c64cf47d2b705418feb68b811419a223c5a040/8-jdk/alpine/Dockerfile)), so it is based on an Alpine Linux distribution.
 
- OpenJDK 8 JRE
- Sencha Cmd 6.5.3

# License

Sencha Cmd is licensed commercially for free.<br>See [http://www.sencha.com/legal/sencha-tools-software-license-agreement](http://www.sencha.com/legal/sencha-tools-software-license-agreement) for license terms.

# Credits

This image is based on the work of:

* [israelroldan/docker-sencha-cmd](https://github.com/israelroldan/docker-sencha-cmd)
* [kot-lex/teamcity-agent-sencha](https://github.com/kot-lex/teamcity-agent-sencha)
