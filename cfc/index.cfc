<component>
    <cffunction name = "getBiTableList" access = "public" >
        <cfquery name = "databaseList" datasource = "workcubedb">
            SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES where TABLE_NAME LIKE 'Bi%'
        </cfquery>
        <cfreturn databaseList>
    </cffunction>   
</component