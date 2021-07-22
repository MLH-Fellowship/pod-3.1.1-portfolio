const alanBtnInstance = alanBtn({
    key: "5c0e10ba1522cb83798eb8e6af73e2ef2e956eca572e1d8b807a3e2338fdd0dc/stage",
    onCommand: function ({command}) {
      if (command === 'resumeCommand') {
        alert('alan works')
      }
    },
    rootEl: document.getElementById("alan-btn"),
});