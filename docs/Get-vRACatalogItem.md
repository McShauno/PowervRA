# Get-vRACatalogItem

## SYNOPSIS
    
Get a catalog item that the user is allowed to review.

## SYNTAX


## DESCRIPTION

API for catalog items that a system administrator can interact with. It allows the user to interact 
with catalog items that the user is permitted to review, even if they were not published or entitled to them.

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

C:\PS>Get-vRACatalogItem







-------------------------- EXAMPLE 2 --------------------------

C:\PS>Get-vRACatalogItem -Limit 9999







-------------------------- EXAMPLE 3 --------------------------

C:\PS>Get-vRACatalogItem -Id dab4e578-57c5-4a30-b3b7-2a5cefa52e9e







-------------------------- EXAMPLE 4 --------------------------

C:\PS>Get-vRACatalogItem -Name Centos_Template
```
