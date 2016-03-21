# Get-vRAContentPackage

## SYNOPSIS
    
Retrieve vRA Content Packages

## SYNTAX


## DESCRIPTION

Retrieve vRA Content Packages

## PARAMETERS


### Id

Specify the ID of a Content Package
* Required: true
* Position: named
* Default value: 
* Accept pipeline input: false

### Name

Specify the Name of a Content Package
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

System.Management.Automation.PSObject.

## EXAMPLES
```
-------------------------- EXAMPLE 1 --------------------------

C:\PS>Get-vRAContentPackage







-------------------------- EXAMPLE 2 --------------------------

C:\PS>Get-vRAContentPackage -Id "b2d72c5d-775b-400c-8d79-b2483e321bae"







-------------------------- EXAMPLE 3 --------------------------

C:\PS>Get-vRAContentPackage -Name "ContentPackage01","ContentPackage02"
```
