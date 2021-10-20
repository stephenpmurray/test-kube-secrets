apiVersion: v1
kind: Secret
metadata:
  name: example-secret
type: Opaque # other types of secret are available: https://kubernetes.io/docs/concepts/configuration/secret/
data:
  {{- $fetched := (lookup "v1" "Secret" "default" "example-secret") | default dict }}
  {{- $secret := (index $fetched.data "password") | default (randAlphaNum 32 | b64enc) }}
  password: {{ $secret | quote }}
