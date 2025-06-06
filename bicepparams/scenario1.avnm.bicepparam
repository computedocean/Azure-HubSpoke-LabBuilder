using '../main.bicep'
param adminUsername = ''
param adminPassword = ''
param deployVnetPeeringMesh = false
param deployVnetPeeringAVNM = true
param AddressSpace = '172.16.0.0/16'
param tagsByResource = {
  'Microsoft.Resources/subscriptions/resourceGroups': {
    LabBuilder: 'validation'
    LabBuilderType: 'avnm'
  }
}
param deploySpokes = true
param spokeRgNamePrefix = 'LabBuilderValidation-spoke'
param amountOfSpokes = 2
param deployVMsInSpokes = true
param deployHUB = true
param hubType = 'VNET'
param hubRgName = 'LabBuilderValidation-hub'
param deployBastionInHub = false
param deployGatewayInHub = false
param deployFirewallInHub = false
param AzureFirewallTier = 'Standard'
param deployFirewallrules = false
param hubBgp = false
param hubBgpAsn = 65010
param deployOnPrem = true
param onpremRgName = 'LabBuilderValidation-onprem'
param deployBastionInOnPrem = false
param deployVMinOnPrem = true
param deployGatewayinOnPrem = false
param deploySiteToSite = false
param sharedKey = ''
param onpremBgp = false
param onpremBgpAsn = 65020
