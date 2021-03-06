// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require materialize
//= require activestorage
//= require_tree .

function abilitaRitorno() {
    var ischecked = document.getElementById("voli_check").checked;
    var dataritorno = document.getElementById("dataRitorno");
    dataritorno.disabled = !ischecked;
}

$(document).ready(function() {
    M.updateTextFields();
    $('.dropdown-trigger').dropdown();
    $('.tabs').tabs();
    $('select').formSelect();
    $('.tooltipped').tooltip();
    
    var dates = document.querySelectorAll('.datepicker');
    M.Datepicker.init(dates, {
        autoClose: true,
        format: 'dd-mm-yyyy',
        defaultDate: new Date(),
        setDefaultDate: true,
        firstDay: 1,
        i18n: {
            cancel: "Indietro",
            clear: "Cancella",
            months: ["Gennaio", "Febbraio", "Marzo", "Aprile", "Maggio", "Giugno", "Luglio", "Agosto", "Settembre", "Ottobre", "Novembre", "Dicembre"],
            monthsShort: ["Gen", "Feb", "Mar", "Apr", "Mag", "Giu", "Lug", "Ago", "Set", "Ott", "Nov", "Dic"],
            weekdays: ["Domenica", "Lunedì", "Martedì", "Mercoledì", "Giovedì", "Venerdì", "Sabato"],
            weekdaysShort: ["Dom", "Lun", "Mar", "Mer", "Gio", "Ven", "Sab"],
            weekdaysAbbrev: ["D", "L", "M", "M", "G", "V", "S"]
        }
    });

    $("#roletype").on("change", function() {
        var oauth = document.getElementById("oauthauthentication");
        var checked = document.getElementById("roletype");
        if(checked.checked) oauth.style.display="none";
        else oauth.removeAttribute("style");
    });

});
