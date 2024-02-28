# ocpparser

Quick and dirty solution to parse OCP logs.

Example how to run the script:
```
ocpreader.sh ~/Downloads/must-gather.local.535322390629199720/registry-redhat-io-ansible-automation-platform-24-aap-must-gather-rhel8-sha256-550dc0c74f073bcae26d762eb513126a2d83c3f803a7030844a98962c1cd8606/namespaces/aap-prod/pods/automation-controller-operator-controller-manager-7c7f9f44fkc2g/automation-controller-manager/automation-controller-manager/logs/current.log
```

Example output:
```
DONE: /Users/jskacel/Downloads/must-gather.local.535322390629199720/registry-redhat-io-ansible-automation-platform-24-aap-must-gather-rhel8-sha256-550dc0c74f073bcae26d762eb513126a2d83c3f803a7030844a98962c1cd8606/namespaces/prod-aap/pods/automation-controller-operator-controller-manager-f4b4d46drdlkt/automation-controller-manager/automation-controller-manager/logs/current.log.parsed
```

Example parsed file:
```
2024-02-28T01:22:07.198175432Z --------------------------- Ansible Task StdOut -------------------------------
2024-02-28T01:22:07.198175432Z
2024-02-28T01:22:07.198175432Z  TASK [Remove ownerReferences reference] ********************************
2024-02-28T01:22:07.198175432Z ok: [localhost] => (item=None) => {"censored": "the output has been hidden due to the fact that 'no_log: true' was specified for this result", "changed": false}
2024-02-28T01:22:07.198175432Z
2024-02-28T01:22:07.198175432Z -------------------------------------------------------------------------------
2024-02-28T01:22:07.617373356Z {"level":"info","ts":1709083327.617308,"logger":"proxy","msg":"Read object from cache","resource":{"IsResourceRequest":true,"Path":"/api/v1/namespaces/aap-prod/secrets/automationcontrollerprod-receptor-work-signing","Verb":"get","APIPrefix":"api","APIGroup":"","APIVersion":"v1","Namespace":"aap-prod","Resource":"secrets","Subresource":"","Name":"automationcontrollerprod-receptor-work-signing","Parts":["secrets","automationcontrollerprod-receptor-work-signing"]}}
2024-02-28T01:22:07.692514694Z
2024-02-28T01:22:07.692514694Z --------------------------- Ansible Task StdOut -------------------------------
2024-02-28T01:22:07.692514694Z
2024-02-28T01:22:07.692514694Z  TASK [Remove ownerReferences reference] ********************************
2024-02-28T01:22:07.692514694Z ok: [localhost] => (item=None) => {"censored": "the output has been hidden due to the fact that 'no_log: true' was specified for this result", "changed": false}
2024-02-28T01:22:07.692514694Z
2024-02-28T01:22:07.692514694Z -------------------------------------------------------------------------------
2024-02-28T01:22:07.697459373Z
2024-02-28T01:22:07.697459373Z --------------------------- Ansible Task StdOut -------------------------------
2024-02-28T01:22:07.697459373Z
2024-02-28T01:22:07.697459373Z TASK [installer : Start installation if auto_upgrade is false and deployment is missing] ***
2024-02-28T01:22:07.697459373Z task path: /opt/ansible/roles/installer/tasks/main.yml:31
2024-02-28T01:22:07.697459373Z
2024-02-28T01:22:07.697459373Z -------------------------------------------------------------------------------
2024-02-28T01:22:07.697485111Z {"level":"info","ts":1709083327.6974065,"logger":"logging_event_handler","msg":"[playbook task start]","name":"automationcontrollerprod","namespace":"aap-prod","gvk":"automationcontroller.ansible.com/v1beta1, Kind=AutomationController","event_type":"playbook_on_task_start","job":"325579523639944866","EventData.Name":"installer : Start installation if auto_upgrade is false and deployment is missing"}
2024-02-28T01:22:07.978721853Z {"level":"info","ts":1709083327.97866,"logger":"runner","msg":"Ansible-runner exited successfully","job":"325579523639944866","name":"automationcontrollerprod","namespace":"aap-prod"}
2024-02-28T01:22:07.978848384Z
2024-02-28T01:22:07.978848384Z ----- Ansible Task Status Event StdOut (automationcontroller.ansible.com/v1beta1, Kind=AutomationController, automationcontrollerprod/aap-prod) -----
2024-02-28T01:22:07.978848384Z
2024-02-28T01:22:07.978848384Z
2024-02-28T01:22:07.978848384Z PLAY RECAP *********************************************************************
2024-02-28T01:22:07.978848384Z localhost                  : ok=87   changed=0    unreachable=0    failed=0    skipped=76   rescued=0    ignored=1
2024-02-28T01:22:07.978848384Z
2024-02-28T01:22:07.978848384Z
2024-02-28T01:22:07.978848384Z ----------
2024-02-28T01:22:07.996031501Z {"level":"info","ts":1709083327.9959736,"logger":"KubeAPIWarningLogger","msg":"unknown field "status.conditions[1].ansibleResult""}
```

All kudos to @jbird++! :)
