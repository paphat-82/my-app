{{/*
Return the name of the app
*/}}
{{- define "app.fullname" -}}
{{- printf "%s-%s" .Release.Name "app" | trunc 63 | trimSuffix "-" -}}
{{- end -}}