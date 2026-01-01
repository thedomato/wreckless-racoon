
targetScope = 'subscription'

@description('The environment for the deployment')
param environment string

@description('The location for the deployment')
param location string = deployment().location

@description('Tags for the resources')
param tags object = {}

resource resourceGroup 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: 'rg-${environment}'
  location: location
  tags: tags
}
