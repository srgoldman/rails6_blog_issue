To reproduce the issue:

1. rails db:migrate
2. rails spec

You should see the following output:
```
$ rails spec
DEPRECATION WARNING: Initialization autoloaded the constants Types, Types::BaseObject, Types::MutationType, Types::User, Types::QueryType, and BlogSchema.

Being able to do this is deprecated. Autoloading during initialization is going
to be an error condition in future versions of Rails.

Reloading does not reboot the application, and therefore code executed during
initialization does not run again. So, if you reload Types, for example,
the expected changes won't be reflected in that stale Module object.

These autoloaded constants have been unloaded.

Please, check the "Autoloading and Reloading Constants" guide for solutions.
 (called from <top (required)> at /Users/sethgoldman/Code/blog/config/environment.rb:5)
..*

Pending: (Failures listed here are expected and do not affect your suite's status)

  1) User add some examples to (or delete) /Users/sethgoldman/Code/blog/spec/models/user_spec.rb
     # Not yet implemented
     # ./spec/models/user_spec.rb:4


Finished in 0.017 seconds (files took 1.12 seconds to load)
3 examples, 0 failures, 1 pending
```