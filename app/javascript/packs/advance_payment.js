$(function() {
  $('#advance-payments-table').on('click', '.delete-advance', function(e) {
    e.preventDefault();

    var row = $(this).closest('tr');
    var id = $(this).data('id');

    $.ajax({
      url: '/advance_payment/' + id + '/delete',
      method: 'DELETE',
      dataType: 'json'
    })
    .done(function(data) {
      if (data.success) {
        row.remove();
      } else {
        alert('Failed to delete advance');
      }
    })
    .fail(function() {
      alert('ajax request failed');
    });
  });
});