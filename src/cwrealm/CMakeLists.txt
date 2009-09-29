########### next target ###############

SET(cw-realm_SRCS
AuthCodes.h
AuthSocket.cpp
AuthSocket.h
Main.cpp
RealmList.cpp
RealmList.h
)

SET(cw-realm_LINK_FLAGS "")

add_executable(cw-realm ${cw-realm_SRCS})
add_definitions(
-D_cw_REALM_CONFIG='"${CONF_DIR}/cwrealm.conf"'
)
IF (DO_MYSQL)
   SET(cw-realm_LINK_FLAGS "-pthread ${cw-realm_LINK_FLAGS}")
ENDIF(DO_MYSQL)
IF (DO_POSTGRESQL)
   SET(cw-realm_LINK_FLAGS "-pthread ${cw-realm_LINK_FLAGS}")
ENDIF(DO_POSTGRESQL)

IF (CMAKE_SYSTEM_NAME MATCHES "Darwin")
   SET(cw-realm_LINK_FLAGS "-framework Carbon ${cw-realm_LINK_FLAGS}")
ENDIF (CMAKE_SYSTEM_NAME MATCHES "Darwin")

SET_TARGET_PROPERTIES(cw-realm PROPERTIES LINK_FLAGS "${cw-realm_LINK_FLAGS}")

target_link_libraries(
cw-realm
shared
cwframework
cwsockets
cwdatabase
cwauth
cwconfig
zlib
gomp
${SSLLIB}
${MYSQL_LIBRARIES}
${POSTGRESQL_LIBRARIES}
${OSX_LIBS}
)

install(TARGETS cw-realm DESTINATION bin)


########### install files ###############

install(FILES  cwrealm.conf.dist DESTINATION etc)

