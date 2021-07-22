const downloadResume = () => {
  let resumeLink;
  if (document.getElementById("resume-link"))
    resumeLink = document.getElementById("resume-link");
  if (resumeLink) {
    resumeLink.click();
  } else {
    return "No Resume";
  }
};
