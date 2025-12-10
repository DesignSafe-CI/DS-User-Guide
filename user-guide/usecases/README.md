# DesignSafe Use Cases

How to contribute to [DesignSafe Use Cases](https://designsafe-ci.org/user-guide/usecases/overview/).

## A Guide to Adding Your Use Case Project

### <a id="fork-repo"></a> 1. Fork Repo

Contributor should [Fork](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/fork-a-repo) this [DS User Guide repo][DS-User-Guide] to their own account. If prompted, select an organziation to create the fork.

| fork the repo |
| - |
| ![fork](docs/images/00-fork.png) | |

| forking in progress |
| - |
| ![forking](docs/images/01-forking.png) |

The contributor can later [add their students as collaborators in the Settings page](https://docs.github.com/en/account-and-profile/setting-up-and-managing-your-personal-account-on-github/managing-access-to-your-personal-repositories/inviting-collaborators-to-a-personal-repository):

| add collaborators |
| - |
| ![collaborator](docs/images/collaborator.png) |

### <a id="fork-success"></a> 2. Fork Success

GitHub will create a forked repo in your user account.

> **Note:**
> The new repo will say it was forked from the original [DS-User-Guide].

| the repo fork |
| - |
| ![forked-repo](docs/images/02-forked-repo.png) |

### <a id="find-usecase"></a> 3. Find Use Case

Navigate to existing use case folder within `user-guide/usecases/`[^1]. The folders are named after the PI, so find the folder with PI's name to edit your template. If one does not exist, you may create one (e.g. in `user-guide/usecases/`[^1] add `the_pi_name/usecase.md`). **Always check you are only editing the PI's use case folder**.

[^1]: **`user-guide/usecases/` vs. `user-guide/docs/usecases/`**: The path is `user-guide/usecases/`. The images show an outdated path, `user-guide/docs/usecases/`. Find folders in `user-guide/usecases/`, **not** `user-guide/docs/usecases/`.

| PI use case folder |
| - |
| ![PI use case folder](docs/images/03-pi-usecase-folder.png) |

### <a id="edit-usecase"></a> 4. Edit Use Case

Click on the `usecase.md` file in the use case folder to [Edit](https://docs.github.com/en/repositories/working-with-files/managing-files/editing-files) your use case.

> **Note:**
> - The document is written in plain text.
> - The document supports [Markdown syntax (extended)](https://www.markdownguide.org/extended-syntax/) (we use [MkDocs'](https://www.mkdocs.org/user-guide/writing-your-docs/#writing-with-markdown)).
> - Avoid HTML (because Markdown is easier to maintain in this repository).
> - You can add attributes via [python-markdown "Attribute Lists"](https://python-markdown.github.io/extensions/attr_list/).
> - Do **not** use deprecated HTML e.g. [`name` attribute](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/a#deprecated_attributes).
> - Do **not** use `<b>` or `<i>` unless `**` or `_` _(or `<strong>` or `<em>`)_ is inadequate.

| to edit document |
| - |
| ![Edit usecase md](docs/images/04-edit-usecasemd.png) |

| editing document |
| - |
| ![Edited usecase](docs/images/05-edit-usecase.png) |

### <a id="save-changes"></a> 5. Save Changes

Once you have completed editing the use case, you save the changes by [commiting](https://docs.github.com/en/pull-requests/committing-changes-to-your-project/creating-and-editing-commits/about-commits). Scroll down to the bottom of the page and type a descriptive phrase explaining the changes you have made and click "Commit changes". If you created a fork, these changes will be saved only in that fork and will not be reflected in the [DesignSafe-CI/DS-User-Guide][DS-User-Guide] repo until you create a Pull Request (PR) (that step is explained later).

| commit your edits |
| - |
| ![commit edits](docs/images/06-commit-usecase-edits.png) |

### <a id="add-images"></a> 6. Add Images

1. To add images to the use case, navigate to the use case folder and select the `img` folder. **Ensure that you are in the use case's `img/` folder** before adding images.

    | the image folder |
    | - |
    | ![img folder](docs/images/07-img-folder.png) |

    | to upload image(s) |
    | - |
    | ![add image](docs/images/08-add-img.png) |

2. [Select image files (you can select multiple files) and upload.](https://docs.github.com/en/repositories/working-with-files/managing-files/adding-a-file-to-a-repository) Once the images are added, type a descriptive commit message and click "Commit changes" to add relevant images to the use case's `img/` folder.

    | uploading image(s) |
    | - |
    | ![upload image](docs/images/09-upload-image.png) |

### <a id="insert-image"></a> 8. Insert Image

To show the image in the `usecase.md` file, add syntax like this into the text:

```md
![alternate text](img/image-name.png)
```

In this case, we added an image called `mpm-algorithm.png`, which is located in the use case folder `img`. We can reference it in the text using:

```md
![MPM Algorithm](img/mpm-algorithm.png)
```

> **Note:**
> Use a relative path (like `img/mpm-algorithm.png`). **Do NOT use a full path** (like [`https://github.com/DesignSafe-CI/DS-User-Guide/blob/bcd070b/user-guide/docs/usecases/kumar/img/mpm-algorithm.png`](https://github.com/DesignSafe-CI/DS-User-Guide/blob/bcd070b/user-guide/docs/usecases/kumar/img/mpm-algorithm.png)).

You can use the "Preview" tab to check images and text formatting before commiting your changes.

| previewing addition of image |
| - |
| ![preview image](docs/images/11-preview-img.png) |

Commit your changes to GitHub with a meaningful message.

| comitting addition of image |
| - |
| ![image commit](docs/images/12-image-commit.png) |

### <a id="sync-fork"></a> 9. Sync Fork

Before you are ready to make changes to the [DesignSafe-CI/DS-User-Guide][DS-User-Guide] repo. Make sure your repository on GitHub is up to date with all the changes from the original repo. You can do this by navigating your repo and click on "Fetch upstream". It might say there is nothing new to fetch.

| no upstream changes to fetch |
| - |
| ![fetch upstream](docs/images/16-fetch-upstream.png) |

If there are any new changes you can fetch and merge.

| fetch upstream changes |
| - |
| ![fetch merge](docs/images/17-fetch-merge.png) |

### <a id="request-review"></a> 10. Request Review

Once you have completed making changes, you'll now [create a Pull Request (PR)](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request) to request that your changes be merged to the main DesignSafe Use Case repo. Go to your repo on GitHub (in my case it is https://github.com/wesleyboar/DS-User-Guide). And select "Contribute". Before opening a pull request, verify the page states:

> This branch is _N_ commit(s) **ahead** of DesignSafe-CI master

| begin to open a PR |
| - |
| ![Open PR](docs/images/18-open-pr.png) |

Verify the changes you've made and select "Create pull request".

| verify the changes |
| - |
| ![Verify Diff](docs/images/18-verify-diff.png) |

Complete the title and description of your PR and select "Open pull request".

| create the PR |
| - |
| ![Create PR](docs/images/19-create-pr.png) |

The PR will show all the changes you have made in the "Files changed" tab.

| files changed |
| - |
| ![PR changes](docs/images/20-pr-file-changes.png) |

### <a id="test-changes"></a> 11. Test Changes

You can [**test your changes** on your local machine](../../../README.md#testing) using a command prompt (very few commands).

> **Note:**
> GitHub preview is an inaccurate representation of what will appear on the site.
>
> - Markdown rendering is less forgiving than [Github's](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax) e.g.
>     - Use 4 spaces to indent.
>     - Add a new line before starting a list.

### <a id="add-to-guide"></a> 12. Add New Use Case to User Guide

If you have added a Use Case, add it to the [`nav` in `user-guide/mkdocs.yml`](https://github.com/DesignSafe-CI/DS-User-Guide/blob/v2.8.0/user-guide/mkdocs.yml#L116-L142) —

```yml
  - Use Cases:
    - Overview: usecases/overview.md
    - Data Analytics:
      - Multi-Data Set Image Analysis in Taggit: usecases/haan/usecase-3.md
      - ...
    - GeoHazard:
      - NGL Database: usecases/brandenberg-ngl/usecase.md
      - ...
    - Seismic: 
      - Seismic Response of Concrete Walls: usecases/lowes/usecase.md
      - ...
    - Wind and Storm Surge: 
      - Field Sensing Wind Events: usecases/pinelli/usecase.md
      - ...
```

— so that it will show up on this User Guide.

#### Example

To add the new use case to "Wind & Storm Surge":

1. Open [`/user-guide/mkdocs.yml`](../../mkdocs.yml).
2. Find the `nav` "Use Cases" hierarchy within "Wind & Storm Surge" category in "Use Cases":
    ```yaml
    nav:
      - ...
      - Use Cases:
        - Overview: ...
        - Data Analytics:
          - ...
        - GeoHazard:
          - ...
        - Seismic:
          - ...
        - Wind and Storm Surge: 
          - ...
    ```
2. Add an entry for the new use case within "Wind & Storm Surge" category in "Use Cases":

    ```diff
        - Wind and Storm Surge: 
        - ...
    +      - New Use Case: your-usecase/usecase.md
    ```

    <sup>Edit the new line to point to the new use case.</sup>

### <a id="preview-deploy"></a> 13. Preview Deployment

After a minute or so a preview deployment of your use case will be available on the pull request page. Select the preview link generated by Netlify to view your changes similar to how it would be rendered in the final version. If you want to make some tweaks. If you created a fork repo, visit that fork repo to make changes. As long as the current PR remains open GitHub will automatically pull your changes.

| link to preview of deployment |
| - |
| ![PR](docs/images/21-pr.png) |

| preview of deployment |
| - |
| ![preview Web](docs/images/22-preview.png) |

[DS-User-Guide]: https://github.com/DesignSafe-CI/DS-User-Guide/
