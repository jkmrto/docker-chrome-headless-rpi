FROM arm32v7/ubuntu:18.04

RUN apt-get update
RUN apt-get -y install chromium-browser

EXPORT 9222

ENTRYPOINT [ "chromium-browser" ]
CMD [ "--headless", "--disable-gpu", "--no-sandbox", "--remote-debugging-port=9222", "--remote-debugging-address=0.0.0.0"]
