function Get-vRAEvent {
<#
    .SYNOPSIS
    Retrieve a vRA Event from the vRA Event Broker Service
    
    .DESCRIPTION
    Uses 
    
    .PARAMETER Id
    Specify the ID of the Event.

    .PARAMETER Limit
    The number of entries returned per page from the API. This has a default value of 100.

    .INPUTS
    System.String

    .OUTPUTS
    System.Management.Automation.PSObject.
    
    .EXAMPLE
    Get-vRAEvent

    .EXAMPLE
    Get-vRAEvent -Id 9c2bed00-2b72-11e7-5627-4dce20d97a83
#>
[CmdletBinding()][OutputType('System.Management.Automation.PSObject')]

    Param (

    [parameter(Mandatory=$false)]
    [ValidateNotNullOrEmpty()]
    [String]$TenantId = $Global:vRAConnection.Tenant,
    
    [parameter(Mandatory=$false)]
    [ValidateNotNullOrEmpty()]
    [String[]]$Id,     
    
    [parameter(Mandatory=$false)]
    [ValidateNotNullOrEmpty()]
    [String]$Limit = "100"
    )

try {
    if($PSBoundParameters.ContainsKey("Id")) {
        foreach($EventId in $Id) {
            $URI = "/event-broker-service/api/events/$($EventId)"

            $Response = Invoke-vRARestMethod -Method GET -URI $URI

            $BrokerEvent = $Response.content

            if(-not $BrokerEvent) {
                Write-Warning "Did not find Event $EventId"
                break
            }
        }
        
        [pscustomobject]@{
            EventTopicId = $BrokerEvent.eventTopicId
            CorrelationId = $BrokerEvent.correlationId
            SourceType = $BrokerEvent.sourceType
            Id = $BrokerEvent.id
            SourceIdentity = $BrokerEvent.sourceIdentity
            TimeStamp = $BrokerEvent.timeStamp
            LiteralMap = $BrokerEvent.data
            EventType = $BrokerEvent.eventType
            EventTypeName = $BrokerEvent.eventTypeName
            Description = $BrokerEvent.description
            TargetType = $BrokerEvent.targetType
            TargetId = $BrokerEvent.targetId
            Username = $BrokerEvent.userName
            TenantId = $BrokerEvent.tenantId
        }
    }
    else {
        $URI = "/event-broker-service/api/events?limit=$($Limit)"

        $Response = Invoke-vRARestMethod -Method GET -URI $URI

        foreach($BrokerEvent in $Response.content) {
            
            [pscustomobject]@{
                EventTopicId = $BrokerEvent.eventTopicId
                CorrelationId = $BrokerEvent.correlationId
                SourceType = $BrokerEvent.sourceType
                Id = $BrokerEvent.id
                SourceIdentity = $BrokerEvent.sourceIdentity
                TimeStamp = $BrokerEvent.timeStamp
                LiteralMap = $BrokerEvent.data
                EventType = $BrokerEvent.eventType
                EventTypeName = $BrokerEvent.eventTypeName
                Description = $BrokerEvent.description
                TargetType = $BrokerEvent.targetType
                TargetId = $BrokerEvent.targetId
                Username = $BrokerEvent.userName
                TenantId = $BrokerEvent.tenantId
            }
        }
    }
}
catch [Exception] {
    throw
}
}
