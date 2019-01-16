<cfsetting enablecfoutputonly="Yes">
<cfquery name="queryData" datasource="WorkcubeDB">
SELECT * from BiSatisUzmani
</cfquery>
<cfcontent type="application/msexcel">
<cfheader name="Content-Disposition" value="filename=BiSatisUzmani.xls">

<cfoutput>
    <table border="2">
            <tr> 
                <td> ID </td>
                <td> SATISUZMANI </td>
                <td> SUBE </td>
            </tr>
                <cfloop query="queryData">
            <tr>
                <td>#satisuzmani_id#</td>
                <td>#satisuzmani#</td>
                <td>#sube_id#</td>
            </tr>
                </cfloop>
    </table>
</cfoutput>
<script type="text/javascript">
    document.location.href = "index.cfm";
</script>