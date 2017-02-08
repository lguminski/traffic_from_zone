FROM devth/alpine-bench
COPY script.sh /go
RUN chmod +x /go/script.sh
ENTRYPOINT ["/go/script.sh"]
