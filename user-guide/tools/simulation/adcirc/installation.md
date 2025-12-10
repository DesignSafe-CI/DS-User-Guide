
For the advanced user, below is a guide on how to install ADCIRC locally.
The below instructions can be executed within a users Jupyter Hub environment (HPC and non-HPC), to get a local install of ADCIRC.
Note this is for advanced users only.

#### Spack ADCIRC Installation (DesignSafe JupyterHub)

> The below instructions are for DesignSafe on JupyterHub instances (non HPC). They will allow you to test and run ADCIRC examples within a Jupyter session, without having to use HPC resources. This is in particular useful for


Move into your MyData directory and clone the spack repo. Note we put the spack repo in MyData so that it persists over Jupyter sessions.

```shell
cd ~/MyData
git clone -c feature.manyFiles=true https://github.com/spack/spack.git ~/spack
```

After installing spack, initialize it with:

```shell
source ~/MyData/spack/share/spack/setup-env.sh
```

This needs to be run every time a new jupyter terminal environment is spawned. To automatically do this, add the command to your `~/.bashrc` or alternatively, set up an alias:

```shell
alias spack-setup='source ~/spack/share/spack/setup-env.sh'
```

Now we clone the spack ADCIRC repo, and add the ADCIRC spack repository to spack.

```shell
cd ~/MyData
git clone https://github.com/adcirc/adcirc-spack.git 
spack repo add ~/MyData/adcirc-spack
```

Now to install ADCIRC:

```shell
spack install adcirc@main +swan +grib
```

**Note**: The installation above may take a long time!

To activate ADCIRC in your environment just run:

```shell
spack load adcirc
```

That should make the `padcirc`, `adcirc`, `adcprep`, and `padcswan` executablex available in your path.

For more information on how to use spack see the [documentation](https://spack.readthedocs.io/en/latest/index.html)
For more information on ADCIRC's spack repository and build options, see the [ADCIRC Spack Repository](https://github.com/adcirc/adcirc-spack)