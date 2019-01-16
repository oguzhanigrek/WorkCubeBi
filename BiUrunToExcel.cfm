<cfsetting enablecfoutputonly="Yes">
<cfquery name="queryData" datasource="WorkcubeDB">
SELECT * from BiUrun
</cfquery>
<cfcontent type="application/msexcel">
<cfheader name="Content-Disposition" value="filename=BiUrun.xls">

<cfoutput>
    <table border="2">
            <tr> 
                <td> ID </td>
                <td> URUN </td>
                <td> KATEGORI</td>
            </tr>
                <cfloop query="queryData">
            <tr>
                <td>#urun_id#</td>
                <td>#urun#</td>
                <td>#kategori_id#</td>
            </tr>
                </cfloop>
    </table>
</cfoutput>
<script type="text/javascript">
    document.location.href = "index.cfm";
</script>