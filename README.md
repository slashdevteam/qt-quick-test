### Issue
After killing (`kill -9 <PID>`) any Qt app, test app is starting and hanging.

### Debug info
This repository contains straces from working and not-working scenario. More info can be requested at team@slashdev.team.

### Detailed description*
1. Start the system
1. Copy test app to target device
1. Quit *qt-guf-demo* executing `killall qt-guf-demo`
1. Run test app `./test`; app is running properly ![alt text][working]
1. Kill test app `kill -9 <PID>`
1. Run test ap again; app is starting but displaying only top bar ![alt text][not-working]

The same behavior can be achieved by killing qt-guf-demo by running `kill -9 <PID>` instead of `killall qt-guf-demo`.

*For test app building instructions please refer to [G&F Manual](http://support.garz-fricke.com/products/Santaro/Linux-Yocto/Releases/Yocto-rocko-3.2-0/GUF-Yocto-rocko-3.2-0-IMX6GUF-Manual.pdf)

### Environment
* [G&F Yocto Rocko 3.2-0](http://support.garz-fricke.com/products/Santaro/Linux-Yocto/Releases/Yocto-rocko-3.2-0/prebuilt_images/)
* [G&F SDK](http://support.garz-fricke.com/products/Santoka/Linux-Yocto/Releases/Yocto-rocko-3.2-0/sdk/GUF-Yocto-rocko-3.2-0-IMX6GUF-sdk.sh)

[working]: https://github.com/slashdevteam/qt-quick-test/blob/test-app/working.jpg "Working test app"
[not-working]: https://github.com/slashdevteam/qt-quick-test/blob/test-app/not-working.jpg "Not working test app"
