function KeyPress(e) {
      var evtobj = window.event? event : e
      if (evtobj.keyCode == 90 && evtobj.ctrlKey) window.location.href = "/lock";;
}

document.onkeydown = KeyPress;
