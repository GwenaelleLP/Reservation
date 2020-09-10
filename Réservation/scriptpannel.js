function test(id) {
    if (confirm("Voulez-vous confirmer cette réservation ?")) {
        document.location = 'requete/validerrequete?id_resa=' + id;
    }
}
function annul(id) {
    if (confirm("Voulez-vous supprimer cette réservation ?")) {
        document.location = 'requete/supprequete?id_resa=' + id;
    }
}
document.getElementById("pan").addEventListener("click", function () {
    var url = new URL(window.location.href);
    var name = url.searchParams.get("admin");
    if (name !== 'pannel') {
        url.searchParams.delete("admin");
        document.location.href = window.location.href + "&admin=pannel";
    }
});
document.getElementById("pla").addEventListener("click", function () {
    var url = new URL(window.location.href);
    var name = url.searchParams.get("admin");
    if (name !== 'planning') {
        url.searchParams.delete("admin");
        document.location.href = window.location.href + "&admin=planning";
    }
});

// function modif(id){
//    $('#modal-modif').modal('show'); 
// }

