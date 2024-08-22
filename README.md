# Sony Dolby Atmos / Camera Apps / Sony Apps Extras Repo

## DISCLAIMER
- Dolby & Sony apps and blobs are owned by Dolby™ and Sony™.

## How to Include?
- Inherit the extras repo from your device.mk as shown
```
$(call inherit-product, vendor/sony/extra/extra.mk)
```

- Set Flags Accordingly in order to ship different modules

|Flag|Description|
|:-:|:-:|
|`TARGET_SHIPS_SOUND_ENHANCEMENT`|`Ships libs for Dolby Atmos.`|
|`TARGET_SHIPS_SONY_CAMERA`|`Ships Sony's Camera Apps`|
|`TARGET_SHIPS_SONY_APPS`|`Ships misc Sony Apps e.g. Music pro etc.`|
|`TARGET_SUPPORTS_GAME_CONTROLLERS`|`Ships Sony's Game controller app and needed layouts for various controllers.`|


### Notes
- Game Controllers might need this commit if dummy framework is being used from **[here](https://github.com/ahnet-69/hardware_sony/commit/1bb771e0a412433777d1a0e48e7b39663714f505)**
- Dolby's front end UI is shipped using XperiaModules from **[here](https://github.com/ahnet-69/hardware_sony/commit/1c8675673c0fdec5f39f135af9632c5baceea9fe)**
- Dolby's decoder `eac3_joc` requires a commit to show up on media codec list from. **[here](https://github.com/ahnet-69/device_sony_sm8250-common/commit/4c306db1d90f9dd2ffdb96c945b7e8f6cd5f73a9)**

## Credits
- Thanks to **[@saku-bruh](https://github.com/saku-bruh)** for helping with various things.
- Thanks to **[@hellobbn](https://github.com/hellobbn)** for modifying needed libs.
- Thanks to **[@reiryuki](https://github.com/reiryuki)** for reference README.
- Thanks to everyone else who was involved in making this all work.
