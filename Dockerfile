FROM python:3

COPY . ./
RUN python3 setup.py sdist
RUN pip3 install --user --upgrade dist/localstripe-*.tar.gz
RUN export PATH=$PATH:/root/.local/bin
CMD ["/root/.local/bin/localstripe"]
