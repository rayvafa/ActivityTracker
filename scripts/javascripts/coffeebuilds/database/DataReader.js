(function() {
  var getActivities;

  getActivities = function() {
    var _this = this;
    console.log('getActivities');
    return $.getJSON('php/database/activities.php', function(data) {
      return data;
    }).fail(function() {
      return {};
    });
  };

  getActivities();

}).call(this);
