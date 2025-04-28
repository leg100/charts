lint:
	ls ./charts/ | xargs -I{} helm lint ./charts/{}
.PHONY: lint

render:
	ls ./charts/ | xargs -I{} helm template ./charts/{}
.PHONY: render

package:
	ls ./charts/ | xargs -I{} helm package ./charts/{}
.PHONY: package

push:
	ls ./*.tgz | xargs -I{} helm push {} oci://ghcr.io/automatize/charts
.PHONY: push
