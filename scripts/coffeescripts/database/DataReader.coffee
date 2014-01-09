
getActivities = () ->
  console.log 'getActivities'
  $.getJSON 'php/database/activities.php', (data) =>
    data
  .fail () ->
      {}

getTrackers = () ->
  console.log 'getTrackers'
  $.getJSON 'php/database/trackers.php', (data) =>
    data
  .fail () ->
      {}

getActivities()