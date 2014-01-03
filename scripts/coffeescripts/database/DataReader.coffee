#$.getJSON('data.php', function(data) {
#$.each(data, function(fieldName, fieldValue) {
#$("#" + fieldName).val(fieldValue);
#});
#});

getActivities = () ->
  console.log 'getActivities'
  $.getJSON 'php/database/activities.php', (data) =>
    data
  .fail () ->
      {}

getActivities()