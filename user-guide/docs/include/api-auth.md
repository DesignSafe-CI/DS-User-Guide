```python
from tapipy.tapis import Tapis

# to initialize and authenticate
t = Tapis(base_url=<url>, username=<username>, password=<password>)
t.get_tokens()

# now you can access DesignSafe resources
# e.g. `t.files.listFiles()`, `t.jobs.submitJob(..job)`, etc.
```

!!! important
    Replace `<username>`, and `<password>` with your actual DesignSafe credentials. The base URL `https://designsafe.tapis.io` is required for all TAPIS operations with DesignSafe.

For detailed examples of using TAPIS, see [our API Use Case](/user-guide/usecases/brandenberg-api/usecase/).
