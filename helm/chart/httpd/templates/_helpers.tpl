{{/*
Expand the name of the chart.
*/}}
{{- define "httpd.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "httpd.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}
{{/*
Common labels
*/}}
{{- define "httpd.labels" -}}
helm.sh/chart: {{ include "httpd.chart" . }}
{{ include "httpd.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "httpd.selectorLabels" -}}
app.kubernetes.io/name: {{ include "httpd.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
