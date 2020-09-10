<?php
// if (!isset($_GET['site'])) {
// header('Location:index.php?site=nancy');
// }
$dbh = new PDO("mysql:host=localhost;dbname=siteresa;charset=utf8", "root", "");
$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$dbh->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_OBJ);

$question = $dbh->prepare('SELECT*,s.salle  as nom_salle , f.nom as nom_prof, p.nom as nom_intervenant, p.prenom1 as prenom_intervenant
FROM resa as r, salle as s, fonction as f, kernel_bu_personnel as p
WHERE r.salle=s.id_salle AND f.id= r.service AND p.numero=r.intervenant AND campus="' . $_GET['site'] . '"');
$question->execute();

?>
<!DOCTYPE html>
<html lang='en'>

<head>
  <meta charset='utf-8' />
  <link href='node_modules/fullcalendar/main.css' rel='stylesheet' />
  <script src='node_modules/fullcalendar/main.js'></script>
  <script>
    document.addEventListener('DOMContentLoaded', function() {
      var calendarEl2 = document.getElementById('littlecalendar');

      var calendar2 = new FullCalendar.Calendar(calendarEl2, {
        locale: 'fr',
        aspectRatio: 4,
        slotEventOverlap: false, // evenement ne se chevauches pas
        allDaySlot: false, //ligne tous les jours supprimer
        expandRows: true,
        firstDay: 1,
        editable: false,
        businessHours: true,
        initialView: 'timeGridWeek',
        height: 'auto',

        slotEventOverlap: false, // evenement ne se chevauches pas
        allDaySlot: false, //ligne tous les jours supprimer
        slotMinTime: "7:00:00", // heure de début de l'affichage
        slotMaxTime: "20:00:00", //heure de fin de l'affichage
        expandRows: true,
        hiddenDays: [0, 6],
        editable: false,
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
          right: 'timeGridWeek,timeGridDay'
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
        // events: [

        //   // <?php
                //   // while ($event = $question->fetch(PDO::FETCH_ASSOC)) {
                //   //   echo <<<EVENT
                //   //             {
                //   //             start: '$event[date_utilisation]', 
                //   //             end: '$event[date_utilisation]', 
                //   //             overlap: false,  
                //   //             display: 'background'},
                //   //            EVENT;
                //   // }

                //   // 
                ?>
        // ]
        events: [{
            title: 'BCH237',
            start: '2020-09-02T10:30:00',
            end: '2020-09-02T13:30:00',
            extendedProps: {
              department: 'BioChemistry'
            },
            description: 'Lecture'
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
        eventDidMount: function(info) {
          if (info.view.type === "listMonth") {
            return;
          }
          let eventEl = info.el.querySelector(".fc-event-title-container");
          let eventInt = info.event.extendedProps.intervenant;
          let eventTheme = info.event.extendedProps.theme;

          let link = document.createElement("a");
          link.innerHTML = 'Intervenant : '+eventInt +'</br> Thème : '+eventTheme;
          link.classList.add("float-right");
          eventEl.appendChild(link);
        }
      });
      calendar2.render();
    });
  </script>
  <!-- <script>
    document.addEventListener('DOMContentLoaded', function() {
      var calendarEl = document.getElementById('calendar');

      var calendar = new FullCalendar.Calendar(calendarEl, {
        /*paramètres*/
        locale: "fr",
        // initialView: 'timeGridWeek',
        // plugins: ["timeGridPlugin"],
        // defaultView: "timeGridWeek",
        // eventTextColor: "red",
        // eventBorderColor: "blue",
        eventBackgroundColor:'#378006',
        slotEventOverlap: false,
        /* evenement ne se chevauches pas*/
        allDaySlot: false,
        /* ligne tous les jours supprimer*/
        slotMinTime: "8:00:00",
        /* heure de début de l'affichage*/
        slotMaxTime: "19:00:00",
        /*heure de fin de l'affichage*/
        expandRows: true,
        hiddenDays: [0, 6],
        /*header*/
        headerToolbar: {
          left: 'prev,next today',
          center: 'title',
          right: 'dayGridMonth,timeGridWeek,timeGridDay'
        },

        events: [{

            title: 'Récup le nom de la salle',
            start: "2020-09-01T10:30:00", //Récup date heure de début sous format YY-MM-DDTHH:MM:SS
            end: "2020-09-01T12:30:00" ,//Récup date heure de début sous format YY-MM-DDTHH:MM:SS
            // display: 'background',
            // overlap: false,
            //     rendering: 'background',
                color: '#ff9f89'
          },
          {
            title:'test BG',
        start: '2020-09-01T10:00:00',
        end: '2020-09-01T16:00:00',
        // display: 'background',
        // color: '#ff9f89'
      },
          {
            title: 'Récup le nom de la salle',
            start: "2020-09-04T10:30:00", //Récup date heure de début sous format YY-MM-DDTHH:MM:SS
            end: "2020-09-04T15:30:00", //Récup date heure de début sous format YY-MM-DDTHH:MM:SS
            overlap: false,
                display: 'background',
                color: '#ff9f89'
          },
          <?php
          // while ($event = $question->fetch(PDO::FETCH_ASSOC)) {
          //   echo <<<EVENT
          //           {
          //           title: 'Salle : $event[nom_salle]',
          //           start: "$event[date_utilisation]T$event[heure_debut]", 
          //           end: "$event[date_utilisation]T$event[heure_fin]"},
          //          EVENT;
          // }
          ?>
        ],
        // eventColor: '#378006',
        eventBackgroundColor:'#378006',
      });
      calendar.render();
    });
  </script> -->

</head>

<body>
  <div id='littlecalendar'></div>
</body>


</html>