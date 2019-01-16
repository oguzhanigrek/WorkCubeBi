<cfsetting enablecfoutputonly="Yes">
<cfquery name="queryData" datasource="WorkcubeDB">
SELECT * from BiMusteri
</cfquery>
<cfcontent type="application/msexcel">
<cfheader name="Content-Disposition" value="filename=BiMusteriData.xls">

<cfoutput>
    <table border="2">
        <tr> 
                <td>ID</td>
                <td>MUSTERI</td>
                <td>TARIH</td> 
                <td>Urun</td>
        </tr>
                <cfloop query="queryData">
        <tr>
                <td>#musteri_id#</td>
                <td>#musteri_adi#</td>
                <td>#tarih#</td> 
                <td>#urun_id#</td> 
        </tr>
                </cfloop>
    </table>
</cfoutput>
<script type="text/javascript">
    document.location.href = "index.cfm";
</script>