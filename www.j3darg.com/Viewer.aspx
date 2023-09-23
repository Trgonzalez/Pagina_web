
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <!-- Google Tag Manager -->
<script>(function (w, d, s, l, i) {
        w[l] = w[l] || []; w[l].push({
            'gtm.start':
                new Date().getTime(), event: 'gtm.js'
        }); var f = d.getElementsByTagName(s)[0],
            j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : ''; j.async = true; j.src =
                'https://www.googletagmanager.com/gtm.js?id=' + i + dl; f.parentNode.insertBefore(j, f);
    })(window, document, 'script', 'dataLayer', 'GTM-NBMXFGF');</script>
<!-- End Google Tag Manager -->

    <title>
	J3D - Impresiones 3D 
</title><link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" /><link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" /><link href="Content/materialize.min.css" rel="stylesheet" /><link href="Content/huebee.css" rel="stylesheet" /><link href="Content/style.css" rel="stylesheet" />
    <script src="Scripts/jquery.min.js"></script>
    <script src="Scripts/materialize.min.js"></script>
    <script src="Scripts/huebee.pkgd.min.js"></script>
    <script src="Scripts/stl_viewer.min.js"></script>
    <script src="Scripts/viewer_ABS.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>

    <!-- Global site tag (gtag.js) - Google Analytics -->
<script async="async" src="https://www.googletagmanager.com/gtag/js?id=G-J66WJP36LC"></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag() { dataLayer.push(arguments); }
    gtag('js', new Date());

    gtag('config', 'G-J66WJP36LC');
</script>



    <script src="Scripts/NewWebService.js"></script>

    <script type="text/javascript">
        function UpdPanelUpdate(id) {
            var obj = document.getElementById("text");
           obj.value = id;
           __doPostBack("button", "");
            $('#span_mensajes').text("");
        }
    </script>

    <link href="Content/style2.css" type="text/css" rel="stylesheet" media="screen,projection" /><meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script>
        function miFuncion() {
            alert('¡El botón fue presionado!');
        }
    </script>

    <script>
        function contar_carrito() {

            var SendObj = {

                "BrowserVersion": navigator.appVersion,
                "UserAgent": navigator.userAgent,
                "ses_id": $('#h_ses_id').val()
            }
            var stringData = JSON.stringify(SendObj);
            $.ajax({
                type: 'POST',
                url: 'MyWebService.asmx/count_item',
                data: "{'newClass':" + stringData + "}",
                contentType: 'application/json; utf-8',
                dataType: 'json',
                success: function (data) {
                    if (data.d != null) {
                        if (data.d != 0) {
                            $('#spancount').text("[" + decimalFmt.format(data.d) + "]");
                            $('#span_mensajes').text("");
                        }

                    }
                },
                error: function (jqXHR, textStatus, errorThrown) {
                }

            });
        };

    </script>

</head>
<body onload="contar_carrito()">
    <!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NBMXFGF"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->

    <form method="post" action="./Viewer.aspx" id="form">
<div class="aspNetHidden">
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKLTk0OTkzMTc5NQ9kFgICAw9kFhACBQ8PFgIeBFRleHQFEkVudHJhci9SZWdpc3RyYXJzZWRkAhkPFgIeC18hSXRlbUNvdW50Ag8WHmYPZBYCZg8VBAxhYnNfYW1hcmlsbG8BMwE5CEFtYXJpbGxvZAIBD2QWAmYPFQQIYWJzX2F6dWwBNAE5BEF6dWxkAgIPZBYCZg8VBAphYnNfYmxhbmNvATIBOQZCbGFuY29kAgMPZBYCZg8VBA1hYnNfY2hvY29sYXRlATcBOQlDaG9jb2xhdGVkAgQPZBYCZg8VBAthYnNfY29iYWx0bwE4ATkUQ29iYWx0byAoTWV0YWxpemFkbylkAgUPZBYCZg8VBAphYnNfZnVjc2lhATkBOQZGdWNzaWFkAgYPZBYCZg8VBAhhYnNfZ3JpcwIxMAE5BEdyaXNkAgcPZBYCZg8VBAthYnNfbmFyYW5qYQIxMQE5B05hcmFuamFkAggPZBYCZg8VBAthYnNfbmF0dXJhbAExATkHTmF0dXJhbGQCCQ9kFgJmDxUECWFic19uZWdybwIxMgE5BU5lZ3JvZAIKD2QWAmYPFQQIYWJzX3BpZWwCMTMBOQRQaWVsZAILD2QWAmYPFQQJYWJzX3BsYXRhAjE0ATkSUGxhdGEgKE1ldGFsaXphZG8pZAIMD2QWAmYPFQQIYWJzX3Jvam8CMTUBOQRSb2pvZAIND2QWAmYPFQQJYWJzX3ZlcmRlAjE2ATkFVmVyZGVkAg4PZBYCZg8VBAthYnNfdmlvbGV0YQIxNwE5B1Zpb2xldGFkAh0PFgIfAQIZFjJmD2QWAmYPFQQMcGxhX2FtYXJpbGxvAjE4ATkJQW1hcmlsbGxvZAIBD2QWAmYPFQQZcGxhX2FtYXJpbGxvX2ZsdW9yZXNjZW50ZQIyMAE5GEFtYXJpbGxsbyAoRmx1b3Jlc2NlbnRlKWQCAg9kFgJmDxUEGHBsYV9hbWFyaWxsb190cmFuc2x1Y2lkbwIxOQE5F0FtYXJpbGxsbyAoVHJhbnNsdWNpZG8pZAIDD2QWAmYPFQQIcGxhX2FxdWECMjEBOQRBcXVhZAIED2QWAmYPFQQIcGxhX2F6dWwCMjIBOQRBenVsZAIFD2QWAmYPFQQVcGxhX2F6dWxfZmx1b3Jlc2NlbnRlAjI0ATkTQXp1bCAoRmx1b3Jlc2NlbnRlKWQCBg9kFgJmDxUEFHBsYV9henVsX3RyYW5zbHVjaWRvAjI1ATkSQXp1bCAoVHJhbnNsdWNpZG8pZAIHD2QWAmYPFQQOcGxhX2F6dWxfY2xhcm8CMjMBOQpBenVsIENsYXJvZAIID2QWAmYPFQQKcGxhX2JsYW5jbwIyNgE5BkJsYW5jb2QCCQ9kFgJmDxUEC3BsYV9jZWxlc3RlAjI3ATkHQ2VsZXN0ZWQCCg9kFgJmDxUEDXBsYV9jaG9jb2xhdGUCMjgBOQlDaG9jb2xhdGVkAgsPZBYCZg8VBBZwbGFfY29iYWx0b19tZXRhbGl6YWRvAjI5ATkUQ29iYWx0byAoTWV0YWxpemFkbylkAgwPZBYCZg8VBBRwbGFfY29icmVfbWV0YWxpemFkbwIzMAE5EkNvYnJlIChNZXRhbGl6YWRvKWQCDQ9kFgJmDxUEFXBsYV9kb3JhZG9fbWV0YWxpemFkbwIzMQE5E0RvcmFkbyAoTWV0YWxpemFkbylkAg4PZBYCZg8VBApwbGFfZnVjc2lhAjMyATkGRnVjc2lhZAIPD2QWAmYPFQQXcGxhX2Z1Y3NpYV9mbHVvcmVzY2VudGUCMzMBORVGdWNzaWEgKEZsdW9yZXNjZW50ZSlkAhAPZBYCZg8VBA5wbGFfZ3Jpc19jbGFybwIzNAE5CkdyaXMgQ2xhcm9kAhEPZBYCZg8VBA9wbGFfZ3Jpc19vc2N1cm8CMzUBOQtHcmlzIE9zY3Vyb2QCEg9kFgJmDxUEGXBsYV9rcmlwdG9uaXRhX21ldGFsaXphZG8CMzYBORdLcmlwdG9uaXRhIChNZXRhbGl6YWRvKWQCEw9kFgJmDxUEGW55bG9uX25hdHVyYWxfdHJhbnNsdWNpZG8CNTABORVOYXR1cmFsIChUcmFuc2x1Y2lkbylkAhQPZBYCZg8VBApmbGV4X25lZ3JvAjQ2ATkFTmVncm9kAhUPZBYCZg8VBAhhYnNfcm9qbwI0OAE5BFJvam9kAhYPZBYCZg8VBAhhYnNfcm9qbwI4NQE5BFJvc2FkAhcPZBYCZg8VBAlhYnNfdmVyZGUCODQBOQVWZXJkZWQCGA9kFgJmDxUEC2Fic192aW9sZXRhAjQ5ATkHVmlvbGV0YWQCHw8WAh8BAgwWGGYPZBYCZg8VBAxwbGFfYW1hcmlsbG8CNzMBOQlBbWFyaWxsbG9kAgEPZBYCZg8VBBhwbGFfYW1hcmlsbG9fdHJhbnNsdWNpZG8CNzQBORdBbWFyaWxsbG8gKFRyYW5zbHVjaWRvKWQCAg9kFgJmDxUECHBsYV9henVsAjc1ATkEQXp1bGQCAw9kFgJmDxUEFHBsYV9henVsX3RyYW5zbHVjaWRvAjc2ATkSQXp1bCAoVHJhbnNsdWNpZG8pZAIED2QWAmYPFQQKcGxhX2JsYW5jbwI3NwE5BkJsYW5jb2QCBQ9kFgJmDxUECmFic19ibGFuY28CNDcBOQZCbGFuY29kAgYPZBYCZg8VBA1wbGFfY2hvY29sYXRlAjc4ATkJQ2hvY29sYXRlZAIHD2QWAmYPFQQPcGxhX2dyaXNfb3NjdXJvAjc5ATkLR3JpcyBPc2N1cm9kAggPZBYCZg8VBBlueWxvbl9uYXR1cmFsX3RyYW5zbHVjaWRvAjgzATkVTmF0dXJhbCAoVHJhbnNsdWNpZG8pZAIJD2QWAmYPFQQKZmxleF9uZWdybwI4MAE5BU5lZ3JvZAIKD2QWAmYPFQQIYWJzX3Jvam8CODEBOQRSb2pvZAILD2QWAmYPFQQLYWJzX3Zpb2xldGECODIBOQdWaW9sZXRhZAIhDxYCHwECAhYEZg9kFgJmDxUEGW55bG9uX25hdHVyYWxfdHJhbnNsdWNpZG8CNDABORVOYXR1cmFsIChUcmFuc2x1Y2lkbylkAgEPZBYCZg8VBAtueWxvbl9uZWdybwIzOAE5BU5lZ3JvZAIjDxYCHwECBBYIZg9kFgJmDxUEC2ZsZXhfYmxhbmNvAjM5ATkGQmxhbmNvZAIBD2QWAmYPFQQMZmxleF9Db2JhbHRvAjQyATkUQ29iYWx0byAoTWV0YWxpemFkbylkAgIPZBYCZg8VBBhmbGV4X25hdHVyYWxfdHJhbnNsdWNpZG8CNDMBORVOYXR1cmFsIChUcmFuc2x1Y2lkbylkAgMPZBYCZg8VBApmbGV4X25lZ3JvAjQxATkFTmVncm9kAiUPFgIfAQIEFghmD2QWAmYPFQQNcmVzaW5hX2JsYW5jbwI0NAE5BkJsYW5jb2QCAQ9kFgJmDxUEDnBsYV9ncmlzX2NsYXJvAjg2ATkER3Jpc2QCAg9kFgJmDxUEDHJlc2luYV9uZWdybwIzNwE5BU5lZ3JvZAIDD2QWAmYPFQQLcmVzaW5hX3Jvam8CNDUBOQRSb2pvZAInD2QWAmYPZBYEAgEPFgIeCWlubmVyaHRtbAUQMjMwOTE5MDIzNy01OTY2N2QCAw8WAh8BAgEWAmYPZBYCZg8VBWRSZWdsZXRhIDEuNV9DdWJpZXJ0YS5zdGwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCjEgICAgICAgICAKUkVTSU5BICAgIAkkNSw5NTMuNDkEMTg3NGRklNWaq6jLQSicUUqGYSUP26tO/VLTwitMzdte7UD6juk=" />
</div>

<script type="text/javascript">
//<![CDATA[
var theForm = document.forms['form'];
if (!theForm) {
    theForm = document.form;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
//]]>
</script>


<script src="/WebResource.axd?d=snWlghZKP5hgITNXQiayTGG_1qA9Fs1IxD7qJgAshwmWHpH3pkiQMrEjxIeKMlT2iTh6HZ86uSYpU2l0CZro-6ydkG-9q_3I8JLj3RsQTjo1&amp;t=638240421260000000" type="text/javascript"></script>


<script src="/ScriptResource.axd?d=GR_UhNGyotnDChCk0F_P4O5xgR9eUYQ9e4nQhcSpSQvgD1cFa8aVPY87Iif-SA8jkum6sUiShClg-nMWWv3Tc2TvPxH7tZYsKJXwVrPt8Xvud6_e9MprAh1cc7FHJFCJ0ku5bXsuJuQzNqjLJWsOLXmiFaWm4Rqq8WsskP4-_cK8Y7gJERybmwomw_XAIWEg0&amp;t=96346c8" type="text/javascript"></script>
<script type="text/javascript">
//<![CDATA[
if (typeof(Sys) === 'undefined') throw new Error('ASP.NET Ajax client-side framework failed to load.');
//]]>
</script>

<script src="/ScriptResource.axd?d=JY9ZeUl9qwVLpe53aq4uts89Bwb6wKr_C7RFIENplys-qinmtCvr1ttTFJv9c7sCeBeKo7bJFCvsML_11O2if-Vq-5B6zMTGIQR9MAY5ly0u8OELLkIgCsM5LcF1jWK4JjBkjHuv4Z3aoYJTZmZSMZSRq7kYEK9iN_n2iQgcN8B5fSaAZG2RLmt9URpaA3k40&amp;t=96346c8" type="text/javascript"></script>
<div class="aspNetHidden">

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="2AA4A978" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEdABRCthnXwZ3ugOuh+uNjHUh0TaxFZAfWKWGImN/rR25AgSb76KxsJfeOCPf3sNyiMMbN+DvxnwFeFeJ9MIBWR693FLl+KxUl8DnI64hEWVEMLbBlrjBti61jbz1e+WWwzi0QKJQCQgJ3UT4l0JUkiu/t/kGOVJHHoh3/K9JwGepGSs95wAV9q4RZ4W7ediM2VUwMHx5z8a/4eLlgsHBiPwD2gc01VP11/RRrek91qeD4J1Z0XDnFDvCxAjDwXnFHNn8IjvnIIVprV/aLAvOh26y/EHXRMNwjEPS4nQb6jR07ttzhqBVdMB+AVo7zudn5891OHkHtxCbe4Yjkv/J0Ogq+5ypTZLV7cK65MCxcBirYIWan1kbmy58OzNTzFb2MeY0SepRr2V4Bs4ZhnzNTiQ1AJLKT5z6/uKyUxFmY13gUr3v/tyRnaPpIm7qGngyv8gtc7Vv9CWsNq+c6TlAmNhrO" />
</div>
        <script type="text/javascript">
//<![CDATA[
Sys.WebForms.PageRequestManager._initialize('ScriptManager1', 'form', ['tUpdatePanel1','UpdatePanel1'], ['button','button'], [], 90, '');
//]]>
</script>

        <input name="text" type="text" id="text" style="display: none;" />


        <nav class="white" role="navigation">
            <div class="nav-wrapper container">

                <a id="logo-container" href="Viewer.aspx?Ses0=0" class="brand-logo">
                    <img src="img/logo_b.png" style="width: 120px;" alt="J3D" /></a>
                <ul class="right hide-on-med-and-down">
                    <li><a href="#servicios">Servicios</a></li>
                    <li><a href="#galeria">Galería</a></li>
                    <li><a href="#nosotros">Contacto</a></li>
                    <li><a href="#homea">Presupuesto</a></li>
                    <li>
                        <input type="submit" name="btn_log" value="Entrar/Registrarse" id="btn_log" data-target="modal_log" class="btn modal-trigger" /></li>
                </ul>

                <ul id="nav-mobile" class="sidenav">
                     <li><a href="#servicios">Servicios</a></li>
                    <li><a href="#galeria">Galería</a></li>
                    <li><a href="#nosotros">Contacto</a></li>
                    <li><a href="#homea">Presupuesto</a></li>
                    <li>
                        <input type="submit" name="Button1" value="Entrar/Registrarse" id="Button1" data-target="modal_log" class="btn modal-trigger" /></li>
                </ul>
                <a href="#" data-target="nav-mobile" class="sidenav-trigger"><i class="material-icons">menu</i></a>
            </div>
        </nav>



        <!--inicio cabecera-->
        <div id="index-banner" class="parallax-container">
            <div class="section no-pad-bot">
                <div class="container">
                    <br />
                    <br />
                    <h2 class="header left teal-text" style="text-shadow:1px 1px 5px grey">Impresiones en 3D</h2>
                    <div class="row">
                        <h5 class="header left col s12 teal-text"></h5>
                    </div>
                    <div class="row"><div class="col s12">
                        <a href="#empezar" id="download-button2" class="btn left waves-effect teal">¿CÓMO EMPEZAR? (Soy nuevo)</a>
                    </div>  
                       <div class="col s12" style="height:10px"></div>
                        <div class="col s12">
                             <a href="#homea" id="download-button" style="width:auto;height:auto" class="btn left waves-effect waves-light teal">COTIZACIÓN INSTANTÁNEA</a><br />
                        </div>
                         <div class="col s12" style="height:50px"></div>
                                                <div class="fixed-action-btn-wa valign-wrapper" style="vertical-align:middle"> 
 <a href="https://wa.me/message/KTGYSP2LKEILM1" target="_blank" id="wa"><img class="btn-floating-wa" src="img/wa2.png"/></a>
                        </div>

                         <div class="col s12" style="height:50px"></div>
                                                <div class="fixed-action-btn-in valign-wrapper" style="vertical-align:middle"> 
 <a href="https://www.instagram.com/j3darg/" target="_blank" id="in"><img class="btn-floating-in" src="img/ins.png"/></a>
                        </div>
                    </div>
                  
                </div>
            </div>
            <div class="parallax">
                <img  src="img/aa4.jpg" /></div>
        </div>
        <!--fin cabecera-->
        <!--inicio contenedor-->
        <div class="container" id="servicios">
            <div class="section">

                <!--   Icon Section   -->
                <div class="row">
                    <div class="col s1"></div>
                    <div class="col s12">
                        <div class="icon-block">
                            <h2 class="center brown-text"><i class="material-icons">check_box</i></h2>
                            <h5 class="center">Impresión 3D [FDM / DLP] </h5><br />
                            <h6 class="center">PLA, PETG, NYLON, ABS, PC, PC/ABS, Policarbonato (PP), TPU (Flexible) y Resina </h6> 
                            <br />
                            <p class=" center">
                                Nos dedicamos a Imprimir 3D en alta calidad.<br />

Buscamos utilizar nuestra experiencia para brindar la mejor solución que necesita cada cliente.<br />
                                
Nuestra amplia capacidad de impresión nos permite responder tanto a demanda expontánea como a grandes proyectos.<br />
Nos especializamos en prototipos, réplicas, maquetas, elementos de producción en serie, productos industriales o de diseño y siempre vamos a buscar el mejor material en base a las necesidades de cada pieza.
                            </p>
                        </div>
                    </div>
                    <div class="col s1"></div>
                </div>

            </div>
        </div>
        <!--fin contenedor-->
        <!--inicio cabecera-->
        <div id="index2-banner" class="parallax-container">
            <div class="section no-pad-bot">
                <div class="container">
                    <br />
                    <br />
                    <h1 class="header left teal-text"></h1>
                    <div class="row">
                        <h5 class="header left col s12 teal-text"></h5>
                    </div>

                    <br />
                    <br />

                </div>
            </div>
            <div class="parallax">
                <img src="img/bb3.jpg" style="width: 120%" /></div>
        </div>
        <!--fin cabecera-->
        <!--inicio contenedor-->
        <div class="container" id="empezar">
            <div class="section">

                <!--   Icon Section   -->
                <div class="row">
                    <div class="col s12 m3">
                        <div class="icon-block">
                            <h2 class="center brown-text"><i class="material-icons">attach_file</i></h2>
                            <h5 class="center">Primero</h5>

                            <p class="light">
                                Identificá que es lo que querés imprimir, puede ser un diseño propio o algo que esté publicado en sitios de contenido 3D, como: <a href="https://www.thingiverse.com">Thingiverse</a>,  <a href="https://cults3d.com">Cults3D</a> o <a href="https://thangs.com/">Thangs</a>.
               
                            </p>
                        </div>
                    </div>

                    <div class="col s12 m6">
                        <div class="icon-block">
                            <h2 class="center brown-text"><i class="material-icons">attach_money</i></h2>
                            <h5 class="center">Segundo</h5>

                            <p class="light">
                                Ahora, podés cotizarlo. Para eso sólo tenés que ingresar a nuestro <a href="#homea">Cotizador</a>, al momento de subir el archivo (.stl o .obj) vas a poder visualizar el costo de impresión en cada uno de los materiales con los que trabajamos.<br />
                                Si tenés alguna duda, podés enviarnos los archivos por <a href="https://wa.me/+5491164791390" target="_blank">Whatsapp (+54.11.6479.1390)</a>  o por correo a <a href="mailto:contacto@j3darg.com" target="_blank">contacto@j3darg.com</a>.
                            </p>
                        </div>
                    </div>

                    <div class="col s12 m3">
                        <div class="icon-block">
                            <h2 class="center brown-text"><i class="material-icons">local_shipping</i></h2>
                            <h5 class="center">Tercero</h5>

                            <p class="light">
                                <b>(Lo último)</b>, la entrega de tus impresiones. Podés retirarlo personalmente por nuestra oficina.<br />
                                Pero si preferís te lo envíamos, dentro de C.A.B.A. el costo es de $600 y al resto del país $1000.
                            </p>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <!--fin contenedor-->
        <!--inicio cabecera-->
        <div class="parallax-container valign-wrapper">
            <div class="section no-pad-bot">
                <div class="container">
                    <div class="row center">
                        <h5 class="header col s12 light">COTIZAR PIEZA</h5>
                    </div>
                </div>
            </div>
            <div class="parallax">
                <img src="img/dd.jpg" style="width: 120%" /></div>
        </div>
        <!--fin cabecera-->
        <div class="homeb" id="homea"></div>

        <!--inicio contenedor-->
        <div>
            <div class="section" id="homeb">
                    <div class="row">

                        <div class="col s12 l5">
                            <!--inicio TAVO-->
                            <div class="viewer-container" id="viewer_container">
                                <div class="card-panel" id="viewer-panel">
                                    <div id="viewer" class="section scrollspy con"></div>
                                    <div id="loading">
                                        <div class="preloader-wrapper big active">
                                            <div class="spinner-layer spinner-blue">
                                                <div class="circle-clipper left">
                                                    <div class="circle"></div>
                                                </div>
                                                <div class="gap-patch">
                                                    <div class="circle"></div>
                                                </div>
                                                <div class="circle-clipper right">
                                                    <div class="circle"></div>
                                                </div>
                                            </div>

                                            <div class="spinner-layer spinner-red">
                                                <div class="circle-clipper left">
                                                    <div class="circle"></div>
                                                </div>
                                                <div class="gap-patch">
                                                    <div class="circle"></div>
                                                </div>
                                                <div class="circle-clipper right">
                                                    <div class="circle"></div>
                                                </div>
                                            </div>

                                            <div class="spinner-layer spinner-yellow">
                                                <div class="circle-clipper left">
                                                    <div class="circle"></div>
                                                </div>
                                                <div class="gap-patch">
                                                    <div class="circle"></div>
                                                </div>
                                                <div class="circle-clipper right">
                                                    <div class="circle"></div>
                                                </div>
                                            </div>

                                            <div class="spinner-layer spinner-green">
                                                <div class="circle-clipper left">
                                                    <div class="circle"></div>
                                                </div>
                                                <div class="gap-patch">
                                                    <div class="circle"></div>
                                                </div>
                                                <div class="circle-clipper right">
                                                    <div class="circle"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-panel section scrollspy center" id="actions">
                                    
                                    <button class="btn waves-effect waves-light" id="btn_up" type="button" onclick="$('#viewer-file').click()"
                                        data-tooltip="Abrir objeto OBJ o STL">
                                        <i class="material-icons">file_upload</i>
                                    </button>


                                    
                                    <button class="btn waves-effect waves-light" type="button" id="select-foreground"
                                        data-tooltip="Cambiar color del objeto">
                                        <i class="material-icons">palette</i>
                                    </button>

                                    
                                    <button class="btn waves-effect waves-light" type="button" id="select-background"
                                        data-tooltip="Cambiar color del fondo">
                                        <i class="material-icons">format_paint</i>
                                    </button>

                                    
                                    <a id="orientation" class='dropdown-trigger btn' href='#' data-target='dropdown2'
                                        data-tooltip="Orientación del objeto">
                                        <img src="Content/orientation.svg" /></a>
                                    <ul id='dropdown2' class='dropdown-content'>
                                        <li onclick="setRotate('front')"><a>Frente</a></li>
                                        <li onclick="setRotate('top')"><a>Arriba</a></li>
                                        <li onclick="setRotate('down')"><a>Abajo</a></li>
                                        <li onclick="setRotate('back')"><a>Atrás</a></li>
                                        <li onclick="setRotate('left')"><a>Izquierda</a></li>
                                        <li onclick="setRotate('right')"><a>Derecha</a></li>
                                    </ul>

                                    
                                    <a id="display-format" class='dropdown-trigger btn' href='#' data-target='dropdown1'
                                        data-tooltip="Establece la forma en que se ve el objeto">
                                        <i class="material-icons">remove_red_eye</i></a>
                                    <ul id='dropdown1' class='dropdown-content'>
                                        <li onclick="setDisplay(0)"><a>Plana</a></li>
                                        <li onclick="setDisplay(1)"><a>Suavizada</a></li>
                                        <li onclick="setDisplay(2)"><a>Estructura</a></li>
                                    </ul>

                                    
                                    <span class="switch" data-tooltip="Mostrar u ocultar los bordes">
                                        <br />
                                        <br />
                                        <label>
                                            Borde
                            <input type="checkbox" id="edges" />
                                            <span class="lever"></span>
                                        </label>
                                    </span>

                                    
                                    <span class="switch" data-tooltip="Rotar automáticamente el objeto">
                                        <label>
                                            Rotación
                            <input type="checkbox" id="rotate" />
                                            <span class="lever"></span>
                                        </label>
                                        <br />

                                    </span>




                                    

                                    <input id="viewer-file" name="viewer-file" type="file"/>
                                   
                                    <input id="foreground" value="#01579b" />
                                    <input id="background" value="#FFFFFF" />
                                    <input type="hidden" name="price" />
                                    <input type="hidden" name="area" />
                                    <input type="hidden" name="volume" />
                                    <input type="hidden" name="scale" />
                                    <input type="hidden" name="x" />
                                    <input type="hidden" name="y" />
                                    <input type="hidden" name="z" />
                                    <input type="hidden" name="h_ses_id" id="h_ses_id" value="2309190237-59667" />
                                    <input type="hidden" name="dola" id="dola" value="350" />
                                    <input type="hidden" name="mm3_abs" id="mm3_abs" value="0.2" />
                                    <input type="hidden" name="mm3_pla" id="mm3_pla" value="0.18" />
                                    <input type="hidden" name="mm3_petg" id="mm3_petg" value="0.2" />
                                    <input type="hidden" name="mm3_nylon" id="mm3_nylon" value="0.25" />
                                    <input type="hidden" name="mm3_flex" id="mm3_flex" value="0.35" />
                                    <input type="hidden" name="mm3_resina" id="mm3_resina" value="0.9" />
                                </div>
                                
                            </div>
                            <!--fin TAVO-->

                        </div>
                        <div class="col s12 l5">

                            <div id="model-data">
                                <!--inicio colapsable-->
                                <ul class="collapsible">
                                    <li class="active">
                                        <div class="collapsible-header"><i class="material-icons">attachment</i> <b>Archivo:&nbsp;</b><span id="archivo"></span>&nbsp;&nbsp;<progress class="determinate" id="fileProgress"  style="display: none"></progress></div>
                                        <div class="collapsible-body">
                                            <div class="row">
                                                <div class="col s12">


                                                    <b>Dimensiones: </b><span id="dimMM"></span>mm
                            <br />
                                                    <b>Volumen:</b> <span id="volMM"></span>mm<sup>3</sup>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col s4">

                                                    <label class="center-align" for="infill">Relleno</label>
                                                    <br />
                                                    <input class="center-align" onchange="updateInfo()" id="infill" name="infill" type="number" min="1" max="100" step="1" value="20" style="width: 50px; text-align: center;" data-tooltip="20% es el relleno estandar." />
                                                    %

                                                </div>
                                                <div class="col s4">
                                                    <label class="center-align" for="scale">Escala</label>
                                                    <br />

                                                    <input class="center-align" id="scale" type="text" min=".01" max="999999" step=".01" value="1" style="width: 50px" data-tooltip="Aumente el tamaño si es necesario." />

                                                </div>
                                                <div class="col s4">
                                                    <label class="center-align" for="cantidad">Cantidad</label>
                                                    <br />
                                                    <input class="center-align" id="cantidad" type="number" min="1" max="999" step="1" value="1" style="width: 50px" onchange="updateInfo()" />

                                                </div>
                                            </div>









                                        </div>
                                    </li>
                                    <li>
                                        <div class="collapsible-header">
                                            <div class="col s1 right-align">
                                                <i class="material-icons">filter_drama</i>
                                            </div>
                                            <div class="col s2 left-align">ABS</div>

                                            <hr />
                                            <span id="lblMessage" style="color: Green"></span>
                                            <div class="col s9 right-align"><b>$ <span id="value_ABS"></span></b></div>



                                        </div>
                                        <div class="collapsible-body card-panel">
                                            <div class="row">
                                                <div class="col s8">
                                                    <!--Inicio Combo Color-->
                                                    <select id="colorABS" name="colorABS" class="icon" style="font-size:xx-small">
                                                        <option data-price="9">Seleccionar color</option>
                                                        
                                                                <option data-icon="img/colores/abs_amarillo.png" value='3' data-price='9'>Amarillo</option>
                                                            
                                                                <option data-icon="img/colores/abs_azul.png" value='4' data-price='9'>Azul</option>
                                                            
                                                                <option data-icon="img/colores/abs_blanco.png" value='2' data-price='9'>Blanco</option>
                                                            
                                                                <option data-icon="img/colores/abs_chocolate.png" value='7' data-price='9'>Chocolate</option>
                                                            
                                                                <option data-icon="img/colores/abs_cobalto.png" value='8' data-price='9'>Cobalto (Metalizado)</option>
                                                            
                                                                <option data-icon="img/colores/abs_fucsia.png" value='9' data-price='9'>Fucsia</option>
                                                            
                                                                <option data-icon="img/colores/abs_gris.png" value='10' data-price='9'>Gris</option>
                                                            
                                                                <option data-icon="img/colores/abs_naranja.png" value='11' data-price='9'>Naranja</option>
                                                            
                                                                <option data-icon="img/colores/abs_natural.png" value='1' data-price='9'>Natural</option>
                                                            
                                                                <option data-icon="img/colores/abs_negro.png" value='12' data-price='9'>Negro</option>
                                                            
                                                                <option data-icon="img/colores/abs_piel.png" value='13' data-price='9'>Piel</option>
                                                            
                                                                <option data-icon="img/colores/abs_plata.png" value='14' data-price='9'>Plata (Metalizado)</option>
                                                            
                                                                <option data-icon="img/colores/abs_rojo.png" value='15' data-price='9'>Rojo</option>
                                                            
                                                                <option data-icon="img/colores/abs_verde.png" value='16' data-price='9'>Verde</option>
                                                            
                                                                <option data-icon="img/colores/abs_violeta.png" value='17' data-price='9'>Violeta</option>
                                                            
                                                    </select>
                                                    <!--Fin Combo Color-->
                                                </div>

                                                <div class="col s4 right-align">
                                                    
                                                    <button id="agregar" class="btn waves-effect waves-light #0d47a1 blue darken-4" type="button" onclick="agregar_item(&#39;ABS&#39;,$(&#39;#colorABS :selected&#39;).text())" data-tooltip="AGREGAR AL PEDIDO">

                                                        <i class="material-icons">add_shopping_cart</i>
                                                    </button>







                                                </div>
                                            </div>
                                            <div>
                                                El ABS (acrilonitrilo butadieno estireno) es ideal para piezas funcionales y prototipos que necesitan propiedades mecánicas más fuertes que el PLA.
                                                <br />
                                                El ABS coincide con aproximadamente el 80 % de las propiedades de los productos moldeados por inyección, pero es rígido e inflexible, con una libertad de diseño limitada debido al proceso de impresión de modelado por deposición fundida.<br />
                                                A diferencia de otros materiales, el ABS tolera hasta 95 grados sin perder sus propiedades.
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="collapsible-header">
                                            <div class="col s1 right-align">
                                                <i class="material-icons">filter_drama</i>
                                            </div>
                                            <div class="col s2 left-align">PLA</div>

                                            <div class="col s9 right-align"><b>$ <span id="value_PLA"></span></b></div>



                                        </div>
                                        <div class="collapsible-body card-panel">
                                            <div class="row">
                                                <div class="col s6">
                                                    <!--Inicio Combo Color-->
                                                    <select id="colorPLA" name="colorPLA" class="icon">
                                                        <option data-price="9">Seleccionar color</option>
                                                        
                                                                <option data-icon="img/colores/pla_amarillo.png" value='18' data-price='9'>Amarilllo</option>
                                                            
                                                                <option data-icon="img/colores/pla_amarillo_fluorescente.png" value='20' data-price='9'>Amarilllo (Fluorescente)</option>
                                                            
                                                                <option data-icon="img/colores/pla_amarillo_translucido.png" value='19' data-price='9'>Amarilllo (Translucido)</option>
                                                            
                                                                <option data-icon="img/colores/pla_aqua.png" value='21' data-price='9'>Aqua</option>
                                                            
                                                                <option data-icon="img/colores/pla_azul.png" value='22' data-price='9'>Azul</option>
                                                            
                                                                <option data-icon="img/colores/pla_azul_fluorescente.png" value='24' data-price='9'>Azul (Fluorescente)</option>
                                                            
                                                                <option data-icon="img/colores/pla_azul_translucido.png" value='25' data-price='9'>Azul (Translucido)</option>
                                                            
                                                                <option data-icon="img/colores/pla_azul_claro.png" value='23' data-price='9'>Azul Claro</option>
                                                            
                                                                <option data-icon="img/colores/pla_blanco.png" value='26' data-price='9'>Blanco</option>
                                                            
                                                                <option data-icon="img/colores/pla_celeste.png" value='27' data-price='9'>Celeste</option>
                                                            
                                                                <option data-icon="img/colores/pla_chocolate.png" value='28' data-price='9'>Chocolate</option>
                                                            
                                                                <option data-icon="img/colores/pla_cobalto_metalizado.png" value='29' data-price='9'>Cobalto (Metalizado)</option>
                                                            
                                                                <option data-icon="img/colores/pla_cobre_metalizado.png" value='30' data-price='9'>Cobre (Metalizado)</option>
                                                            
                                                                <option data-icon="img/colores/pla_dorado_metalizado.png" value='31' data-price='9'>Dorado (Metalizado)</option>
                                                            
                                                                <option data-icon="img/colores/pla_fucsia.png" value='32' data-price='9'>Fucsia</option>
                                                            
                                                                <option data-icon="img/colores/pla_fucsia_fluorescente.png" value='33' data-price='9'>Fucsia (Fluorescente)</option>
                                                            
                                                                <option data-icon="img/colores/pla_gris_claro.png" value='34' data-price='9'>Gris Claro</option>
                                                            
                                                                <option data-icon="img/colores/pla_gris_oscuro.png" value='35' data-price='9'>Gris Oscuro</option>
                                                            
                                                                <option data-icon="img/colores/pla_kriptonita_metalizado.png" value='36' data-price='9'>Kriptonita (Metalizado)</option>
                                                            
                                                                <option data-icon="img/colores/nylon_natural_translucido.png" value='50' data-price='9'>Natural (Translucido)</option>
                                                            
                                                                <option data-icon="img/colores/flex_negro.png" value='46' data-price='9'>Negro</option>
                                                            
                                                                <option data-icon="img/colores/abs_rojo.png" value='48' data-price='9'>Rojo</option>
                                                            
                                                                <option data-icon="img/colores/abs_rojo.png" value='85' data-price='9'>Rosa</option>
                                                            
                                                                <option data-icon="img/colores/abs_verde.png" value='84' data-price='9'>Verde</option>
                                                            
                                                                <option data-icon="img/colores/abs_violeta.png" value='49' data-price='9'>Violeta</option>
                                                            
                                                    </select>
                                                    <!--Fin Combo Color-->
                                                </div>

                                                <div class="col s6 right-align">
                                                    
                                                    <button class="btn waves-effect waves-light #0d47a1 blue darken-4" type="button" id="agrergar_pedido_pla" onclick="agregar_item('PLA',$('#colorPLA :selected').text())"
                                                        data-tooltip="AGREGAR AL PEDIDO">
                                                        <i class="material-icons">add_shopping_cart</i>
                                                    </button>



                                                </div>
                                            </div>
                                            <div>
                                                PLA (Ácido Poliláctico), es un polímero termoplástico derivado de recursos renovables. Esta característica lo diferencia de otros plásticos de uso común.<br />
                                                El PLA es excelente para la creación de prototipos, contenedores y piezas funcionales de bajo costo con una carga liviana. Durante el proceso de impresión, una extrusora deposita plástico fundido en una plataforma de construcción capa por capa, hasta que se crea el modelo.<br />
                                                El PLA tolera hasta un máximo de 60 grados.
                                            </div>
                                        </div>
                                    </li>

                                    <li>
                                        <div class="collapsible-header">
                                            <div class="col s1 right-align">
                                                <i class="material-icons">filter_drama</i>
                                            </div>
                                            <div class="col s2 left-align">PETG</div>

                                            <div class="col s9 right-align"><b>$ <span id="value_PETG"></span></b></div>



                                        </div>
                                        <div class="collapsible-body card-panel">
                                            <div class="row">
                                                <div class="col s6">
                                                    <!--Inicio Combo Color-->
                                                    <select id="colorPETG" name="colorPETG" class="icon">
                                                        <option data-price="9">Seleccionar color</option>
                                                        
                                                                <option data-icon="img/colores/pla_amarillo.png" value='73' data-price='9'>Amarilllo</option>
                                                            
                                                                <option data-icon="img/colores/pla_amarillo_translucido.png" value='74' data-price='9'>Amarilllo (Translucido)</option>
                                                            
                                                                <option data-icon="img/colores/pla_azul.png" value='75' data-price='9'>Azul</option>
                                                            
                                                                <option data-icon="img/colores/pla_azul_translucido.png" value='76' data-price='9'>Azul (Translucido)</option>
                                                            
                                                                <option data-icon="img/colores/pla_blanco.png" value='77' data-price='9'>Blanco</option>
                                                            
                                                                <option data-icon="img/colores/abs_blanco.png" value='47' data-price='9'>Blanco</option>
                                                            
                                                                <option data-icon="img/colores/pla_chocolate.png" value='78' data-price='9'>Chocolate</option>
                                                            
                                                                <option data-icon="img/colores/pla_gris_oscuro.png" value='79' data-price='9'>Gris Oscuro</option>
                                                            
                                                                <option data-icon="img/colores/nylon_natural_translucido.png" value='83' data-price='9'>Natural (Translucido)</option>
                                                            
                                                                <option data-icon="img/colores/flex_negro.png" value='80' data-price='9'>Negro</option>
                                                            
                                                                <option data-icon="img/colores/abs_rojo.png" value='81' data-price='9'>Rojo</option>
                                                            
                                                                <option data-icon="img/colores/abs_violeta.png" value='82' data-price='9'>Violeta</option>
                                                            
                                                    </select>
                                                    <!--Fin Combo Color-->
                                                </div>

                                                <div class="col s6 right-align">
                                                    
                                                    <button class="btn waves-effect waves-light #0d47a1 blue darken-4" type="button" id="agrergar_pedido_petg" onclick="agregar_item('PETG',$('#colorPETG :selected').text())"
                                                        data-tooltip="AGREGAR AL PEDIDO">
                                                        <i class="material-icons">add_shopping_cart</i>
                                                    </button>



                                                </div>
                                            </div>
                                            <div>
                                                PETG es un plástico que posee una resistencia y durabilidad similar a la del ABS, pero no es perjudicial para la salud humana.<br />
                                                El material es resistente a los químicos y al desgaste, pero también se puede usar en entornos al aire libre y relacionados con alimentos.<br />
                                                PETG está hecho con uno de los materiales sintéticos más comunes, el tereftalato de polietileno (PET), que se modifica con glicol. Como resultado, el PETG es mucho más resistente, más rígido, más transparente y más fácil de usar en la impresión 3D que el PET.
                                            </div>
                                        </div>
                                    </li>




                                    <li>
                                        <div class="collapsible-header">
                                            <div class="col s1 right-align">
                                                <i class="material-icons">filter_drama</i>
                                            </div>
                                            <div class="col s2 left-align">NYLON</div>

                                            <div class="col s9 right-align"><b>$ <span id="value_NYLON"></span></b></div>



                                        </div>
                                        <div class="collapsible-body card-panel">
                                            <div class="row">
                                                <div class="col s6">
                                                    <!--Inicio Combo Color-->
                                                    <select id="colorNYLON" name="colorNYLON" class="icon">
                                                        <option data-price="9">Seleccionar color</option>
                                                        
                                                                <option data-icon="img/colores/nylon_natural_translucido.png" value='40' data-price='9'>Natural (Translucido)</option>
                                                            
                                                                <option data-icon="img/colores/nylon_negro.png" value='38' data-price='9'>Negro</option>
                                                            
                                                    </select>
                                                    <!--Fin Combo Color-->
                                                </div>

                                                <div class="col s6 right-align">
                                                    
                                                    <button class="btn waves-effect waves-light #0d47a1 blue darken-4" type="button" id="agrergar_pedido_NYLON" onclick="agregar_item('NYLON',$('#colorNYLON :selected').text())"
                                                        data-tooltip="AGREGAR AL PEDIDO">
                                                        <i class="material-icons">add_shopping_cart</i>
                                                    </button>

                                                </div>
                                            </div>
                                            <div>
                                                El Nylon (poliamida) es un fantástico material polivalente de gran precisión y con una buena relación calidad-precio. Gracias a su fuerza y flexibilidad es extremadamente versátil y adecuado para piezas funcionales, prototipos y muchas más aplicaciones.
                                            </div>
                                        </div>
                                    </li>

                                    <li>
                                        <div class="collapsible-header">
                                            <div class="col s1 right-align">
                                                <i class="material-icons">filter_drama</i>
                                            </div>
                                            <div class="col s2 left-align">FLEX</div>

                                            <div class="col s9 right-align"><b>$ <span id="value_FLEX"></span></b></div>



                                        </div>
                                        <div class="collapsible-body card-panel">
                                            <div class="row">
                                                <div class="col s6">
                                                    <!--Inicio Combo Color-->
                                                    <select id="colorFLEX" name="colorFLEX">
                                                        <option data-price="9">Seleccionar color</option>
                                                        
                                                                <option data-icon="img/colores/flex_blanco.png" value='39' data-price='9'>Blanco</option>
                                                            
                                                                <option data-icon="img/colores/flex_Cobalto.png" value='42' data-price='9'>Cobalto (Metalizado)</option>
                                                            
                                                                <option data-icon="img/colores/flex_natural_translucido.png" value='43' data-price='9'>Natural (Translucido)</option>
                                                            
                                                                <option data-icon="img/colores/flex_negro.png" value='41' data-price='9'>Negro</option>
                                                            
                                                    </select>
                                                    <!--Fin Combo Color-->
                                                </div>

                                                <div class="col s6 right-align">
                                                    
                                                    <button class="btn waves-effect waves-light #0d47a1 blue darken-4" type="button" id="agrergar_pedido_FLEX" onclick="agregar_item('FLEX',$('#colorFLEX :selected').text())"
                                                        data-tooltip="AGREGAR AL PEDIDO">
                                                        <i class="material-icons">add_shopping_cart</i>
                                                    </button>


                                                </div>
                                            </div>
                                            <div>
                                                El poliuretano termoplástico, o TPU (FLEX), es una forma muy común de polímero elástico o elastómero, capaz de imprimirse en impresoras 3D FDM. De los muchos tipos de filamentos flexibles para impresoras 3D, el TPU es un poco más rígido, lo que facilita su fabricación y uso. FDM TPU tiene una dureza Shore en el rango de 85A-95A y es un material de resistencia media con muy alta flexibilidad y durabilidad, capaz de soportar fuerzas de compresión y tracción mucho más altas que sus contrapartes más comunes PLA y ABS. Nota: La flexibilidad varía según la cantidad de relleno.
                                            </div>
                                        </div>
                                    </li>
                                                                        <li>
                                        <div class="collapsible-header">
                                            <div class="col s1 right-align">
                                                <i class="material-icons">filter_drama</i>
                                            </div>
                                            <div class="col s2 left-align">Resina</div>

                                            <div class="col s9 right-align"><b>$ <span id="value_RESINA"></span></b></div>



                                        </div>
                                        <div class="collapsible-body card-panel">
                                            <div class="row">
                                                <div class="col s6">
                                                    <!--Inicio Combo Color-->
                                                    <select id="colorRESINA" name="colorRESINA">
                                                        <option data-price="9">Seleccionar color</option>
                                                        
                                                                <option data-icon="img/colores/resina_blanco.png" value='44' data-price='9'>Blanco</option>
                                                            
                                                                <option data-icon="img/colores/pla_gris_claro.png" value='86' data-price='9'>Gris</option>
                                                            
                                                                <option data-icon="img/colores/resina_negro.png" value='37' data-price='9'>Negro</option>
                                                            
                                                                <option data-icon="img/colores/resina_rojo.png" value='45' data-price='9'>Rojo</option>
                                                            
                                                    </select>
                                                    <!--Fin Combo Color-->
                                                </div>

                                                <div class="col s6 right-align">
                                                    
                                                    <button class="btn waves-effect waves-light #0d47a1 blue darken-4" type="button" id="agrergar_pedido_RESINA" onclick="agregar_item('RESINA',$('#colorRESINA :selected').text())"
                                                        data-tooltip="AGREGAR AL PEDIDO">
                                                        <i class="material-icons">add_shopping_cart</i>
                                                    </button>


                                                </div>
                                            </div>
                                            <div>
                                               La resina es ideal para exhibir objetos, como prototipos visuales, modelos o figuras, ya que es capaz de brindar detalles finos y una superficie lisa. Este fotopolímero se transforma de líquido a sólido después de una exposición precisa a la luz ultravioleta durante el proceso de impresión.
                                            </div>
                                        </div>
                                    </li>


                                </ul>
                                <!--inicio colapsable-->
                            </div>

                        </div>
                        <div class="col s12 l2">
                            <br />
                            <div class="card" style="width: 100%">
                                
                                <div class="card-content">
                                    <span class="card-title">Descuentos</span>
                                    Los descuentos por cantidad se aplican al final de la cotización.
                                    <br /><div style="font-size:smaller">+ de 50 unidades = 20%
                                    <br />+ de 100 unidades = 30%
                                        <br />+ de 200 unidades = 40%
                                        <br />+ de 300 unidades = 50%

                                          </div>
                                </div>
                            </div>

                              <br />
                            <div class="card" style="width: 100%">
                                
                                <div class="card-content">
                                    <span class="card-title">Tiempos</span>
                                    El tiempo de producción se acuerda al momento de la contratación.
                                </div>
                            </div>
                        </div>

                    </div>
            </div>
            <p class="left-align light"></p>
        </div>

        <!--fin contenedor-->
        <!-- inicio navr bar  -->


        <ul id="slide-out" class="sidenav" style="width: 450px; font-size: xx-small;">
            <li>
                <div class="user-view">
                    <div class="background">
                        <img src="background1.jpg" />
                    </div>

                </div>

            </li>

        </ul>

        <!-- Modal Structure -->


        <div id="modal1" class="modal" style="width:auto">
            <div class="modal-content"> 

                <div id="UpdatePanel1">
	

                        <div class="row" >
                             <h5>Cotización N°: [
                            <label id="lbl_ses" style="font-size: 22px; font-style: italic; color: black;">2309190237-59667</label>]</h5>

                        </div>
                        <div class="row">

<div class="col l12 s12">

                        <table id="myTable" style="width:auto">
                            <thead style="font-size: 3vmin;">
                                <tr>
                                    <th></th>
                                    <th>Archivo</th>
                                    <th>Cantidad</th>
                                    <th>Material</th>
                                    <th>Valor ($)</th>
                                    <th>Eliminar</th>
                                </tr>
                            </thead>

                            <tbody>





                                


                                        <tr style="font-size: 12px">
                                            <td><i class="material-icons Small">attachmenta</i></td>
                                            <td>Regleta 1.5_Cubierta.stl                                                                            </td>
                                            <td style="text-align: center">1         </td>
                                            <td style="text-align: center">RESINA    </td>
                                            <td style="text-align: center">$5,953.49</td>
                                            <td><a href="#!" class="waves-effect waves-green btn-flat" onclick="borrar_it9(1874,this)"><i class="material-icons small">delete</i></a>
                                                <!-- <a href="#!" class="waves-effect waves-green btn-flat" onclick="deleteRow(this)"> <i class="material-icons small">delete</i></a>-->
                                            </td>
                                        </tr>


                                    
                            </tbody>
                        </table>
                            
                            </div>
                           
                            <div class="col l2 s12" style="vertical-align:text-bottom">

                            <br /><br /><br /><a href="order.aspx" class="btn modal-close">Siguiente</a>
</div>
</div>
                    
</div>

            </div>
            <div class="modal-footer">
                
                <!--<input type="submit" name="btn_next" value="Siguiente" id="btn_next" />
        <input type="submit" name="btn_siguiente" value="Siguiente" id="btn_siguiente" class="btn" />-->
            </div>
        </div>

        <div id="modal_log" class="modal">
            <div class="modal-content">
                <div class="row">
                    <h6>Ingreso</h6>
                </div>


                <div class="row">
                    <div class="input-field col s12 l5">
                        <input name="email" id="email" type="email" class="validate" />
                        <label for="email">Usuario (Correo)</label>
                        <span class="helper-text" data-error="Ingrese una cuenta de correo valida" data-success="Perfecto">Ej.: contacto@j3darg.com</span>
                    </div>
                    <div class="input-field col s12 l5">
                        <input name="passs" id="passs" type="password" title="pass" class="validate" />
                        <label for="phone_number">Contraseña</label>
                        <span class="helper-text" data-error="Ingrese una cuenta de correo valida" data-success="Perfecto">Contraseña</span>
                    </div>
                    <div class="input-field col s12 l2 ">
                    </div>
                </div>





            </div>
            <div class="modal-footer">
                <input type="submit" name="ctl10" value="Registrarse" class="btn" />
                <input type="submit" name="ctl11" value="Cerrar Sesion" class="btn" />
                <input type="submit" name="btn_entrar" value="Entrar" id="btn_entrar" class="btn" />

            </div>
        </div>




        <div class="fixed-action-btn valign-wrapper card-panel" style="border-radius: 15px;border-width:5px;">

            <a href="#" data-target="modal1" onclick="UpdPanelUpdate('Value passed by javascript')" class="modal-trigger" style="color: #182f4a;"><i class="material-icons">shopping_basket</i></a>
            <input type="submit" name="button" value="" id="button" style="display: none;" />

            <span id="spancount" class="indigo-text text-darken-4 h6"></span>
            <span id="span_mensajes" class="indigo-text text-darken-4 h6"></span>



        </div>


        <!-- fin navr bar  -->


        <div class="parallax-container valign-wrapper">
            <div class="section no-pad-bot">
                <div class="container">
                    <div class="row center">
                        <h5 class="header col s12 light">algunos trabajos en imagenes</h5>
                    </div>
                </div>
            </div>
            <div class="parallax">
                <img src="img/cc5.jpg" /></div>
        </div>
        <div class="row">

            <div class="col s12">
                <div class="icon-block" id="galeria">
                    <h2 class="center brown-text"><i class="material-icons">image</i></h2>
                    <h5 class="center">Galería</h5>

                  <div class="row card-panel">
                      <div class="col card l3 s6"><img class="responsive-img" src="img/galeria/23.jpg" /></div>
                      <div class="col card l3 s6"><img class="responsive-img" src="img/galeria/19.jpg" /></div>
                       <div class="col card l3 s6"><img class="responsive-img" src="img/galeria/17.jpg" /></div>
                      <div class="col card l3 s6"><img class="responsive-img" src="img/galeria/20.jpg" /></div>  
                 </div>
                  <div class="row card-panel">
                      <div class="col card l3 s6"><img class="responsive-img" src="img/galeria/13.jpg" /></div>
                    <div class="col card l3 s6"><img class="responsive-img" src="img/galeria/15.jpg" /></div>
                      <div class="col card l3 s6"><img class="responsive-img" src="img/galeria/16.jpg" /></div>
                      <div class="col card l3 s6"><img class="responsive-img" src="img/galeria/21.jpg" /></div>  
                 </div>
                   <div class="row card-panel">
                      <div class="col card l3 s6"><img class="responsive-img" src="img/galeria/18.jpg" /></div>
                      <div class="col card l3 s6"><img class="responsive-img" src="img/galeria/22.jpg" /></div>
                      <div class="col card l3 s6"><img class="responsive-img" src="img/galeria/12.jpg" /></div>
                      <div class="col card l3 s6"><img class="responsive-img" src="img/galeria/25.jpg" /></div>
                 </div>
                    
                    
                </div>
            </div>

        </div>
        <footer class="page-footer teal">
            <div class="container">
                <div class="row">
                    <div class="col l6 s12" id="nosotros">
                        <h5 class="white-text">Nosotros</h5>
                        <p class="grey-text text-lighten-4">Siempre focalizados en la calidad, sin parar de crecer y contentos porque nuestros clientes vuelven.</p>


                    </div>
                    <div class="col l3 s12">
                        
                            
                           <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3283.5629613895844!2d-58.382787900000004!3d-34.61521129999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bccbcf27afb42b%3A0x6cff4391609e364!2sJ3D%20-%20Impresiones%203D!5e0!3m2!1ses-419!2sar!4v1656612780876!5m2!1ses-419!2sar" width="200" height="200" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

                       
                    </div>
                    <div class="col l3 s12">
                        <h5 class="white-text">Contacto</h5>
                        <ul>
                            <li><a class="white-text" href="https://www.instagram.com/j3darg/" target="_blank">Instagram</a></li>
                            <li><a class="white-text" href="mailto:contacto@j3darg.com" target="_blank">contacto@j3darg.com</a></li>
                            <li><a class="white-text" href="https://wa.me/+5491164791390" target="_blank">Whatsapp (+54.11.6479.1390)</a></li> 
                            <li><a class="white-text" href="https://goo.gl/maps/oPLPUAXXazXXHiky8" target="_blank">México 1173 [Of. 2] - C.A.B.A.</a></li>
                            <li><a class="white-text" href="#!">Lunes a Viernes: 9:00 a 19 / Sabados: 10:00 a 15:00</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="footer-copyright">
                <div class="container">
                    ©2022 - Todos los derechos reservados <a class="brown-text text-lighten-3" href="http://j3darg.com">J3D</a>
                </div>
            </div>
        </footer>
















    </form>
    
    <div id="drop">
        <div>
            <div class="card-panel pulse">
                <h5 class="center-align">Arrastre su archivo para subirlo</h5>
                <br />
                <i class="medium material-icons">save_alt</i>
            </div>
        </div>
    </div>
    
    <div id="confirm-modal" class="modal">
        <div class="modal-content">
            <h4>Impresión</h4>
            <i class="material-icons">help</i>
            <p>¿Está seguro de enviar a imprimir este modelo?</p>
        </div>
    </div>

    <!--  Scripts-->
    <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src="scripts/materialize.min.js"></script>
    <script src="Scripts/init.js"></script>



    <script type="text/javascript">
        $("body").on("click", "#agregaraa", function () {
            $.ajax({
                url: 'HandlerCS.ashx',
                type: 'POST',
                data: new FormData($('form')[0]),
                cache: false,
                contentType: false,
                processData: false,
                success: function (file) {
                    $("#fileProgress").hide();
                    //$("#lblMessage").html("<b>" + file.name + "</b> El item y el archivo se agregaron exitosamente al carrito.");
                },
                xhr: function () {
                    var fileXhr = $.ajaxSettings.xhr();
                    if (fileXhr.upload) {
                        $("progress").show();
                        fileXhr.upload.addEventListener("progress", function (e) {
                            if (e.lengthComputable) {
                                $("#fileProgress").attr({
                                    value: e.loaded,
                                    max: e.total
                                });
                            }
                        }, false);


                    }
                    return fileXhr;
                }
            });
        });
    </script>

    <script>
        function deleteRow(r) {
            var i = r.parentNode.parentNode.rowIndex;
            document.getElementById("myTable").deleteRow(i);
        }
    </script>
    <script>
        function borrar_it9(it_id, r) {

            var SendObj = {
                "id_item_pedido": it_id,
                "BrowserVersion": navigator.appVersion,
                "ses_id": $('#h_ses_id').val()

            }
            var stringData = JSON.stringify(SendObj);
            $.ajax({
                type: 'POST',
                url: 'MyWebService.asmx/srv_borrar_item',
                data: "{'newClass':" + stringData + "}",
                contentType: 'application/json; utf-8',
                dataType: 'json',
                success: function (data) {
                    if (data.d != null) {
                        $('#spancount').text("[" + decimalFmt.format(data.d) + "]");


                    }
                },
                error: function (jqXHR, textStatus, errorThrown) {
                }

            });

            var i = r.parentNode.parentNode.rowIndex;
            document.getElementById("myTable").deleteRow(i);
        };

    </script>

    <script>

        function agregar_item(material, color) {
            var combo = document.getElementById("colorABS");
            var selected = combo.options[combo.selectedIndex].text;


            switch (material) {
                case "PLA":
                    var span_Text = document.getElementById("value_PLA").textContent;
                    break;
                case "ABS":
                    var span_Text = document.getElementById("value_ABS").textContent;
                    break;
                case "PETG":
                    var span_Text = document.getElementById("value_PETG").textContent;
                    break;
                case "NYLON":
                    var span_Text = document.getElementById("value_NYLON").textContent;
                    break;
                case "FLEX":
                    var span_Text = document.getElementById("value_FLEX").textContent;
                    break;
                case "RESINA":
                    var span_Text = document.getElementById("value_RESINA").textContent;
                    break;
            }

            var val1 = span_Text.replace(/\./g, '');
            var valornuevo = val1.replace(/,/g, '.')
            var SendObj = {
                "BrowserName": $('#viewer-file').val(),
                "nombre_archivo": $('#viewer-file')[0].files[0].name,
                "ses_id": $('#h_ses_id').val(),
                "dimmm_x": $('#dimMM').text(),
                "valor_x": parseFloat(valornuevo),
                "relleno_x": $('#infill').val(),
                "cantidad_x": $('#cantidad').val(),
                "material_x": material,
                "color_x": color,
                "UserAgent": navigator.userAgent

            }

            if (color == "Seleccionar color") {
                $('#span_mensajes').text("[Por favor elija un color]")
                return;
            }

            var stringData = JSON.stringify(SendObj);
            $.ajax({
                type: 'POST',
                url: 'MyWebService.asmx/Insertar',
                data: "{'newClass':" + stringData + "}",
                contentType: 'application/json; utf-8',
                dataType: 'json',
                success: function (data) {
                    if (data.d != null) {
                        $('#spancount').text("[" + data.d + "]")
                        $('#span_mensajes').text("")
                        subir();
                    } else {
                        $('#span_mensajes').text("[El archivo ya existe, intente con otro]")

                    }
                    ;




                },
                error: function (jqXHR, textStatus, errorThrown) {
                }

            });
        };

        function subir() {
            $.ajax({
                url: 'HandlerCS.ashx',
                type: 'POST',
                data: new FormData($('form')[0]),
                cache: false,
                contentType: false,
                processData: false,
                success: function (file) {
                    $("#fileProgress").hide();
                    //$("#lblMessage").html("<b>" + file.name + "</b> El item y el archivo se agregaron exitosamente al carrito.");
                },
                xhr: function () {
                    var fileXhr = $.ajaxSettings.xhr();
                    if (fileXhr.upload) {
                        $("progress").show();
                        fileXhr.upload.addEventListener("progress", function (e) {
                            if (e.lengthComputable) {
                                $("#fileProgress").attr({
                                    value: e.loaded,
                                    max: e.total
                                });
                            }
                        }, false);


                    }
                    return fileXhr;
                }
            });
        };


    </script>

</body>
</html>
