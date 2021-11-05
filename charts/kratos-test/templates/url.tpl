{{ define "kratosDsnTpl" }}
postgres://kratos:{{ .pass | b64dec }}@kratos-db:5432/kratos?sslmode=disable&max_conns=20&max_idle_conns=4
{{ end }}
