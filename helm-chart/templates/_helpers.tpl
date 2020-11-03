{{/*
Selector labels
*/}}
{{- define "common.labels" }}
helm/name: {{ .Chart.Name }}
helm/instance: {{ .Release.Name }}
{{- end }}
