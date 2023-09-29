$(document).ready(function () {

    $('#LlamadaServicio').click(function () {
        
        $.ajax({
            type: 'POST',
            url: 'http://107.180.0.90/plesk-site-preview/j3darg.com/MyWebService.asmx/HolaServicio',
            // data:"",
            data: "{'Usuario':'" + "Roy Cruz" + "'}",
            contentType: 'application/json; utf-8',
            dataType: 'json',
            success: function (data) {
                if (data.d != null) {
                    alert(data.d);
                }
            },
            error: function (jqXHR, textStatus, errorThrown) {
            }

        });
    });

    $('#ServicioHora').click(function () {

        $.ajax({
            type: 'POST',
            url: 'http://107.180.0.90/plesk-site-preview/j3darg.com/MyWebService.asmx/EnviarHora',
            data: "{}",
            contentType: 'application/json; utf-8',
            dataType: 'json',
            success: function (data) {
                if (data.d != null) {
                    alert("La hora es: " + data.d.Date + " gracias " + data.d.UserName);
                }
            },
            error: function (jqXHR, textStatus, errorThrown) {
            }

        });
    });

    

    $('#agregaryy').click(function () {

        var SendObj = {
            "BrowserName": $('#viewer-file').val(),
            "nombre_archivo": $('#viewer-file')[0].files[0].name,
            "ses_id": $('#h_ses_id').val(),
            "dimmm": $('#dimMM').text(),
            "UserAgent": navigator.userAgent
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
                    $('#spancount').text("[" + decimalFmt.format(data.d) + "]");


                }
            },
            error: function (jqXHR, textStatus, errorThrown) {
            }

        });
    });

    $('#btn_ups').click(function () {

        var SendObj = {
            "BrowserName": $('#viewer-file').val(),
            "nombre_archivo": $('#viewer-file')[0].files[0].name,
            "BrowserVersion": navigator.appVersion,
            "UserAgent": navigator.userAgent
        }
        var stringData = JSON.stringify(SendObj);
        $.ajax({
            type: 'POST',
            url: 'MyWebService.asmx/alta_pedido',
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
    });

    
});

