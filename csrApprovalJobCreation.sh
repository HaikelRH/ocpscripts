oc adm new-project openshift-cron-jobs
$ oc project openshift-cron-jobs

#3. Provide the default service account of openshift-cron-jobs the role of cluster-admin

oc adm policy add-cluster-role-to-user cluster-admin -z default -n openshift-cron-jobs

#4. Review the ocp4-auto-approve-csr.yml file, customize it the way you want and deploy it.

$ oc create -f csrjob.yaml
