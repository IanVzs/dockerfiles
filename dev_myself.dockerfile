FROM debian:latest

RUN apt-get update && apt-get install -y locales git vim python3 golang gcc g++ clang gdb\
	&& rm -rf /var/lib/apt/lists/* \
	&& localedef -i zh_CN -c -f UTF-8 -A /usr/share/locale/locale.alias zh_CN.UTF-8 \
	&& echo "set encoding=utf-8" >> /etc/vim/vimrc

CMD ["bash"]
