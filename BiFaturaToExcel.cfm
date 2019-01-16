<cfsetting enablecfoutputonly="Yes">
<cfquery name="queryData" datasource="WorkcubeDB">
SELECT * from BiFatura
</cfquery>
<cfcontent type="application/msexcel">
<cfheader name="Content-Disposition" value="filename=BiFatura.xls">

<cfoutput>
    <table border="2">
            <tr> 
                <td> ID </td>
                <td> Fatura No </td>
                <td> Musteri</td>
                <td> Satis Uzmani</td>
                <td> Tarih</td>
                <td> Urun</td>
                <td> Sube</td>
            </tr>
                <cfloop query="queryData">
            <tr>
                <td>#fatura_id#</td>
                <td>#faturaNo#</td>
                <td>#musteri_id#</td>
                <td>#satis_id#</td>
                <td>#tarih#</td>
                <td>#urun_id#</td>
                <td>#sube_id#</td>
            </tr>
                </cfloop>
    </table>
</cfoutput>
<script type="text/javascript">
    document.location.href = "index.cfm";
</script>