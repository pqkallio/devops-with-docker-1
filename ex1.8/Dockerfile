FROM ubuntu:latest

RUN apt-get update && apt-get install -y git gnupg
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
RUN echo "deb https://download.mono-project.com/repo/ubuntu stable-bionic main" | tee /etc/apt/sources.list.d/mono-official-stable.list
RUN apt-get update && apt-get install -y mono-devel
RUN git clone https://github.com/pqkallio/MiniPLInterpreter2000.git
RUN cd MiniPLInterpreter2000 && msbuild
RUN cp MiniPLInterpreter2000/Interpreter/bin/Debug/Interpreter.exe MiniPLInterpreter2000/Interpreter/bin/Debug/Compiler.dll .
RUN mkdir minipl_scripts
CMD while true; do echo "Give the name of the script: "; read filename; mono Interpreter.exe minipl_scripts/$filename; done;
