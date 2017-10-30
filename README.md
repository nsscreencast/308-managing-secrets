## Using this project

This project leverages a plugin for Cocoapods called [cocoapods-keys](https://github.com/orta/cocoapods-keys). As such, the keys are not present in this git repository, and you'll have to follow these directions to get set up:

### Step 1: Install required gems

```
$ bundle install
```

This will install cocoapods and the plugin we're using.

### Step 2: Run pod install (maybe twice)

The key requirement is already specified in the `Podfile`, but you don't have it yet. Running `pod install` will prompt you for a key to use.

Once you enter it, it will show up in your keychain.

Double check that `Pods/CocoaPodsKeys/ManagingSecretsKeys.m` does not look empty. If it does, you may have to run `pod install` again after entering the key the first time.

### Step 3: Open the workspace

At this point you should be able to open the workspace and build the project.

## Alternative Approach

Delete the key above with `pod keys rm MySecretApiKey`. This will remove it from your project. Then run `rm -rf Pods/CocoaPodsKeys` to delete the generated keys helper class.

Add the key to an environment file:

```
echo MyServiceApiKey=someOtherVaLuE >> .env
```

Then run `pod install` again. It should use the `.env` file and not prompt you for a key.

This approach works well for CI environments.

## Do not check in secrets

It is important that both the `.env` file and the `Pods/CocoaPodsKeys` folder _not_ ever be committed to git. These files should be distributed privately to new machines/developers.

## Sample Code

This code is part of an [NSScreencast](http://nsscreencast.com) episode.

Sample code is released under the MIT license (see below), except for 3rd party
code (typically brought in via `Podfiles`), which are subject to their own
respective licenses.

## License

Copyright (c) 2017 Fickle Bits, LLC.

Use of the code provided on this repository is subject to the [MIT License](http://www.opensource.org/licenses/mit-license.php).

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files
(the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE
FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
