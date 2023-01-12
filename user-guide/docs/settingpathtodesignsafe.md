# Setting the Path to DesignSafe on Corral

---
The data stored on DesignSafe resides on the large (40 PB), shared data resource Corral located at the Texas Advanced Computing Center. Importantly, Corral services many different projects, not only DesignSafe, and as such utilizes a complex file structure for organization. The purpose of this documentation is to explain how to navitage this complex file structure to locate the directories pertinent to your data transfer needs on DesignSafe.

There are four main locations for data transfers on DesignSafe: <a href="#mydata">My Data</a>, <a href="#myprojects">My Projects</a>, <a href="#published-nheri">Published</a>, and <a href="#published-nees">Published (NEES)</a>, they are each presented in detail below.

---
<h2 id="mydata">Path to My Data</h2>

For <strong>My Data</strong> set Path to <strong>/corral-repl/projects/NHERI/shared/&lt;username&gt;/</strong>

Replace <strong>&lt;username&gt;</strong> with your username. You can find your username by examining the URL in My Data, see figure below.

<img alt="Path to My Data" src="../imgs/settingpath-1.png">

 

---
<h2 id="myprojects">Path to My Projects</h2>

For <strong>My Projects</strong> set Path to <strong>/corral-repl/projects/NHERI/projects/&lt;project-uid&gt;/</strong>

Replace <strong>&lt;project-uid&gt;</strong> with your projects unique identifier (UID). You can find your projects UID by examining the URL in My Projects, see figure below.

<img alt="Path to My Projects" src="../imgs/settingpath-2.png">

---
<h2 id="published-nheri">Path to Published</h2>

For <strong>Published </strong>DesignSafe projects set Path to <strong>/corral-repl/projects/NHERI/published/&lt;PRJ-XXXX&gt;</strong>

Replace <strong>&lt;PRJ-XXXX&gt;</strong> with your project's number. You can find your project number by examining the URL in Published, see figure below.

<img alt="Path to Published" src="../imgs/settingpath-3.png">

 

---
<h2 id="published-nees">Path to Published (NEES)</h2>

For <strong>Published (NEES)</strong> projects set Path to <strong>/corral-repl/projects/NHERI/public/projects/&lt;NEES-XXXX-XXXX.groups&gt;</strong>

Replace <strong>&lt;NEES-XXXX-XXXX.groups&gt;</strong> with the NEES project number. You can find the NEES project number by examining the URL in Published (NEES), see figure below.

<img alt="Path to Published (NEES)" src="../imgs/settingpath-4.png">


---

<strong>If you have any issues setting the path to DesignSafe on Corral, please create a ticket (<a href="https://designsafe-ci.org/help">https://designsafe-ci.org/help</a>)</strong>.

*Last Update: October 2021*

