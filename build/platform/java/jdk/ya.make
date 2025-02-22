RESOURCES_LIBRARY()


IF(USE_SYSTEM_JDK)
    MESSAGE(WARNING System JDK $USE_SYSTEM_JDK will be used)
ELSEIF(JDK_VERSION STREQUAL "11")
    IF(HOST_OS_LINUX)
        DECLARE_EXTERNAL_RESOURCE(JDK sbr:750420766)
    ELSEIF(HOST_OS_WINDOWS)
        DECLARE_EXTERNAL_RESOURCE(JDK sbr:750429670)
    ELSEIF(HOST_OS_DARWIN)
        DECLARE_EXTERNAL_RESOURCE(JDK sbr:750435798)
    ELSE()
        MESSAGE(FATAL_ERROR Unsupported platform for JDK11)
    ENDIF()
ELSEIF(JDK_VERSION STREQUAL "10" OR JDK10) # !JDK10 flag is deprecated, this check should be removed later
    IF(HOST_OS_LINUX)
        DECLARE_EXTERNAL_RESOURCE(JDK sbr:545649806)
    ELSEIF(HOST_OS_DARWIN)
        DECLARE_EXTERNAL_RESOURCE(JDK sbr:545649998)
    ELSEIF(HOST_OS_WINDOWS)
        DECLARE_EXTERNAL_RESOURCE(JDK sbr:545648079)
    ELSE()
        MESSAGE(FATAL_ERROR Unsupported platform for JDK10)
    ENDIF()
ELSEIF(JDK_VERSION STREQUAL "8")
    IF(HOST_OS_LINUX)
        DECLARE_EXTERNAL_RESOURCE(JDK sbr:694814242)
    ELSEIF(HOST_OS_DARWIN)
        DECLARE_EXTERNAL_RESOURCE(JDK sbr:694810478)
    ELSEIF(HOST_OS_WINDOWS)
        DECLARE_EXTERNAL_RESOURCE(JDK sbr:694827811)
    ELSE()
        MESSAGE(FATAL_ERROR Unsupported platform for JDK8)
    ENDIF()
ELSE()
    MESSAGE(FATAL_ERROR Unsupported JDK version)
ENDIF()

END()
