FROM golang AS build

MAINTAINER Neszt Tibor <tibor@neszt.hu>

RUN \
	go get -d github.com/go-graphite/go-carbon && \
	cd /go/src/github.com/go-graphite/go-carbon && \
	CGO_ENABLED=0 go get github.com/go-graphite/go-carbon && \
	strip /go/bin/go-carbon

FROM scratch

COPY --from=build /go/bin/go-carbon /

WORKDIR /data

CMD ["/go-carbon", "-config", "/data/carbon.conf"]
