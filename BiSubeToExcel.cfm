<cfsetting enablecfoutputonly="Yes">
<cfquery name="queryData" datasource="WorkcubeDB">
SELECT * from BiSube
</cfquery>
<cfcontent type="application/msexcel">
<cfheader name="Content-Disposition" value="filename=BiSube.xls">

<cfoutput>
    <table border="2">
            <tr> 
                <td> ID </td>
                <td> SUBE </td>
            </tr>
                <cfloop query="queryData">
            <tr>
                <td>#sube_id#</td>
                <td>#sube#</td>
            </tr>
                </cfloop>
    </table>
</cfoutput>
<script type="text/javascript">
    document.location.href = "index.cfm";
</script>