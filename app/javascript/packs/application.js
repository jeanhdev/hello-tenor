import "bootstrap";

import 'mdbootstrap/js/addons/datatables';
import 'mdbootstrap/css/addons/datatables.css';
import { initCounter } from '../components/init_counter';
import  '../components/autocomplete';

$(document).ready(function () {
  $('.dtBasicSort').DataTable({
    "language": {
      "lengthMenu": "Afficher _MENU_ résultats par page",
      "zeroRecords": "Pas de résultat",
      "info": "Page _PAGE_ sur _PAGES_",
      "infoEmpty": "Pas de résultat disponible",
      "infoFiltered": "(filtrés parmis _MAX_ résultats totals)",
      "search": "Rechercher:",
      "paginate": {
        "first": "Début",
        "last": "Fin",
        "next": "Suivant",
        "previous": "Précédent"
      },
    }
  });
  $('.dataTables_length').addClass('bs-select');
});

initCounter();
