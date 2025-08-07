# Setting Path to DesignSafe on Corral

The data stored on DesignSafe resides on the large (40 PB), shared data resource Corral located at the Texas Advanced Computing Center. Importantly, Corral services many different projects, not only DesignSafe, and as such utilizes a complex file structure for organization. The purpose of this documentation is to explain how to navitage this complex file structure to locate the directories pertinent to your data transfer needs on DesignSafe.

There are four main locations for data transfers on DesignSafe — [My Data](#mydata), [My Projects](#myprojects), [Published](#published-nheri), [Published (NEES)](#published-nees) — each presented in detail below.

## Path to My Data { #mydata }

1. Set Path to `/data/designsafe/mydata/<username>/`.
2. Replace `<username>` with your username.
    <br><small>You can find your username by examining the URL in My Data, see figure below.</small>

    ![Path to My Data](./imgs/settingpath-1.png)

## Path to My Projects { #myprojects }

1. Set Path to `/corral/projects/NHERI/projects/<project-uid>/`.
2. Replace `<project-uid>` with your projects unique identifier (UID).
    <br><small>You can find your projects UID by clicking the <strong>Learn how to transfer data to this project</strong> button, see figure below.</small>

    ![Path to My Projects](./imgs/settingpath-2.png)

## Path to Published { #published-nheri }

1. Set Path to `/corral/projects/NHERI/published/<PRJ-XXXX>`.
2. Replace `<PRJ-XXXX>` with your project's number.
    <br><small>You can find your project number by examining the URL in Published, see figure below.</small>

    ![Path to Published](./imgs/settingpath-3.png)

## Path to Published (NEES) { #published-nees }

1. Set Path to `/corral/projects/NHERI/public/projects/<NEES-XXXX-XXXX.groups>`
2. Replace `<NEES-XXXX-XXXX.group>` with the NEES project number.
    <br><small>You can find the NEES project number by examining the URL in Published (NEES), see figure below.</small>

    ![Path to Published (NEES)](./imgs/settingpath-4.png)

!!! note
    If you have any issues setting the path to DesignSafe on Corral, please [create a ticket](https://designsafe-ci.org/help){ target="_blank" }.
