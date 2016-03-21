# Get-vRAAuthorizationRole

## SYNOPSIS
    
Retrieve vRA Authorization Role

## SYNTAX


## DESCRIPTION

Retrieve vRA Authorization Role

## PARAMETERS


### Id

Specify the Id of a Role
* Required: false
* Position: 1
* Default value: 
* Accept pipeline input: false

### Limit

The number of entries returned per page from the API. This has a default value of 100.
* Required: false
* Position: 2
* Default value: 100
* Accept pipeline input: false

## INPUTS

System.String

## OUTPUTS

System.Management.Automation.PSObject.

## EXAMPLES
```
-------------------------- EXAMPLE 1 --------------------------

C:\PS>Get-vRAAuthorizationRole







-------------------------- EXAMPLE 2 --------------------------

C:\PS>Get-vRAAuthorizationRole -Id CSP_TENANT_ADMIN
```
