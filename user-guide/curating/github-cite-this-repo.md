# GitHub's "Cite this Repository"

GitHub will show a "Cite this repository" link on your repository's homepage when you add a properly-formatted `CITATION.cff` file to your repository's default branch.

## Steps

1. Create a `CITATION.cff` file using the [cff-initializer tool](https://citation-file-format.github.io/cff-initializer-javascript/).

	> [!NOTE]
	> You can add or update this file at any time, **before** a release (if you know the version number in advance) or **after** a release. [Learn more.](#updating-version-in-citation-file)

	> [!WARNING]
	> If you have a build pipeline with a programmatically defined version, consider adjusting it to ensure the `CITATION.cff` file version has correct version number when a new software version is built.

2. Add the `CITATION.cff` file to the root directory of your repository's default branch.

3. Verify the "Cite this repository" dropdown appears on your repository homepage.

## Reference

### GitHub Documentation

For details about how GitHub reads the file, see [GitHub's documentation on CITATION files](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-citation-files).

### Updating Version in Citation File

You do not need to create a new release version just to add or update a `CITATION.cff` file; GitHub references the file from your default branch. Examples:

- [adding **before** release](https://github.com/TACC/mkdocs-tacc/pull/36)
- [updating **after** release](https://github.com/TACC/mkdocs-tacc/commit/98c6d867)
