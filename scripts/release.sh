#!/bin/bash
# https://helm.sh/docs/topics/chart_repository/
helm repo index ../releases
gsutil cp "../releases/*.tgz" gs://hobops-helm-charts/
gsutil -h "Content-Type:text/html" -h "Cache-Control:public, max-age=0" cp ../releases/index.yaml gs://hobops-helm-charts/index.yaml