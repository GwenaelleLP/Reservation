<?php
if (!isset($_GET['site'])) {
    header('Location:index.php?site=nancy');
}
$dbh = new PDO("mysql:host=localhost;dbname=siteresa;charset=utf8", "root", "");
$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$dbh->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_OBJ);

$question = $dbh->prepare('SELECT*,s.salle  as nom_salle , f.nom as nom_prof, p.nom as nom_intervenant, p.prenom1 as prenom_intervenant
FROM resa as r, salle as s, fonction as f, kernel_bu_personnel as p
WHERE r.salle=s.id_salle AND f.id= r.service AND p.numero=r.intervenant AND campus="' . $_GET['site'] . '"');
$question->execute();
$petit = $dbh->prepare('SELECT*,s.salle  as nom_salle , f.nom as nom_prof, p.nom as nom_intervenant, p.prenom1 as prenom_intervenant
FROM resa as r, salle as s, fonction as f, kernel_bu_personnel as p
WHERE r.salle=s.id_salle AND f.id= r.service AND p.numero=r.intervenant AND campus="' . $_GET['site'] . '"');
$petit->execute();
?>

<link href='node_modules/fullcalendar/main.css' rel='stylesheet' />
<script src='node_modules/fullcalendar/main.js'></script>
<script src='moment.js'></script>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');

        var calendar = new FullCalendar.Calendar(calendarEl, {
            /*paramètres*/
            locale: "fr",
            initialView: 'timeGridWeek',
            <?php
            if (isset($_GET['date'])) {
                echo <<<INIDATE
                    initialDate:"$_GET[date]",
                INIDATE;
            }
            ?>
            slotEventOverlap: false, // evenement ne se chevauches pas
            allDaySlot: false, //ligne tous les jours supprimer
            slotMinTime: "7:00:00", // heure de début de l'affichage
            slotMaxTime: "20:00:00", //heure de fin de l'affichage
            expandRows: true,
            hiddenDays: [0, 6],
            editable: false,

            /*header*/
            headerToolbar: {
                left: 'prev,next today',
                center: 'title',
                right: 'timeGridWeek,timeGridDay'
            },
            buttonText: {
                today: 'Aujourd\'hui',
                month: 'Mois',
                week: 'Semaine',
                day: 'Jour'
            },

            /*****Select******** */
            selectable: true,

            select: function(info) {
                $('#ModalAdd #heuredeb').val(info.startStr.substring(11, 16));
                $('#ModalAdd #date').val(info.startStr.substring(0, 10));
                // $('#ModalAdd #heurefin').val(info.endStr.substring(11, 16));
                $('#ModalAdd #heurefin').val(info.endStr.substring(11, 16));

                $('#ModalAdd').modal('show');
            },

            /*****Evenements******/
            dayMaxEventRows: true, // for all non-TimeGrid views
            views: {
                timeGrid: {
                    dayMaxEventRows: 6 // adjust to 6 only for timeGridWeek/timeGridDay
                }
            },
            events: [{
                    title: 'Récup le nom de la salle </br>test',
                    start: "2020-09-04T10:30:00", //Récup date heure de début sous format YY-MM-DDTHH:MM:SS
                    end: "2020-09-04T12:30:00", //Récup date heure de début sous format YY-MM-DDTHH:MM:SS
                    color: 'red',
               },
                {
                    title: 'Récup le nom de la salle',
                    start: "2020-09-01T10:30:00", //Récup date heure de début sous format YY-MM-DDTHH:MM:SS
                    end: "2020-09-01T15:30:00", //Récup date heure de début sous format YY-MM-DDTHH:MM:SS
                    color: 'orange',
                },
                <?php
                while ($event = $question->fetch(PDO::FETCH_ASSOC)) {
                    echo <<<EVENT
                    {
                    title: 'Salle : $event[nom_salle]',
                    start: "$event[date_utilisation]T$event[heure_debut]", 
                    end: "$event[date_utilisation]T$event[heure_fin]", 
                    extendedProps: {
                        intervenant: "$event[nom_intervenant] $event[prenom_intervenant]",
                        theme :"$event[theme]",
                      },
                   color:'
                   EVENT;
                    if ($event['etat'] == 2) {
                        echo 'red';
                    } elseif ($event['etat'] == 1) {
                        echo 'orange';
                    }

                    echo "'
                    },";
                }
                ?>
            ],

            /*****Affichage interieur évènements ********/
            eventDidMount: function(info) {
                if (info.view.type === "listMonth") {
                    return;
                }
                let eventEl = info.el.querySelector(".fc-event-title-container");
                let eventInt = info.event.extendedProps.intervenant;
                let eventTheme = info.event.extendedProps.theme;

                let link = document.createElement("a");
                link.innerHTML = 'Intervenant : ' + eventInt + '</br> Thème : ' + eventTheme;
                link.classList.add("float-left");
                eventEl.appendChild(link);
            }
        });
        calendar.render();
    });


    /**********Petit calendrier */
    document.addEventListener('DOMContentLoaded', function() {
        var calendarEl2 = document.getElementById('littlecalendar');

        var calendar2 = new FullCalendar.Calendar(calendarEl2, {
            locale: 'fr',
            // aspectRatio: 4,
            slotEventOverlap: false, // evenement ne se chevauches pas
            allDaySlot: false, //ligne tous les jours supprimer
            expandRows: true,
            firstDay: 1,
            editable: false,
            businessHours: true,
            height: 'auto',
            titleFormat: { // will produce something like "Tuesday, September 18, 2018"
                month: 'long',
                year: 'numeric',
            },
            dayHeaderFormat: {
                weekday: 'narrow'
            },
            headerToolbar: {
                left: 'today prev,next',
                center: 'title',
                right: ''
            },
            buttonText: {
                today: 'Aujourd\'hui'
            },
            selectable: true,
            select: function(info) {
                var dateurl = info.startStr.substring(0, 10);
                document.location.href = document.location.href + "&date=" + dateurl;
                // var url = window.location.protocol + "//" + window.location.host + window.location.pathname;
            },
            events: [
                <?php
                while ($events = $petit->fetch(PDO::FETCH_ASSOC)) {
                    echo <<<EVENT
                    {
                    start: '$events[date_utilisation]', 
                    end: '$events[date_utilisation]',
                    overlap: false,  
                    display: 'background', color: '#17a2b8'},
                   EVENT;
                }

                ?>
            ]
        });
        calendar2.render();
    });
</script>