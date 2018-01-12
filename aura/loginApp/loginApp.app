<aura:application extends="force:slds" >
    <!--c:Config_createNewAlert /-->
    <!--c:Config_CustomAlerts /-->
    <!--c:RollbackComp /-->
    <div aura:id="orgslist"  class="slds-hide">
        <c:orgsList />
    </div>	
    <div aura:id="orgBackup">
        <c:orgBackup />
    </div>	
    <!--c:ScheduleBackup_monthly /-->
    <!--c:Backup_OrgSetUp />
    <c:Backup_SelectObjFields />
    <c:Backup_ScheduleBackup /-->
    <!--c:Dashboard_LatestBackup /-->
    <!--c:OrgSetup_filledTile /-->
    <!--c:Restore_summaryOptions /-->
    <!--c:ActivityHistoryComp />
    <c:Backup_OnDemand /-->
    <!--c:Backup_ScheduledBackup /-->
    <!--c:Backup_RPO />
    <c:prevBackup /-->
    <!--c:OrgBackupVerticleMenu /-->
    <!--c:JobsStatus /-->
    
</aura:application>