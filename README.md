# abaplint as Classic ABAP on stack

BETA RELEASE

abaplint for classic ABAP code inspector/ATC

![abaplint-abap-classic runs on stack inside the SAP system, next to abapGit, the abaplint VS Code extension, abaplint command line and abaplint.app](img/abapgit-flow.svg)

Install via [abapGit](https://github.com/abapgit/abapgit), its a lot of code so it will take some time to pull, and enable the checks via `SCI` transaction.

Things will change so only use it for experimental purposes.

## Configuration

Rules run with their default configuration. The syntax version and the error namespace can be set per package with report `ZLNT_CONFIG`, stored in table `ZLNT_CONFIG`:

| Package | Syntax version | Error namespace |
|---|---|---|
| `ZMY_ROOT` | `v740sp08` | `^(Z\|Y\|LCL_\|TY_\|LIF_)` |

A row applies to its package and to all subpackages without a row of their own, like one `abaplint.json` per abapGit repository. Objects in packages without a row use version `v758` and error namespace `^(Z|Y|LCL_|TY_|LIF_)`. The version is chosen from a dropdown with the values of `syntax.version` in [abaplint.json](https://abaplint.org), from `v700` to `v816` and `Cloud`.

## abaplint.app

Looking for a hosted setup? [abaplint.app](https://abaplint.app) runs abaplint automatically on your GitHub pull requests: no system installation, custom configurations supported, and findings reported right where you review code.