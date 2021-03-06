# sprout-osx-settings

[![Build Status](https://travis-ci.org/pivotal-sprout/sprout-osx-settings.svg?branch=master)](https://travis-ci.org/pivotal-sprout/sprout-osx-settings)

Various settings & preferences for OS X.

## Usage

### Prerequisites

- `sprout-base`

## Cookbook Usage

### Recipes

- `sprout-osx-settings::default` - includes the following:
    - `sprout-osx-settings::defaults_fast_key_repeat_rate`
    - `sprout-osx-settings::function_keys`
    - `sprout-osx-settings::global_environment_variables`
    - `sprout-osx-settings::input_on_login`
    - `sprout-osx-settings::inputrc`
    - `sprout-osx-settings::keyboard`
    - `sprout-osx-settings::locate`
    - `sprout-osx-settings::machine_name`
    - `sprout-osx-settings::screensaver`
    - `sprout-osx-settings::screen_sharing`
    - `sprout-osx-settings::set_menubar_clock_format`
    - `sprout-osx-settings::shared_memory`
    - `sprout-osx-settings::snmpd`
    - `sprout-osx-settings::sshd_on`
    - `sprout-osx-settings::tcp_keepalive`
    - `sprout-osx-settings::timemachine`
    - `sprout-osx-settings::updates`

#### All Recipes

- `sprout-osx-settings::defaults_fast_key_repeat_rate`
- `sprout-osx-settings::dock_preferences`
- `sprout-osx-settings::finder_display_full_path`
- `sprout-osx-settings::function_keys` - disable function keys
- `sprout-osx-settings::global_environment_variables`
- `sprout-osx-settings::input_on_login`
- `sprout-osx-settings::inputrc`
- `sprout-osx-settings::keyboard`
- `sprout-osx-settings::locate`
- `sprout-osx-settings::machine_name` - sets machine name based on `node[machine_domain]`
- `sprout-osx-settings::osx_aqua_color_preferences`
- `sprout-osx-settings::osx_disable_natural_scrolling`
- `sprout-osx-settings::remove_expose_keyboard_shortcuts`
- `sprout-osx-settings::remove_garageband`
- `sprout-osx-settings::safari_preferences`
- `sprout-osx-settings::screen_sharing`  - exposes the Screen Sharing app
- `sprout-osx-settings::screensaver` - sets timeout and turns on immediate password unlock
- `sprout-osx-settings::set_finder_show_all_hd_on_desktop`
- `sprout-osx-settings::set_finder_show_hd_on_desktop`
- `sprout-osx-settings::set_finder_show_user_home_in_sidebar`
- `sprout-osx-settings::set_menubar_clock_format`
- `sprout-osx-settings::set_multitouch_preferences`
- `sprout-osx-settings::set_start_up_automatically`
- `sprout-osx-settings::shared_memory`
- `sprout-osx-settings::snmpd`
- `sprout-osx-settings::sshd_on`
- `sprout-osx-settings::tcp_keepalive`
- `sprout-osx-settings::terminal_focus`
- `sprout-osx-settings::terminal_preferences`
- `sprout-osx-settings::timemachine` - hides Time Machine on menubar and prevents asking about using every mounted disk
- `sprout-osx-settings::updates`

## Contributing

### Before committing

```
bundle
bundle exec rake
```

The default rake task runs foodcritic and unit specs

### [FoodCritic](http://acrmp.github.io/foodcritic/)

```
bundle
bundle exec rake foodcritic
```
