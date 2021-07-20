// Immediately invoked function to set the theme on initial load
(function () {
  if(document.getElementById('system-theme').checked){
    systemThemeToggle();
    return;
  }
  setThemeOnLoad();
})();

/* Change theme based on System-Theme */
function systemThemeToggle() {
  if (window.matchMedia("(prefers-color-scheme: dark)").matches) {
    setTheme("theme-dark");
  } else {
    setTheme("theme-light");
  }
}

function setTheme(themeName) {
  localStorage.setItem("theme", themeName);
  document.documentElement.className = themeName;
}

function toggleTheme() {
  if (localStorage.getItem("theme") === "theme-dark") {
    setTheme("theme-light");
  } else {
    setTheme("theme-dark");
  }
}

function setThemeOnLoad(){
  if (localStorage.getItem('theme') === 'theme-dark') {
    setTheme('theme-dark');
    document.getElementById('slider').checked = false;
  } else {
    setTheme('theme-light');
    document.getElementById('slider').checked = true;
  }
}

