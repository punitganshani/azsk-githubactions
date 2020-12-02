Install-Module AzSK -AllowClobber -Force -SkipPublisherCheck

Set-AzSKPolicySettings -AutoUpdate On

Invoke-WebRequest -Uri https://raw.githubusercontent.com/punitganshani/azsk-poc/main/azuredeploy.json?token=AAH4C2LYPSV4QMFVMDR7YT27Y4XUE -OutFile azuredeploy.json

Get-AzSKARMTemplateSecurityStatus -ARMTemplatePath .\azuredeploy.json