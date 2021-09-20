(function setupOnAppointmentDateChange() {
  document.getElementById('appointment_date').addEventListener('change', function(event) {
    window.location = `${window.location.origin}${window.location.pathname}?appointment_date=${event.target.value}`
  });
})();