FROM alpine

LABEL "com.github.actions.name"="Convert Markdown to HTML"
LABEL "com.github.actions.description"="Simple Python script to convert"
LABEL "com.github.actions.icon"="download-cloud"
LABEL "com.github.actions.color"="gray-dark"

LABEL "repository"="https://github.com/mlunax/actions-md-html"
LABEL "homepage"="https://github.com/mlunax/actions-md-html"
LABEL "maintainer"="mlunax <lunax@mlunax.com>"

RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python
RUN python3 -m ensurepip
RUN pip3 install --no-cache --upgrade pip setuptools
RUN pip3 install markdown


ADD *.sh /
ADD *.py /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["--help"]
