# DesignSafe Use Case Template

## A Guide to Adding Your Use Case Project

### <a id="fork-repo"></a> 1. Fork Repo

The Principal Investigator (PI) should [Fork](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/fork-a-repo) the [DS User Guide repo][DS-User-Guide] to their own account. If prompted, select an organziation to create the fork.

| fork the repo |
| - |
| ![fork](docs/images/00-fork.png) | |

| forking in progress |
| - |
| ![forking](docs/images/01-forking.png) |

The PI can later [add their students as collaborators in the Settings page](https://docs.github.com/en/account-and-profile/setting-up-and-managing-your-personal-account-on-github/managing-access-to-your-personal-repositories/inviting-collaborators-to-a-personal-repository):

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

### <a id="find-usecase"></a> 3. Find Usecase

Navigate to your use case folder, which is located in the `user-guide/docs/usecases` folder. The folders are named after the PI, so find the folder with your name to edit your template. **Always check you are only editing your use case folder**.

| PI use case folder |
| - |
| ![PI use case folder](docs/images/03-pi-usecase-folder.png) |

### <a id="edit-usecase"></a> 4. Edit Usecase

Click on the `usecase.md` file in your usecase folder to [Edit](https://docs.github.com/en/repositories/working-with-files/managing-files/editing-files) your use case.

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

Once you have completed editing your use case, you save your changes by [commiting](https://docs.github.com/en/pull-requests/committing-changes-to-your-project/creating-and-editing-commits/about-commits). Scroll down to the bottom of the page and type a descriptive phrase explaining the changes you have made and click "Commit changes". These changes will be saved only on your repo and will not be reflected in the [original DS User Guide repo][DS-User-Guide] until you create a Pull Request (PR) (that step is explained later).

| commit your edits |
| - |
| ![commit edits](docs/images/06-commit-usecase-edits.png) |

### <a id="add-images"></a> 6. Add Images

1. To add images to your use case, navigate to your use case folder and select the `img` folder. **Ensure that you are in your usecase `img` folder** before adding images.

    | the image folder |
    | - |
    | ![img folder](docs/images/07-img-folder.png) |

    | to upload image(s) |
    | - |
    | ![add image](docs/images/08-add-img.png) |

2. [Select image files (you can select multiple files) and upload.](https://docs.github.com/en/repositories/working-with-files/managing-files/adding-a-file-to-a-repository) Once the images are added, type a descriptive commit message and click "Commit changes" to add relevant images to your folder.

    | uploading image(s) |
    | - |
    | ![upload image](docs/images/09-upload-image.png) |

### <a id="insert-image"></a> 8. Insert Image

To insert the image in your `usecase.md` file, add syntax like this into the text:

```md
![alternate text](image-location.png)
```

In this case, we added an image called `mpm-algorithm.png`, which is located in the use case folder `img`. We can reference it in the text usingg:

```md
![MPM Algorithm](img/mpm-algorithm.png)
```

> **Note:**
> Use a relative path `img/mpm-algorithm.png`, **do not use a full path** (e.g., [`https://github.com/DesignSafe-CI/DS-User-Guide/user-guide/docs/usecases/kumar/img/mpm-algorithm.png`](https://github.com/DesignSafe-CI/DS-User-Guide/user-guide/docs/usecases/kumar/img/mpm-algorithm.png)).

You can use the "Preview" tab to check images and text formatting before commiting your changes.

| previewing addition of image |
| - |
| ![preview image](docs/images/11-preview-img.png) |

Commit your changes to GitHub with a meaningful message.

| comitting addition of image |
| - |
| ![image commit](docs/images/12-image-commit.png) |

### <a id="sync-fork"></a> 9. Sync Fork

Before you are ready to make changes to the [original DS-User-Guide repo][DS-User-Guide]. Make sure your repository on GitHub is up to date with all the changes from the original repo. You can do this by navigating your repo and click on "Fetch upstream". It will probably say there is nothing new to fetch.

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

<details><summary>Preview Deployment — ⚠️ Feature Not Available Yet</summary>

> **Note**: This valuable automated feature was in [DS_Use_Case_template](https://github.com/DesignSafe-CI/DS_Use_Case_template/blob/c32d48a/README.md?plain=1#L76-L80). It will eventually be added here also.

After a minute or so a preview deployment of your use case will be available on the pull request page. Select the preview link generated by Netlify to view your changes similar to how it would be rendered in the final version. If you want to make some tweaks. Visit *your* GitHub repo of the DS Use Case and make changes. As long as the current PR remains open GitHub will automatically pull your changes.

| link to preview of deployment |
| - |
| ⚠️ Feature unavailable. Until feature is available, you may view an [outdated image](docs/images/21-pr.png). |
<!-- ![PR](docs/images/21-pr.png) | -->

| preview of deployment |
| - |
| ⚠️ Feature unavailable. Until feature is available, you may view an [outdated image](docs/images/22-preview.png). |
<!-- ![preview Web](docs/images/22-preview.png) | -->

</details>

### <a id="add-to-guide"></a> 12. Add Content to User Guide

Include your document into one of the existing use case categories —

- [API](./apiusecases.md)
- [Data Analytics](./dataanalyticsusecases.md)
- [Geohazard](./geohazardusecases.md)
- [Seismic](./seismicusecases.md)
- [Wind and Storm Surge](./windstormsurgeusecases.md)

— e.g. in [`dataanalyticsusecases.md`](./dataanalyticsusecases.md), under —

```md

---

<!-- ## Visualization of spatially distributed data -->

{% include-markdown 'padgett/usecase_JN_viz.md' %}
```

— add —

```md

---

<!-- ## Description of yur use case -->

{% include-markdown 'your-usecase/usecase.md' %}
```

— so that it will show up on this User Guide.

[DS-User-Guide]: https://github.com/DesignSafe-CI/DS-User-Guide/
[DS_Use_Case_template]: https://github.com/DesignSafe-CI/DS_Use_Case_template/
