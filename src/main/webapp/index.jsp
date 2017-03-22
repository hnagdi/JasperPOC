<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title >HPOC</title>
 <link rel="stylesheet" href="styles.css">
</head>
<body>
<p><h1><center>Organizational Details</center></h1></p>

<div class="tab">
  <button class="tablinks" onclick="openTab(event, 'Employee')" id="defaultOpen">Employee</button>
  <button class="tablinks" onclick="openTab(event, 'Department')">Department</button>
  <button class="tablinks" onclick="openTab(event, 'Sales')">Sales</button>
  <button class="tablinks" onclick="openTab(event, 'Report')">Report</button>
  <button class="tablinks" onclick="openTab(event, 'Report Design')">Report Design</button>
</div>

<div id="Employee" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">x</span>
 <form action="http://localhost:8080/MyProducts/employees/create" method="POST">
        <p>
            Name : <input id="name" name="name" />
        </p>
        <p>
           salary : <input id="salary" name="salary" />
        </p>
        <input type="submit" value="Add" />
    </form>
    <form action="http://localhost:8080/MyProducts/employees/" method="GET">
        <input type="submit" value="Retrive" />
    </form>
</div>

<div id="Department" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">x</span>
  <h3>Department</h3>
  <p>Department details.</p> 
</div>

<div id="Sales" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">x</span>
  <h3>Sales</h3>
  <p>Sales details.</p>
</div>

<div id="Report" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">x</span>
  <h3>Report</h3>
   <iframe id="report" width="100%" height="90%" scrolling="yes">
  <p>Your browser does not support iframes.</p>
</iframe>
</div>

<div id="Report Design" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">x</span>
  <h3>Report Design</h3>
 <iframe id="reportdesign" width="100%" height="90%" scrolling="yes">
  <p>Your browser does not support iframes.</p>
</iframe>
</div>

<script>
function openTab(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>
</body>
</html>
