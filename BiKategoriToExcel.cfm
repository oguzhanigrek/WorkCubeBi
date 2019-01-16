<cfsetting enablecfoutputonly="Yes">
<cfquery name="queryData" datasource="WorkcubeDB">
SELECT * from BiKategori
</cfquery>
<cfcontent type="application/msexcel">
<cfheader name="Content-Disposition" value="filename=BiKategori.xls">

<cfoutput>
    <table border="2">
        <tr> 
                <td>ID</td>
                <td>KATEGORI</td> 
        </tr>
                <cfloop query="queryData">
        <tr>
                <td>#kategori_id#</td>
                <td>#kategori#</td>
        </tr>
                </cfloop>
    </table>
</cfoutput>
<script type="text/javascript">
    document.location.href = "index.cfm";
</script>