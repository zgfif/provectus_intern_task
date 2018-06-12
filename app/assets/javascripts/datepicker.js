// $('.datepicker').datepicker({
//     // format: 'mm/dd/yyyy',
//     format: 'yyyy-mm-dd',
//     startDate: '-3d'
// });


// $('#datetimepicker').datepicker({
//   format: 'yyyy-mm-dd'
// })
// $(document).ready(function(){
//     $('.datepicker').datepicker({
//     	format: 'yyyy-mm-dd',
//     	autoclose: true,
//     	todayHighlight: true
//     });
//   });

$( document ).on('turbolinks:load', function() {
  // your code
   $('.datepicker').datepicker({
    	format: 'yyyy-mm-dd',
    	autoclose: true,
    	todayHighlight: true
    });
});