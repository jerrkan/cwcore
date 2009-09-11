
########### next target ###############

SET(cw-core_SRCS
CliRunnable.cpp
CliRunnable.h
Main.cpp
Master.cpp
Master.h
RASocket.cpp
RASocket.h
WorldRunnable.cpp
WorldRunnable.h
)

SET(cw-core_LINK_FLAGS "")

add_executable(cw-core ${cw-core_SRCS})
add_definitions(
-D_TRINITY_CORE_CONFIG='"${CONF_DIR}/cwcore.conf"'
)
IF (DO_MYSQL)
    SET(cw-core_LINK_FLAGS "-pthread ${cw-core_LINK_FLAGS}")
ENDIF(DO_MYSQL)
IF (DO_POSTGRESQL)
    SET(cw-core_LINK_FLAGS "-pthread ${cw-core_LINK_FLAGS}")
ENDIF(DO_POSTGRESQL)


IF (CMAKE_SYSTEM_NAME MATCHES "Darwin")
    SET(cw-core_LINK_FLAGS "-framework Carbon ${cw-core_LINK_FLAGS}")
    SET(SCRIPT_LIB "")
ENDIF (CMAKE_SYSTEM_NAME MATCHES "Darwin")

SET_TARGET_PROPERTIES(cw-core PROPERTIES LINK_FLAGS "${cw-core_LINK_FLAGS}")

target_link_libraries(
cw-core
game
shared
zlib
cwframework
cwsockets
cwdatabase
cwauth
cwconfig
vmaps
ZThread
g3dlite
${READLINE_LIBRARY}
${TERMCAP_LIBRARY}
gomp
${SCRIPT_LIB}
${MYSQL_LIBRARIES}
${POSTGRESQL_LIBRARIES}
${SSLLIB}
${ACE_LIBRARY}
${ZLIB}
${OSX_LIBS}
)

install(TARGETS cw-core DESTINATION bin)


########### install files ###############

install(FILES  cwcore.conf.dist DESTINATION etc)

