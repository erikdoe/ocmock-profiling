# ocmock-profiling

Projects to profile OCMock

## iOSProfileProject

**UPDATE:** As of iOS 9.3 the problems seems to have been resolved in the runtime and the iOS version is as fast as the OS X version again.


Simply run the project in the profiler. There are no unit tests or anything. The code that runs the OCMock code is in `[ViewController viewDidLoad]`. The app will display a label when the loop is finished, usually after 5-10s.

In the Profiler look for `setupForwarderForClassMethodSelector` as an entry point. Ultimately, the vast majority of time is spent in `cache_erase_nolock` from `libobjc.A.dylib`.



## OSXProfileProject

Same story as with iOSProfileProject. For the same number of iterations it is way faster than the iOS version, though; just over 500ms.

The most expensive (in terms of performance) is `cache_eraseImp_nolock` from `libobjc.A.dylib`. 
