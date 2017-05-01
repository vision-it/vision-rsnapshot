# vision-rsnapshot

[![Build Status](https://travis-ci.org/vision-it/vision-rsnapshot.svg?branch=production)](https://travis-ci.org/vision-it/vision-rsnapshot)


## Parameter

## Usage

Include in the *Puppetfile*:

```
mod vision_rsnapshot:
    :git => 'https://github.com/vision-it/vision-rsnapshot.git,
    :ref => 'production'
```

Include in a role/profile:

```puppet
contain ::vision_rsnapshot
```

