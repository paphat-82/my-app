{{- define "my-react-app-chart.fullname" -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "my-react-app-chart.labels" -}}
app.kubernetes.io/name: {{ include "my-react-app-chart.fullname" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
