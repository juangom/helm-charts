#!/bin/bash
# https://helm.sh/docs/topics/chart_repository/
helm repo index ../releases
gsutil rsync -r ../releases/ gs://hobops-helm-charts/