const options = {
    enableHighAccuracy: true,
    timeout: 5000,
    maximumAge: 0
  };
  
  function success(pos) {
    let crd = pos.coords;
    document.getElementById("hidden-form").action = window.location.href + 'page/1';
    document.getElementById("hidden-input").value = [crd.latitude, crd.longitude];

    document.forms['geolocation'].submit();
    // console.log(`More or less ${crd.accuracy} meters.`);
  }
  
  function error(err) {
    console.warn(`ERROR(${err.code}): ${err.message}`);
  }
  
  navigator.geolocation.getCurrentPosition(success, error, options);