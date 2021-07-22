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

const goToProjectPage = () => {
  const projectData = document.getElementById("p1");
  projectData.click();
  readProjectPage();
};

const getProjectJSON = () => {};

const openSocial = (social) => {
  const linkedIn = "https://linkedin.com/";
  const gitHub = "https://github.com/";
  if (social == "LinkedIn") {
    const LINK = document.createElement("a");
    LINK.href = linkedIn;
    LINK.target = "_blank";
    LINK.click();
    document.body.removeChild(LINK);
  } else if (social == "GitHub") {
    const LINK = document.createElement("a");
    LINK.href = gitHub;
    LINK.target = "_blank";
    LINK.click();
    document.body.removeChild(LINK);
  }
};
