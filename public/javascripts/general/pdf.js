function GerarPDF() {
  var dadosPDF = document.getElementById('pdf').innerHTML;

  var newWindow = window.open('', '', 'height=700,width=700');
  newWindow.document.write('<html><head>');
  newWindow.document.write('<title>Synergia</title>');
  newWindow.document.write('</head>');
  newWindow.document.write('<body>');
  newWindow.document.write(dadosPDF);
  newWindow.document.write('</body></html>');
  newWindow.document.close();
  newWindow.print();
}