#Create Persistent Volume Claim using retain storage class
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: azure-file-managed-disk-claim
  namespace: default
spec:
  accessModes:
  - ReadWriteMany
  storageClassName: managed-file-premium-retain
  resources:
    requests:
      storage: 100Gi
