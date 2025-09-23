```python
from tapipy.tapis import Tapis

# Initialize with DesignSafe's base URL
t = Tapis(base_url='https://designsafe.tapis.io')

# Authenticate with your credentials
t.get_tokens(username='YOUR_USERNAME', password='YOUR_PASSWORD')

# Now you can access DesignSafe resources
# E.g. `t.files.listFiles()`, `t.jobs.submitJob()`, etc.
```

!!! important
    Replace `YOUR_USERNAME` and `YOUR_PASSWORD` with your actual DesignSafe credentials. The base URL `https://designsafe.tapis.io` is required for all TAPIS operations with DesignSafe.

For detailed examples of using TAPIS, see [our API Use Case](/user-guide/usecases/brandenberg-api/usecase/).
