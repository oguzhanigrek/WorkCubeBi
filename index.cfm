
<cfobject name="databaseListModel" type="component" component="cfc/index">
<cfset databaseList = databaseListModel.getBiTableList()>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <title>Document</title>
</head>
<body>
  <form name="DashboardTable">
      <div class="container">
        <div class="row">
          <div class="col-sm-12">
          <table class="table" style="text-align:center;">
              <thead>
                <tr>
                  <cfoutput query="databaseList">
                      <th scope="col">#TABLE_NAME#</th>
                  </cfoutput>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td><i class="fa fa-file-excel-o" style="font-size:24px"><button class="btn btn-default" type="submit" onclick="window.open('BiFaturaToExcel.cfm');">Export EXCEL</button></i></td>
                  <td><i class="fa fa-file-excel-o" style="font-size:24px"><button class="btn btn-default" type="submit" onclick="window.open('BiKategoriToExcel.cfm');">Export EXCEL</button></i></td>
                  <td><i class="fa fa-file-excel-o" style="font-size:24px"><button class="btn btn-default" type="submit" onclick="window.open('BiMusteriToExcel.cfm');">Export EXCEL</button></i></td>
                  <td><i class="fa fa-file-excel-o" style="font-size:24px"><button class="btn btn-default" type="submit" onclick="window.open('BiSatisUzmaniToExcel.cfm');">Export EXCEL</button></i></td>
                  <td><i class="fa fa-file-excel-o" style="font-size:24px"><button class="btn btn-default" type="submit" onclick="window.open('BiSubeToExcel.cfm');">Export EXCEL</button></i></td>
                  <td><i class="fa fa-file-excel-o" style="font-size:24px"><button class="btn btn-default" type="submit" onclick="window.open('BiUrunToExcel.cfm');">Export EXCEL</button></i></td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
        
  </form>
  
</body>
</html>