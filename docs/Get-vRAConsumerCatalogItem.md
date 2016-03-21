# Get-vRAConsumerCatalogItem

## SYNOPSIS
    
Get a consumer catalog item that the user is allowed to review.

## SYNTAX


## DESCRIPTION

Consumer REST API for Catalog Items. This API does not take entitlements into account but only global user permissions.
However, if a request is submitted for a catalogitem without the appropriate entitlement it will be rejected.

## PARAMETERS


### Id

The id of the catalog item
* Required: true
* Position: named
* Default value: 
* Accept pipeline input: false

### Name

The name of the catalog item
* Required: true
* Position: named
* Default value: 
* Accept pipeline input: false

### Limit

The number of entries returned per page from the API. This has a default value of 100.
* Required: false
* Position: named
* Default value: 100
* Accept pipeline input: false

## INPUTS

System.String

## OUTPUTS

System.Management.Automation.PSObject

## EXAMPLES
```
-------------------------- EXAMPLE 1 --------------------------

C:\PS>Get-vRAConsumerCatalogItem







-------------------------- EXAMPLE 2 --------------------------

C:\PS>Get-vRAConsumerCatalogItem -Limit 9999







-------------------------- EXAMPLE 3 --------------------------

C:\PS>Get-vRAConsumerCatalogItem -Id dab4e578-57c5-4a30-b3b7-2a5cefa52e9e







-------------------------- EXAMPLE 4 --------------------------

C:\PS>Get-vRAConsumerCatalogItem -Name Centos_Template
```
