## Hazmapper

### What is Hazmapper

<!-- DesignSafe HazMapper is a rich web-based application for visualizing and analyzing geospatial data [assets](/user-guide/tools/visualization/hazmapper/#supported-asset-types). -->
DesignSafe Hazmapper is a rich web-based application for visualizing and analyzing geospatial data (assets). It serves both as a **collaborative tool** for sharing maps and datasets among project team members, and as a way to create a **public map** for published data.

Public Hazmapper maps allow visitors to:

- View selected datasets from your DesignSafe project directly on the web.
- Explore and discover project data without needing specialized software or local processing.
- Gain quick insight into curated, geospatial aspects of your project.

When linked to a [DesignSafe Published Project](/user-guide/tools/visualization/hazmapper/#public-maps-published-projects), a Hazmapper public map provides an interactive entry point, letting other researchers (and the public) preview and explore your data online.

### Accessing Hazmapper { #accessing }

To access Hazmapper from Designsafe, the user can first navigate to the top menu bar and find _Workspace_ (_Fig 1.1_).

![](./imgs/hazmapper-1.1.png){: class="align-center" }

**Fig 1.1**

From there, the user can hover on the _Workspace_ section and select _Tools &amp; Application_ (_Fig 1.2_).

![](./imgs/hazmapper-1.2.png){: class="align-center" }

**Fig 1.2**

From the _Tools &amp; Applications_ page, the user can navigate to _Hazmapper (2.0)_ (_Fig 1.3_) and then _Launch Hazmapper_ (_Fig 1.4_).

![](./imgs/hazmapper-1.3.png){: class="align-center" }

**Fig 1.3**

![](./imgs/hazmapper-1.4.png){: class="align-center" }

**Fig 1.4**

### Interface Overview { #interface-overview }

#### Welcome Menu { #welcome-menu }

The welcome menu is the first interface that the user will see. This menu lists all of the [maps](/user-guide/tools/visualization/hazmapper/#maps) that are tied to the user either from [creating the map](/user-guide/tools/visualization/hazmapper/#map-creation-prompt) or from a [shared map](/user-guide/tools/visualization/hazmapper/#collaboration-sharedmaps) (_Fig 2.1_).

The header of the menu displays the name of the map and the DesignSafe project that it is saved in. If it is saved to the Data Depot, it will show a `----------`.

On the rightmost side of the header is the ![plus icon](https://raw.githubusercontent.com/FortAwesome/Font-Awesome/7.x/svgs/solid/plus.svg){: height="12" width="12" } _Create a New Map_ button, which opens the [map creation prompt](/user-guide/tools/visualization/hazmapper/#map-creation-prompt).

The icons on the right side of each map item are _edit_{: .fa .fa-edit } and _delete_{: .fa .fa-trash }.

To access a map, the user can either click on a map item or click on the _edit_{: .fa .fa-edit } button. To delete a map, the user can click on the _delete_{: .fa .fa-trash } button of a map.

![](https://raw.githubusercontent.com/TACC-Cloud/hazmapper/hazmapper-documentation/docs/docs/img/menu.png){: class="align-center" width="70%" }

**Fig 2.1**

#### Map Creation Prompt { #map-creation-prompt }

Clicking on the ![plus icon](https://raw.githubusercontent.com/FortAwesome/Font-Awesome/7.x/svgs/solid/plus.svg){: height="12" width="12" } _Create a New Map_ button from the [welcome menu](/user-guide/tools/visualization/hazmapper/#welcome-menu) (_Fig 2.2_) will open the project creation prompt. This prompt will guide the user through options needed to create a map.

![](./imgs/hazmapper-2.2.png){: class="align-center" }

**Fig 2.2**

First, the user is required to give the map a name and a description.

Once the user selects the name and description, unless manually specified, the map will be saved to a file with the same name as the map name with a `.hazmapper` extension.

Next, by browsing through the file browser, the user can select a location in the DesignSafe Data Depot the map will be saved to.

/// html | article.card--plain
    markdown: block

By saving the map into the correct DesignSafe project folder, Hazmapper automatically associates the map with that project. This ensures that once the project is published, the DesignSafe Published Project page can link directly to your Hazmapper map, providing a curated, interactive geospatial view of your data for the public.

_See [Public Hazmapper Maps and DesignSafe Published Projects](/user-guide/tools/visualization/hazmapper/#public-maps-published-projects) for more information._

///

For clarity, the selected location will be displayed in the _Save Location_ section.

Finally, the user is given the option to sync the folder through the _Sync Folder_ checkbox.

This will make the created map a [syncing map](/user-guide/tools/visualization/hazmapper/#syncing-map).

Once you create a map or select a map from the welcome menu, you will see the following interface.

![](./imgs/hazmapper-2.3.png){: class="align-center" }

**Fig 2.3**

#### Title bar { #title }

We will start the overview of the map interface by first looking at the title bar section of the interface.

Starting from the left to right, we can see a left arrow button ![left arrow icon](https://raw.githubusercontent.com/FortAwesome/Font-Awesome/7.x/svgs/solid/arrow-left.svg){: height="12" width="12" }. Clicking on this button will bring the user back to the welcome menu we looked into in the previous section.

The next part of the title bar is the name of the map with the associated DesignSafe Project if it exists.

The last part of the title bar is the latitude and longitude coordinates indicating the location of the mouse cursor when hovering on the map.

![](https://raw.githubusercontent.com/TACC-Cloud/hazmapper/hazmapper-documentation/docs/docs/img/control-bar.png){: class="align-center" width="70%" }

**Fig 2.4**

#### Panels { #panels }

Next, we will take a look at the panel interface of Hazmapper.

Panels are the primary interface a user can interact with the map and handle [assets](/user-guide/tools/visualization/hazmapper/#supported-asset-types) on the map.

![](https://raw.githubusercontent.com/TACC-Cloud/hazmapper/hazmapper-documentation/docs/docs/img/map-panel.png){: class="align-center" width="70%" }

**Fig 2.5**

##### Assets Panel { #panels-assets }

The assets panel is the hub of all of the [map-associated feature assets](/user-guide/tools/visualization/hazmapper/#map-associated-assets). Here users can add, view, and delete each asset.

By clicking on _Import from DesignSafe_, users can open the import prompt (_Fig 2.6_) and add appropriate files from DesignSafe Data Depot (My Data, Projects, Community Data, Published Data).

![](./imgs/hazmapper-2.6.png){: class="align-center" }

**Fig 2.6**

###### File Browser { #file-browser }

![](./imgs/hazmapper-2.7.png){: class="align-center" }

**Fig 2.7**

**Note**: _The file browser works like the file browsers on our computers. `Shift-Click` allows the user to select multiple items. And `Control-Click` (only on Windows) allows the user to select multiple assets without losing the previous selection._

Once imported, the selected assets will be listed inside the panel. A user can click on each asset to jump to the asset location on the map or to get the metadata associated with the asset.

![](./imgs/hazmapper-2.8.png){: class="align-center" }

**Fig 2.8**

**Note**: _Unless imported from the top-level (i.e. in the root of the folder), image, video, streetview assets will show up in the folders they are located in. On the other hand, point-cloud assets will always display at the root of the asset tree._

##### Point Clouds Panel { #panels-pointclouds }

This panel allows users to create point cloud objects that associate point clouds assets (las or laz).

**Note**: _Once the assets are attached they will show up in the [Assets Panel](/user-guide/tools/visualization/hazmapper/#panels-assets)_.

![](./imgs/hazmapper-2.9.png){: class="align-center" }

**Fig 2.9**

The user can open the point cloud creation prompt by clicking on the _Add_ button.

In the point cloud creation prompt, the user is required to create a _Description_ for the point cloud object (This will be the name displayed in the assets panel as well). After that, by clicking on the _Submit_ button, the user can create a point cloud object.

![](./imgs/hazmapper-2.10.png){: class="align-center" }

**Fig 2.10**

Once created, the point cloud object with be shown in the panel.

Now, the user can add a point cloud asset (las or laz), delete ![trash icon](https://raw.githubusercontent.com/FortAwesome/Font-Awesome/7.x/svgs/solid/trash.svg){: height="12" width="12" } the point cloud object, or view ![info icon](https://raw.githubusercontent.com/FortAwesome/Font-Awesome/7.x/svgs/solid/info-circle.svg){: height="14" width="14" } the object information.

To add a point cloud asset to the point cloud object, the user must click on the _Add las/laz_ button.

![](./imgs/hazmapper-2.11.png){: class="align-center" }

**Fig 2.11**

This will open a [file browser](/user-guide/tools/visualization/hazmapper/#file-browser), similar to the one used to [import assets](/user-guide/tools/visualization/hazmapper/#panels-assets) in the assets panel.

From the file browser, the user must select either a **las** or **laz** file and click _Import_.

![](./imgs/hazmapper-2.12.png){: class="align-center" }

**Fig 2.12**

The import process will take a while depending on the size of the point cloud file. However, once imported, the asset should show up on the _Assets_ panel and the map (as a bounding box covering the extent of the point cloud).

If the user clicks on the _View_ button on the information box, the Potree Viewer will open.

![](./imgs/hazmapper-2.13.png){: class="align-center" }

**Fig 2.13**

The Potree Viewer can be used for further analysis of the point cloud.

The URL to the Potree Viewer created for the asset will be permanent as long as the asset exists. Furthermore, this can be shared with other researchers.

![](./imgs/hazmapper-2.14.png){: class="align-center" }

**Fig 2.14**

##### Layers Panel { #panels-layers }

Using this panel users can select, create, edit, or delete tile layers. By default, the user will see the Satellite and Roads basemap layers.

Additionally, users can create an overlay image for the map. This means, given a jpg image with their geospatial coordinates, users can select the bounding coordinates and place the raster data on the map.

By default, the **Roads** and **Satellite** base layers will be added and enabled.

![](./imgs/hazmapper-2.15.png){: class="align-center" }

**Fig 2.15**

To add more layers, the user must click on the ![plus icon](https://raw.githubusercontent.com/FortAwesome/Font-Awesome/7.x/svgs/solid/plus.svg){: height="12" width="12" } button directly under _Tile Layers_.

This will open the tile layer creation prompt.

The default layers (**Roads**, **Satellites**) can be added directly in the case that the user deletes the default layers.

Otherwise, the user can choose among the [supported tile layer formats](/user-guide/tools/visualization/hazmapper/#asset-types-map-layers) as the _Import Method_.

![](./imgs/hazmapper-2.16.png){: class="align-center" }

**Fig 2.16**

The **Manual** import method will have additional prompts that each tile layer type method requires.

![](./imgs/hazmapper-2.17.png){: class="align-center" }

**Fig 2.17**

The **INI file** import method will show a file browser similar to the one used to [import assets](/user-guide/tools/visualization/hazmapper/#file-browser).

Here the user must select a `.ini` file containing the required tile layer data.

![](./imgs/hazmapper-2.18.png){: class="align-center" }

**Fig 2.18**

The **QMS Search** import method utilizes [Quick Map Services](https://qms.nextgis.com/) to search for various tile layers and add them to the map.

![](./imgs/hazmapper-2.19.png){: class="align-center" }

**Fig 2.19**

Once the user creates the tile layer, it will show up on the layers panel.

![](./imgs/hazmapper-2.20.png){: class="align-center" }

**Fig 2.20**

Each tile layer has controls to rename, toggle visibility, change the opacity, and delete.

If the user desires to preserve the changed options for collaborators or those with access to the public version of the map, the user must click on the _Save Layer Options_ button.

![](./imgs/hazmapper-2.21.png){: class="align-center" }

**Fig 2.21**

##### Filters Panel { #panels-filters }

Displayed assets can be filtered based on type (Images, Videos, Point Clouds, Converted Streetview, Non-asset Features) under this panel.

**Note**: _Currently the date range filter is a placeholder that will be implemented in the future._

![](./imgs/hazmapper-2.22.png){: class="align-center" }

**Fig 2.22**

##### Streetview Panel { #panels-streetview }

The streetview panel provides streetview functionality through an external service called [Mapillary](https://www.mapillary.com/).

Because we rely on this external service, much of the functionality is catered to how the service works. Furthermore, there is some jargon accompanied by the functionality.

###### Mapillary Overview { #panels-streetview-mapillary }

Mapillary is a service that allows its users to import streetview imagery to view through their app. They also expose a tile-based API that allows other apps to integrate with their services.

###### Mapillary Terminology { #panels-streetview-mapillary-terminology }

* _[Organization](https://help.mapillary.com/hc/en-us/articles/360016036931-Mapillary-for-Organizations-getting-started)_: This is somewhat like a shared account in Mapillary that can be accessed by multiple individual users to collaborate. Any user with access to an organization can upload streetview assets through it. We have a constraint in our upload workflow to enforce users to upload to a target organization and not their accounts. Thus, users can only work with assets through organizations and not from their personal Mapillary account.
* _[Sequence](https://help.mapillary.com/hc/en-us/articles/115001724849-Sequences-on-the-Mapillary-Web-App)_: This is a unit of a collection of streetview images that Mapillary uses to organize their assets with a max size of 500 images. During upload, if the selected folder is more than 500 images, Mapillary will split the assets being uploaded into multiple sequences. Thus, a folder can be linked with multiple sequences.
* _[Processing](https://blog.mapillary.com/update/2018/04/19/accurate-privacy-blurring-at-scale.html)_: This is a step in the upload process that takes place on the Mapillary side. Once all the data is transferred, Mapillary processes the images so that faces and car plates are blurred for privacy concerns. Thus, it will take some time after all the transferring (depending on how many images are uploaded at the same time).

###### Logging in to Mapillary { #mapillary-login }

To start using streetview assets with Mapillary, the user must log in to Mapillary.

**Note**: _If a user is not registered to log in, one can create an account at the [Mapillary site](https://www.mapillary.com/signup) before proceeding._

From the _Streetview_ panel, the user can access the _Login to Mapillary_ button.

![](./imgs/hazmapper-2.23.png){: class="align-center" }

**Fig 2.23**

This will redirect the user to an external login page.

![](./imgs/hazmapper-2.24.png){: class="align-center" }

**Fig 2.24**

Once authorized from the external site, the user must provide Hazmapper a Mapillary _username_ and at least one _organization key_ of an organization.

![](./imgs/hazmapper-2.25.png){: class="align-center" }

**Fig 2.25**

###### Organizations { #mapillary-organizations }

![](./imgs/hazmapper-2.26.png){: class="align-center" }

**Fig 2.26**

These can be acquired through the [Mapillary dashboard](https://www.mapillary.com/dashboard/profile).

Here, the user will see the _username_ in the top-left panel (_Fig 2.27_).

In order. to find the _organization key_, the user must switch to a organization account (_Fig 2.28_).

![](./imgs/hazmapper-2.27.png){: class="align-center" }

**Fig 2.27**

![](./imgs/hazmapper-2.28.png){: class="align-center" }

**Fig 2.28**

![](./imgs/hazmapper-2.29.png){: class="align-center" }

**Fig 2.29**

![](./imgs/hazmapper-2.30.png){: class="align-center" }

**Fig 2.30**

If a user adds a correct organization key, Hazmapper will automatically add the organization to the _Streetview_ panel with the organization name. So, users can verify that they've added the correct organization key.

![](./imgs/hazmapper-2.31.png){: class="align-center" }

**Fig 2.31**

###### Display Mapillary Sequences { #panels-streetview-display }

This will display all of the [mapillary assets](/user-guide/tools/visualization/hazmapper/#panels-streetview-mapillary-assets) of a selected organization in the [filters tab](/user-guide/tools/visualization/hazmapper/#panels-streetview-filters-tab).

![](./imgs/hazmapper-2.32.png){: class="align-center" }

**Fig 2.32**

###### Publish Button { #panels-streetview-publish }

This allows the user to upload and publish images from DesignSafe to Mapillary. During the process, the images are linked to hazmapper.

**Note**: _The assets published here will be imported as [mapillary assets](/user-guide/tools/visualization/hazmapper/#panels-streetview-mapillary-assets)_.

![](./imgs/hazmapper-2.33.png){: class="align-center" }

**Fig 2.33**

On clicking the _Publish_ button, the user will see a prompt that asks for the user to select streetview images (images that support [GPano panorama metadata](https://developers.google.com/streetview/spherical-metadata) ).

![](./imgs/hazmapper-2.34.png){: class="align-center" }

**Fig 2.34**

###### Assets Tab { #panels-streetview-assets }

This tab will list all of the [linked mapillary assets](/user-guide/tools/visualization/hazmapper/#linked-mapillary-assets). If you click on the asset, the prompt will display the [mapillary sequences](/user-guide/tools/visualization/hazmapper/#panels-streetview-mapillary-terminology) associated with a system/path.

![](./imgs/hazmapper-2.35.png){: class="align-center" }

**Fig 2.35**

In this interface (_Fig 2.36_), the user can:

* Import streetview assets into the map (![link icon](https://raw.githubusercontent.com/FortAwesome/Font-Awesome/7.x/svgs/solid/link.svg){: height="12" width="12" }).
* Jump to a specific sequence in the map.
* Delete a sequence's association with Hazmapper (![trash icon](https://raw.githubusercontent.com/FortAwesome/Font-Awesome/7.x/svgs/solid/trash.svg){: height="12" width="12" }).

![](./imgs/hazmapper-2.36.png){: class="align-center" }

**Fig 2.36**

###### Log Tab { #panels-streetview-log }

The _Publish_ process prompted by the user submitting a [publish job](/user-guide/tools/visualization/hazmapper/#panels-streetview-publish) requires the images to be first collected from DesignSafe and then published to Mapillary.

This tab shows a list of the progress of active publish processes.

![](./imgs/hazmapper-2.37.png){: class="align-center" }

**Fig 2.37**

###### Filters Tab { #panels-streetview-filters-tab }

The interface of the _Filters tab_ is similar to that of the [filters panel](/user-guide/tools/visualization/hazmapper/#panels-filters). However, instead of filtering based on a date range or asset type, this will filter by the organizations that a user added (either on login or through the [account tab](/user-guide/tools/visualization/hazmapper/#panels-streetview-account-tab).

![](./imgs/hazmapper-2.38.png){: class="align-center" }

**Fig 2.38**

###### Account Tab { #panels-streetview-account-tab }

The account tab is where the user can view and modify the mapillary account information associated with Hazmapper.

The _Logout_ button will log the user out of the current account.

The _Change Username_ and _Manage Organization_ buttons will each open a prompt similar to the one the user sees on [login](/user-guide/tools/visualization/hazmapper/#mapillary-login). They allow the user to modify the account information associated with Mapillary.

The _Delete Streetview Service_ button will delete all of the associations created through [publish](/user-guide/tools/visualization/hazmapper/#panels-streetview-publish) or [link](/user-guide/tools/visualization/hazmapper/#panels-streetview-assets). This operation cannot be reverted! So, the user must be extremely cautious before proceeding. This functionality was implemented so that if the user desires, the user could destroy all of the Mapillary information stored in Hazmapper.

**Note**: _Changes here will not affect the actual Mapillary account. For example, changing the username will not change the actual Mapillary username but only change the username that Hazmapper keeps track of._

![](./imgs/hazmapper-2.39.png){: class="align-center" }

**Fig 2.39**

###### Streetview Assets { #panels-streetview-assets }

The streetview support in Hazmapper comes with different asset components.

First, there are some commonalities among the different asset components:

* Right-clicking on the asset on the map will open an information panel on the (_Fig 2.40_).
* Left-clicking on the asset on the map will open the streetview viewer (_Fig 2.41_).
* The different types of assets will be displayed in different colors.
* The streetview assets will be displayed as a polyline on the map (_Fig 2.40_).

![](./imgs/hazmapper-2.40.png){: class="align-center" }

**Fig 2.40**

![](./imgs/hazmapper-2.41.png){: class="align-center" }

**Fig 2.41**

###### Mapillary assets { #panels-streetview-mapillary-assets }

Because the Mapillary account is tied to an individual user, Mapillary assets are _not_ part of the map itself. Thus, they will not be shown across members of the map and those with access to the public version of the map.

###### _Non-linked mapillary assets_ { #non-linked-mapillary-asset }

These are the assets under an [organization](/user-guide/tools/visualization/hazmapper/#mapillary-organizations) that can be added through the [account](/user-guide/tools/visualization/hazmapper/#panels-streetview-account-tab) tab or when [logging in](/user-guide/tools/visualization/hazmapper/#mapillary-login) and can be filtered by organizations with the [filters](/user-guide/tools/visualization/hazmapper/#panels-streetview-filters-tab) tab. The only association they have will be through the organization.

They are displayed in this color: .

To link the assets to Hazmapper, the user must right-click on the asset to open the info panel (_Fig 2.42_). From there, the user can click on the _Link sequences to Hazmapper_ button.

This will open a modal, in which the user can select a location to link the sequence asset to (_Fig 2.43_).

![](./imgs/hazmapper-2.42.png){: class="align-center" }

**Fig 2.42**

![](./imgs/hazmapper-2.43.png){: class="align-center" }

**Fig 2.43**

###### _Linked mapillary assets_ { #linked-mapillary-assets }

These are created either by manually adding a link from a non-linked mapillary asset or [publishing](/user-guide/tools/visualization/hazmapper/#panels-streetview-publish) streetview assets to Mapillary through Hazmapper.

They are displayed in this color: .

![](./imgs/hazmapper-2.44.png){: class="align-center" }

**Fig 2.44**

###### Imported streetview feature assets { #panels-streetview-feature }

Although the user is required to log in to the Mapillary to utilize them, imported streetview assets _are_ part of the map. Thus, unlike [mapillary assets](/user-guide/tools/visualization/hazmapper/#panels-streetview-mapillary-assets), they can be shared among the members of the map and with those with access to the public version of the map.

They appear in the Hazmapper [assets panel](/user-guide/tools/visualization/hazmapper/#panels-assets).

They are displayed in this color:

![](./imgs/hazmapper-2.45.png){: class="align-center" }

**Fig 2.45**

##### Manage Panel { #panels-manage }

In this panel, the user can manage the configuration of the maps.

###### Map Tab { #panels-manage-map }

The _Map_ tab allows the user to edit the name/description of the map and delete the map.

![](./imgs/hazmapper-2.46.png){: class="align-center" }

**Fig 2.46**

###### Members Tab { #panels-manage-members }

The _Members_ tab allows the user to view other users with access to the map (these will be managed by the linked [DesignSafe Project](/user-guide/curating/guides)).

![](./imgs/hazmapper-2.47.png){: class="align-center" }

**Fig 2.47**

###### Public Tab { #panels-manage-public }

The _Public_ tab allows the user to create a [public version of the map](/user-guide/tools/visualization/hazmapper/#collaboration-public) by creating a permanent link that can be shared with anyone. (_Fig 2.48_).

The public map will have access to all of the [map-associated assets](/user-guide/tools/visualization/hazmapper/#map-associated-assets) (_Fig 2.49_). However, none of the editing functionality will be provided.

After making the map public, the user can either click or copy the link. Furthermore, the user can revert the process and make the link private again (_Fig 2.50_).

![](./imgs/hazmapper-2.48.png){: class="align-center" }

**Fig 2.48**

![](./imgs/hazmapper-2.49.png){: class="align-center" }

**Fig 2.49**

![](./imgs/hazmapper-2.50.png){: class="align-center" }

**Fig 2.50**

###### Save Tab { #panels-manage-save }

The _Save_ tab shows where the map is saved within DesignSafe's Data Depot. If saved to a DesignSafe project, it will display the corresponding project information.

![](./imgs/hazmapper-2.51.png){: class="align-center" }

**Fig 2.51**

### Maps { #maps }

#### Map { #maps-map }

A map is the equivalent of projects in some apps (not to confuse with DesignSafe Projects). They are the basic unit of work.

When creating a new map, the user is required to save the map to a location in DesignSafe. If saved in the Data Depot, the user creating the map will be the sole owner of the map with edit capabilities (import, delete, rename, etc). Otherwise, if saved to a DesignSafe project location, the users of the project will also have the right to edit the map.

If saved to a DesignSafe project, the DesignSafe project interface will also show this association.

![](./imgs/hazmapper-3.1.png){: class="align-center" }

**Fig 3.1**

##### Public Map { #maps-map-public }

An owner of a map can create a "Public Map" by creating one in the Manage -&gt; Public (tab) -&gt; (icon) Make a public map. The user can open the map by clicking on the generated link. When clicking on the (icon) copy icon, the URL address of the public icon will be available.

A public map is meant to be a permanent link to the project unless the project itself is deleted. Thus, one must be careful of deleting the underlying project after sharing a link to the map.

##### Syncing Map { #syncing-map }

If the user checks the "Sync Folder" checkbox on creating the map, the map will sync all the assets from the chosen save location. So, all the assets will be imported. Whatever asset the user import to the location from DesignSafe will automatically be imported.

To check the discrepancies Hazmapper will start the import job periodically.

### Supported Asset Types { #supported-asset-types }

#### Map Associated Assets { #map-associated-assets }

##### Media Assets { #asset-types-map-media }

Currently, we support the following media assets. Note that these assets must have geospatial data (lat/lon) for Hazmapper to properly process and handle them. If the image is problematic, Hazmapper should show an error during the import process.

* Image Assets: jpeg, jpg, png
* Video Assets: mp4, mov, mpeg4, webm
* GeoJSON/Shapefiles

##### Point Cloud Assets { #asset-types-map-pointcloud }

Point cloud assets are represented as bounding boxes showing their respective geographic locations.

They can be analyzed further through the Potree Viewer, which shows a 3D model of the point cloud.

##### Imported Streetview Assets { #asset-types-map-streetview }

These are imported versions of mapillary streetview assets and bound to the map (different from [non-imported streetview assets](/user-guide/tools/visualization/hazmapper/#non-linked-mapillary-asset) shown and accessed through the [Streetview panel](/user-guide/tools/visualization/hazmapper/#panels-streetview)).

Thus, they can be shared among users of the map and with those who have access to the public link map if the map has a public version.

##### Tile Layers { #asset-types-map-layers }

These are tile layers from an external tile server. They are managed through the [Layers panel](/user-guide/tools/visualization/hazmapper/#panels-layers).

Currently, supported formats are:

* TMS
* WMS
* ArcGIS Tile Server
* `.ini` file containing tms/wms information
* Formats accessible through [Quick Map Services](https://qms.nextgis.com/)

**Note**: _Tile layers are not regular Feature Assets (i.e. they do not show up in the assets panel), but they are part of the map and can be shared among collaborators and those with access to the public version of the map._

#### Third-party Assets { #asset-types-thirdparty }

##### Non-imported Streetview Assets { #asset-types-thirdparty-streetview }

These are supported through a Mapillary's tile service. Because these are user-dependent services, they cannot be shared among users of a map. Thus, they must be [imported](/user-guide/tools/visualization/hazmapper/#panels-assets) as [imported streetview assets](/user-guide/tools/visualization/hazmapper/#panels-streetview-assets).

### Collaboration { #collaboration }

#### Shared Maps { #collaboration-sharedmaps }

As briefly mentioned in the [Maps](/user-guide/tools/visualization/hazmapper/#maps) section, maps that are saved in the DesignSafe project will be shared among the [members of the project](/user-guide/tools/visualization/hazmapper/#panels-manage-members). These maps will automatically display in the [welcome menu](/user-guide/tools/visualization/hazmapper/#welcome-menu). Because of the connection, the addition/deletion of members is also managed by each corresponding DesignSafe project.

#### Public Maps { #collaboration-public }

Any map can have a public version of the map through the [public tab of the manage panel](/user-guide/tools/visualization/hazmapper/#panels-manage-public). The generated link will be permanent unless the owner of the map makes the map private or deletes the original map.

##### Public Hazmapper Maps and DesignSafe Published Projects { #public-maps-published-projects }

When a Hazmapper map is associated with a DesignSafe project and made public, it provides an interactive way for others to view curated project data directly on the web. This allows visitors to:

- Preview geospatial datasets without needing specialized software.
- Discover and explore curated subsets of data within the context of the published project.

Checklist for ensuring your Hazmapper map appears on your DesignSafe Published Project page:

- Associate the map with your DesignSafe project during creation (see [Creating Projects](/user-guide/tools/visualization/hazmapper/#map-creation-prompt)).
- Import relevant geospatial datasets into the map to provide context and visualization for your project.
- Publish the datasets in DesignSafe so they are publicly accessible.  Note all data imported to a map should be also published to DesignSafe.
- Make the Hazmapper map public so the link on the DesignSafe project will resolve to a shareable, viewable map.
- Do not include `.hazmapper` extension files in the list of pieces of a project to curate and publish with any project that needs to acquire a DOI.

Once these steps are complete, your DesignSafe Published Project will automatically include a link to your Hazmapper map, giving other researchers and the public an interactive way to preview and discover your geospatial data.

