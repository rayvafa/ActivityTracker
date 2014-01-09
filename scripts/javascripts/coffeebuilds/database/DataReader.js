(function() {
  var getActivities, getTrackers;

  getActivities = function() {
    var _this = this;
    console.log('getActivities');
    return $.getJSON('php/database/activities.php', function(data) {
      return data;
    }).fail(function() {
      return {};
    });
  };

  getTrackers = function() {
    var _this = this;
    console.log('getTrackers');
    return $.getJSON('php/database/trackers.php', function(data) {
      return data;
    }).fail(function() {
      return {};
    });
  };

  getActivities();

}).call(this);
