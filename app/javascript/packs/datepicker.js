import { DateRangePicker } from 'tiny-date-picker/dist/date-range-picker';
import TinyDatePicker from 'tiny-date-picker';

function yearha() {
  const root = document.querySelector('.input-container');
  const txtStart = root.querySelector('.from-date');
  const txtEnd = root.querySelector('.to-date');
  const container = root.querySelector('.ex-inputs-picker');

  // Inject DateRangePicker into our container
  DateRangePicker(container)
    .on('statechange', function (_, rp) {
      // Update the inputs when the state changes
      var range = rp.state;
      txtStart.value = range.start ? range.start.toDateString() : '';
      txtEnd.value = range.end ? range.end.toDateString() : '';
    });

  // When the inputs gain focus, show the date range picker
  txtStart.addEventListener('focus', showPicker);
  txtEnd.addEventListener('focus', showPicker);

  function showPicker() {
    container.classList.add('ex-inputs-picker-visible');
  }

  // If focus leaves the root element, it is not in the date
  // picker or the inputs, so we should hide the date picker
  // we do this in a setTimeout because redraws cause temporary
  // loss of focus.
  let previousTimeout;
  root.addEventListener('focusout', function hidePicker() {
    clearTimeout(previousTimeout);
    previousTimeout = setTimeout(function() {
      if (!root.contains(document.activeElement)) {
        container.classList.remove('ex-inputs-picker-visible');
      }
    }, 10);
  });

};

yearha();
