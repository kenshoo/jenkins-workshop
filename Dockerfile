FROM scratch
# NEW_PR
EXPOSE 80

COPY http-server /

CMD ["/http-server"]
