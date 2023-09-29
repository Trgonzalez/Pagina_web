var stlViewer, progress, cameraState, modelLoaded = false, display = 'flat', prevX, prevY, prevZ, scale, infill = 1;

//Formateador de números
const inchConv = .0393701;
const decimalFmt = new Intl.NumberFormat('es-AR', {
    style: 'decimal',
    useGrouping: true,
    minimumFractionDigits: 0,
    maximumFractionDigits: 2
});
const currencyFmt = new Intl.NumberFormat('es-AR', {
    style: 'decimal',
    useGrouping: true,
    minimumFractionDigits: 2,
    maximumFractionDigits: 2
});

$(function () {
    //Materialize
    $('.dropdown-trigger').dropdown();
    $('#material').formSelect();
    $('#colorABS').formSelect();
    $('#colorPLA').formSelect();
    $('#colorPETG').formSelect();
    $('#colorNYLON').formSelect();
    $('#colorFLEX').formSelect();
    $('#colorRESINA').formSelect();
    $('[data-tooltip]').tooltip();
    $('.modal').modal();
    $('.modal1').modal();
    progress = $('#viewer-panel .progress > div');

    //Drag&Drop
    $('body').on('dragenter', function (evt) {
        evt.preventDefault();
        $('#drop').fadeIn();
    });
    $('#drop').on('dragleave', function () {
        $('#drop').fadeOut();
    }).on('drop', function (evt) {
        $('#drop').fadeOut();
        if (typeof evt.dataTransfer === 'undefined')
            $('#viewer-file')[0].files = evt.originalEvent.dataTransfer.files;
        else
            $('#viewer-file')[0].files = evt.dataTransfer.files;
        loadModel();
        evt.preventDefault();
    }).on('dragover', function (evt) {
        evt.preventDefault();
    });

    //Objeto para visualizar el OBJ y STL
    stlViewer = new StlViewer($('#viewer')[0], { allow_drag_and_drop: false });
    stlViewer.on_model_drop = function () {
        $('#loading').show();
        cleanScene();
    }
    stlViewer.model_loaded_callback = function () {
        cameraState = stlViewer.get_camera_state();
        prevX = prevY = prevZ = 0;
        updateInfo();
        $('#loading').hide();
    }
    stlViewer.load_error_callback = function () {
        $('#loading').hide();
        M.toast({ html: 'Ha ocurrido un error al leer el archivo' });
    }

    //Selección de archivo
    $('#viewer-file').change(loadModel);

    //Selector de color del objeto
    var foreground = new Huebee('#foreground', { notation: 'hex', saturations: 2 });
    foreground.on('change', function (color, hue, sat, lum) {
        if (modelLoaded)
            stlViewer.set_color(1, color);
    })
    $('#select-foreground').click(function () { foreground.open(); return false; });

    //Selector de colores del fondo
    var background = new Huebee('#background', { notation: 'hex', saturations: 2 });
    background.on('change', function (color, hue, sat, lum) {
        $('#viewer-panel').css('background-color', color);
    })
    $('#select-background').click(function () { background.open(); return false; });

    //Borde
    $('#edges').change(function () {
        if (modelLoaded)
            stlViewer.set_edges(1, $('#edges').is(':checked'));
    });

    //Rotación
    $('#rotate').change(function () {
        if (modelLoaded)
            stlViewer.set_auto_rotate($('#rotate').is(':checked'));
    });

    //Escala
    $('#scale')
        .keypress(function (event) { //Desktop
            if (!isNumber(event))
                event.preventDefault();
        })
        .keyup(function () {
            const val = parseFloat($(this).val());
            if (isNaN(val))
                $(this).val('1');
            else if (val < .1)
                $(this).val('0.01');
            else if (val > 999999)
                $(this).val('999999');
            scale = parseFloat($(this).val());
            stlViewer.set_scale(1, scale);
            updateInfo();
        })
        .change(function () {
            scale = parseFloat($(this).val());
            stlViewer.set_scale(1, scale);
            updateInfo();
        })
        .on( //Mobile
            'input change paste',
            function (event) {
                var formControl;
                formControl = $(event.target);
                formControl.val(formControl.val().replace(/[^0-9\.]+/g, ''));
            }
        );

    //Envío
    $('#send').click(prevSend);
});

/**Muestra la información del objeto */
function updateInfo() {
    var modelData = stlViewer.get_model_info(1);
    var divisor = 1000;
    var infill2 = ($('#infill').val() / 100);
    var const20 = 0.5;
    var dol = parseFloat($('#dola').val());
    var mm3_abs = parseFloat($('#mm3_abs').val());
    var mm3_pla = parseFloat($('#mm3_pla').val());
    var mm3_petg = parseFloat($('#mm3_petg').val());
    var mm3_nylon = parseFloat($('#mm3_nylon').val());
    var mm3_flex = parseFloat($('#mm3_flex').val());
    var mm3_resina = parseFloat($('#mm3_resina').val());

    var conversion = dol;
    var espesor_paredes = 1;
    var volumen_a = modelData.volume / divisor;
    var area_a = modelData.area / divisor;
    var paredes = area_a * espesor_paredes;
    var dens = 1.24;
    var grs = (((volumen_a - paredes) * infill2) + paredes) * dens;
    var cantidad = $('#cantidad').val()
    var price = parseFloat($('#material option:selected').attr('data-price'));
      $('#volMM').text(decimalFmt.format(volumen_a));
    $('#areaMM').text(decimalFmt.format(area_a));
      $('#dimMM').text(decimalFmt.format(modelData.dims.x * modelData.scale.x) + ' x ' +
        decimalFmt.format(modelData.dims.y * modelData.scale.y) + ' x ' +
        decimalFmt.format(modelData.dims.z * modelData.scale.z));
    $('#volInch').text(decimalFmt.format((modelData.volume/divisor) * inchConv));
    $('#areaInch').text(decimalFmt.format((modelData.area / divisor) * inchConv));
    $('#dimInch').text(decimalFmt.format(modelData.dims.x * modelData.scale.x * inchConv) + ' x ' +
        decimalFmt.format(modelData.dims.y * modelData.scale.y * inchConv) + ' x ' +
        decimalFmt.format(modelData.dims.z * modelData.scale.z * inchConv));
    $('#triangles').text(decimalFmt.format(modelData.triangles));
    $('#archivo').text($('#viewer-file')[0].files[0].name)
// $('#value').text(currencyFmt.format((grs * parseFloat($('#color option:selected').attr('data-price'))*cantidad)));

    if (volumen_a < 100) {
        var ABS = (volumen_a * (const20 + infill2) * cantidad * (mm3_abs * conversion) + 300)
    }
    else if (volumen_a > 100 && volumen_a < 200) {
        var ABS = (((volumen_a * (const20 + infill2) * cantidad * (mm3_abs * conversion) + 300)) * 0.80)
    }
    else if (volumen_a > 200 && volumen_a < 300) {
            var ABS = (((volumen_a * (const20 + infill2) * cantidad * (mm3_abs * conversion) + 300)) * 0.70)
    }
    else if (volumen_a > 300 && volumen_a < 400) {
        var ABS = (((volumen_a * (const20 + infill2) * cantidad * (mm3_abs * conversion) + 300)) * 0.60)
    }
    else if (volumen_a > 400 && volumen_a < 500) {
        var ABS = (((volumen_a * (const20 + infill2) * cantidad * (mm3_abs * conversion) + 300)) * 0.50)
    }
    else if (volumen_a > 500 && volumen_a < 1000) {
        var ABS = (((volumen_a * (const20 + infill2) * cantidad * (mm3_abs * conversion) + 300)) * 0.45)
    }
       else if (volumen_a > 1000) {
        var ABS = (((volumen_a * (const20 + infill2) * cantidad * (mm3_abs * conversion) + 300)) * 0.35)
    };
        
    if (volumen_a < 100) {
        var PLA = (volumen_a * (const20 + infill2) * cantidad * (mm3_pla * conversion) + 300)
    }
    else if (volumen_a > 100 && volumen_a < 200) {
        var PLA = (((volumen_a * (const20 + infill2) * cantidad * (mm3_pla * conversion) + 300)) * 0.80)
    }
    else if (volumen_a > 200 && volumen_a < 300) {
        var PLA = (((volumen_a * (const20 + infill2) * cantidad * (mm3_pla * conversion) + 300)) * 0.70)
    }
    else if (volumen_a > 300 && volumen_a < 400) {
        var PLA = (((volumen_a * (const20 + infill2) * cantidad * (mm3_pla * conversion) + 300)) * 0.60)
    }
    else if (volumen_a > 400 && volumen_a < 500) {
        var PLA = (((volumen_a * (const20 + infill2) * cantidad * (mm3_pla * conversion) + 300)) * 0.50)
    }
    else if (volumen_a > 500 && volumen_a < 1000) {
        var PLA = (((volumen_a * (const20 + infill2) * cantidad * (mm3_pla * conversion) + 300)) * 0.50)
    } 
      else if (volumen_a > 1000) {
        var PLA = (((volumen_a * (const20 + infill2) * cantidad * (mm3_pla * conversion) + 300)) * 0.35)
    }; 

    if (volumen_a < 100) {
        var PETG = (volumen_a * (const20 + infill2) * cantidad * (mm3_petg * conversion) + 300)
    }
    else if (volumen_a > 100 && volumen_a < 200) {
        var PETG = (((volumen_a * (const20 + infill2) * cantidad * (mm3_petg * conversion) + 300)) * 0.80)
    }
    else if (volumen_a > 200 && volumen_a < 300) {
        var PETG = (((volumen_a * (const20 + infill2) * cantidad * (mm3_petg * conversion) + 300)) * 0.70)
    }
    else if (volumen_a > 300 && volumen_a < 400) {
        var PETG = (((volumen_a * (const20 + infill2) * cantidad * (mm3_petg * conversion) + 300)) * 0.60)
    }
    else if (volumen_a > 400 && volumen_a < 500) {
        var PETG = (((volumen_a * (const20 + infill2) * cantidad * (mm3_petg * conversion) + 300)) * 0.50)
    }
    else if (volumen_a > 500 && volumen_a < 1000) {
        var PETG = (((volumen_a * (const20 + infill2) * cantidad * (mm3_petg * conversion) + 300)) * 0.45)
    }
        else if (volumen_a > 1000) {
        var PETG = (((volumen_a * (const20 + infill2) * cantidad * (mm3_petg * conversion) + 300)) * 0.35)
    };
    
    if (volumen_a < 100) {
        var NYLON = (volumen_a * (const20 + infill2) * cantidad * (mm3_nylon * conversion) + 300)
    }
    else if (volumen_a > 100 && volumen_a < 200) {
        var NYLON = (((volumen_a * (const20 + infill2) * cantidad * (mm3_nylon * conversion) + 300)) * 0.80)
    }
    else if (volumen_a > 200 && volumen_a < 300) {
        var NYLON = (((volumen_a * (const20 + infill2) * cantidad * (mm3_nylon * conversion) + 300)) * 0.70)
    }
    else if (volumen_a > 300 && volumen_a < 400) {
        var NYLON = (((volumen_a * (const20 + infill2) * cantidad * (mm3_nylon * conversion) + 300)) * 0.60)
    }
    else if (volumen_a > 400 && volumen_a < 500) {
        var NYLON = (((volumen_a * (const20 + infill2) * cantidad * (mm3_nylon * conversion) + 300)) * 0.50)
    }
    else if (volumen_a > 500 && volumen_a < 1000) {
        var NYLON = (((volumen_a * (const20 + infill2) * cantidad * (mm3_nylon * conversion) + 300)) * 0.45)
    }
        else if (volumen_a > 1000) {
        var NYLON = (((volumen_a * (const20 + infill2) * cantidad * (mm3_nylon * conversion) + 300)) * 0.35)
    };

    if (volumen_a < 100) {
        var FLEX = (volumen_a * (const20 + infill2) * cantidad * (mm3_flex * conversion) + 300)
    }
    else if (volumen_a > 100 && volumen_a < 200) {
        var FLEX = (((volumen_a * (const20 + infill2) * cantidad * (mm3_flex * conversion) + 300)) * 0.80)
    }
    else if (volumen_a > 200 && volumen_a < 300) {
        var FLEX = (((volumen_a * (const20 + infill2) * cantidad * (mm3_flex * conversion) + 300)) * 0.70)
    }
    else if (volumen_a > 300 && volumen_a < 400) {
        var FLEX = (((volumen_a * (const20 + infill2) * cantidad * (mm3_flex * conversion) + 300)) * 0.60)
    }
    else if (volumen_a > 400 && volumen_a < 500) {
        var FLEX = (((volumen_a * (const20 + infill2) * cantidad * (mm3_flex * conversion) + 300)) * 0.50)
    }
    else if (volumen_a > 500) {
        var FLEX = (((volumen_a * (const20 + infill2) * cantidad * (mm3_flex * conversion) + 300)) * 0.45)
    }; 

    if (volumen_a < 100) {
        var RESINA = (volumen_a * (const20 + infill2) * cantidad * (mm3_resina * conversion) + 300)
    }
    else if (volumen_a > 100 && volumen_a < 200) {
        var RESINA = (((volumen_a * (const20 + infill2) * cantidad * (mm3_resina * conversion) + 300)) * 0.80)
    }
    else if (volumen_a > 200 && volumen_a < 300) {
        var RESINA = (((volumen_a * (const20 + infill2) * cantidad * (mm3_resina * conversion) + 300)) * 0.70)
    }
    else if (volumen_a > 300 && volumen_a < 400) {
        var RESINA = (((volumen_a * (const20 + infill2) * cantidad * (mm3_resina * conversion) + 300)) * 0.60)
    }
    else if (volumen_a > 400 && volumen_a < 500) {
        var RESINA = (((volumen_a * (const20 + infill2) * cantidad * (mm3_resina * conversion) + 300)) * 0.50)
    }
    else if (volumen_a > 500) {
        var RESINA = (((volumen_a * (const20 + infill2) * cantidad * (mm3_resina * conversion) + 300)) * 0.45)
    }; 

    
    var ABS = grs*7.5*10;
    var RESINA = volumen_a*31*10;

 
    $('#value_ABS').text(ABS.toLocaleString('de-DE', { minimumFractionDigits: 2, maximumFractionDigits: 2 }));
    $('#value_PLA').text(PLA.toLocaleString('de-DE', { minimumFractionDigits: 2, maximumFractionDigits: 2 }));
    $('#value_PETG').text(PETG.toLocaleString('de-DE', { minimumFractionDigits: 2, maximumFractionDigits: 2 }));
    $('#value_NYLON').text(NYLON.toLocaleString('de-DE', { minimumFractionDigits: 2, maximumFractionDigits: 2 }));
    $('#value_FLEX').text(FLEX.toLocaleString('de-DE', { minimumFractionDigits: 2, maximumFractionDigits: 2 }));
    $('#value_RESINA').text(RESINA.toLocaleString('de-DE', { minimumFractionDigits: 2, maximumFractionDigits: 2 }));
    $('#model-data').slideDown();
    
}

/**
 * Establece cómo debe visualizarse el objeto
 * @param {string} format Formato
 */
function setDisplay(format) {
    var desc;
    switch (format) {
        case 0:
            display = 'flat';
            desc = 'plana';
            break;
        case 1:
            display = 'smooth';
            desc = 'suavizada';
            break;
        case 2:
            display = 'wireframe';
            desc = 'estructura';
            break;
        default:
            return;
    }

    $('#display-format span').text(desc);
    if (modelLoaded)
        stlViewer.set_display(1, display);
}

/**
 * Establece la rotación del objeto
 * @param {string} position Posición del objeto
 */
function setRotate(position) {
    const halfPi = Math.PI / 2;
    if (modelLoaded) {
        var x, y, z;
        switch (position) {
            case 'front':
                x = y = z = 0;
                break;
            case 'top':
                x = halfPi;
                y = z = 0;
                break;
            case 'down':
                x = -halfPi;
                y = z = 0;
                break;
            case 'back':
                y = Math.PI;
                x = z = 0;
                break;
            case 'right':
                y = -halfPi;
                x = z = 0;
                break;
            case 'left':
                y = halfPi;
                x = z = 0;
                break;
            default:
                return;
        }
        stlViewer.set_camera_state(cameraState);
        stlViewer.rotate(1, x - prevX, y - prevY, z - prevZ);
        prevX = x;
        prevY = y;
        prevZ = z;
    }
}

/**Limpia los objetos de la escena */
function cleanScene() {
    if (modelLoaded) {
        stlViewer.set_edges(1, false);
        stlViewer.remove_model(1);
        stlViewer.set_camera_state(cameraState);
    }
}

/**
 * Se fija si la tecla pulsada es de un número o un punto
 * @param {any} evt Evento
 */
function isNumber(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode == 8 || charCode == 46)
        return true;
    if (charCode < 48 || charCode > 57)
        return false;
    return true;
}

/**Lee el archivo seleccionado por el usuario */
function loadModel() {
    $('#loading').show();
    cleanScene();
    stlViewer.add_model({
        id: 1,
        local_file: $('#viewer-file')[0].files[0],
        color: $('#color-input').val(),
        view_edges: $('#edges').is(':checked'),
        units: 'mm',
        display: display
    });
    modelLoaded = true;
}


function prevSend() {
    if ($('#viewer-file').val() === '')
        M.toast({ html: 'Primero debe seleccionar un archivo' });
    else
        $('#confirm-modal').modal('open');
}


/**Envía todo al siguiente paso */
function send() {
    var modelData = stlViewer.get_model_info(1);
    var price = parseFloat($('#material option:selected').attr('data-price'));
    $('input[name=price]').val(modelData.volume * price);
    $('input[name=area]').val(modelData.area);
    $('input[name=volume]').val(modelData.volume);
    $('input[name=scale]').val(scale);
    $('input[name=infill]').val(infill);
    $('input[name=x]').val(modelData.dims.x * modelData.scale.x);
    $('input[name=y]').val(modelData.dims.y * modelData.scale.y);
    $('input[name=z]').val(modelData.dims.z * modelData.scale.z);
    $('#form').attr({
        action: 'Step2.aspx',
        method: 'post',
        enctype: 'multipart/form-data'
    }).submit();

   
// Obtén una referencia al botón de mostrar modal y al modal
var mostrarModalBtn = document.getElementById('mostrarModalBtn');
var miModal = document.getElementById('miModal');

// Agrega un evento de clic al botón para abrir el modal
mostrarModalBtn.addEventListener('click', function() {
    miModal.style.display = 'block';
});

// Obtén una referencia al botón de cierre del modal
var cerrarModal = document.getElementById('cerrarModal');

// Agrega un evento de clic al botón de cierre para cerrar el modal
cerrarModal.addEventListener('click', function() {
    miModal.style.display = 'none';
});



    






}