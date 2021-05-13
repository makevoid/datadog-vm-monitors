### datadog-vm-monitors

Programmatically set up Datadog VM Monitors (Infrastructure) to check for common metrics such as:

- Disk Space usage
- CPU %
- Load Average
- RAM usage


### Setup

- Visit https://app.datadoghq.com/account/settings#api and create an API key

- Visit https://app.datadoghq.com/access/application-keys and create an APP key

- Create two files containing the secrets in your home directory (`~/.datadog_api_key` and `~/.datadog_app_key`) and save your API and APP keys respectively

- Run `bundle` to install this project's dependencies

### Run

Run:

```sh
rake
```

This will create the monitors for you, you should be able to see them in the Monitors section ( https://app.datadoghq.com/monitors/manage )

---

Have fun!

@makevoid
