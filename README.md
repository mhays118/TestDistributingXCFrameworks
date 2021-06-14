# TestDistributingXCFrameworks

Example project showing how to distribute multiple XCFrameworks via Swift Package Manager (SPM) as a single package.

Note how there is a wrapping project in the `Package.swift` file and there are dummy files in that path. That is necessary as of now to include multiple XCFrameworks. 

To see the library being used, look at the consumer app: 
https://github.com/mhays118/TestSPMLibraryConsumerApp

This has the XCFrameworks for the following library:
https://github.com/mhays118/TestMergingModulesInSPM
