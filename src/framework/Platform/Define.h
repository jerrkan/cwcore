/*
 * Copyright (C) 2005-2009 MaNGOS <http://getmangos.com/>
 *
 * Copyright (C) 2009 CWCore <http://www.wow-extrem.de/>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

#ifndef CW_DEFINE_H
#define CW_DEFINE_H

#include <sys/types.h>

#include <ace/Basic_Types.h>
#include <ace/ACE_export.h>

#include "Platform/CompilerDefs.h"

#define CW_LITTLEENDIAN 0
#define CW_BIGENDIAN    1

#if !defined(CW_ENDIAN)
#  if defined (ACE_BIG_ENDIAN)
#    define CW_ENDIAN CW_BIGENDIAN
#  else //ACE_BYTE_ORDER != ACE_BIG_ENDIAN
#    define CW_ENDIAN CW_LITTLEENDIAN
#  endif //ACE_BYTE_ORDER
#endif //CW_ENDIAN

#if PLATFORM == PLATFORM_WINDOWS
#  define CW_EXPORT __declspec(dllexport)
#  define CW_LIBRARY_HANDLE HMODULE
#  define CW_LOAD_LIBRARY(a) LoadLibrary(a)
#  define CW_CLOSE_LIBRARY FreeLibrary
#  define CW_GET_PROC_ADDR GetProcAddress
#  define CW_IMPORT __cdecl
#  define CW_SCRIPT_EXT ".dll"
#  define CW_SCRIPT_NAME "CWScript"
#  define CW_PATH_MAX MAX_PATH
#else //PLATFORM != PLATFORM_WINDOWS
#  define CW_LIBRARY_HANDLE void*
#  define CW_EXPORT export
#  define CW_LOAD_LIBRARY(a) dlopen(a,RTLD_NOW)
#  define CW_CLOSE_LIBRARY dlclose
#  define CW_GET_PROC_ADDR dlsym
#  if defined(__APPLE_CC__) && defined(BIG_ENDIAN)
#    define CW_IMPORT __attribute__ ((longcall))
#  elif defined(__x86_64__)
#    define CW_IMPORT
#  else
#    define CW_IMPORT __attribute__ ((cdecl))
#  endif //__APPLE_CC__ && BIG_ENDIAN
#  if defined(__APPLE_CC__)
#    define CW_SCRIPT_EXT ".dylib"
#    if defined(DO_SCRIPTS)
#      define CW_SCRIPT_NAME "../lib/libcwscript"
#    else
#      define CW_SCRIPT_NAME "../lib/libcwinterface"
#    endif // DO_SCRIPTS
#  else
#    define CW_SCRIPT_EXT ".so"
#    if defined(DO_SCRIPTS)
#      define CW_SCRIPT_NAME "libcwscript"
#    else
#      define CW_SCRIPT_NAME "libcwinterface"
#    endif // DO_SCRIPTS
#  endif //__APPLE_CC__
#  define CW_PATH_MAX PATH_MAX
#endif //PLATFORM

#if PLATFORM == PLATFORM_WINDOWS
#  ifdef CW_WIN32_DLL_IMPORT
#    define CW_DLL_DECL __declspec(dllimport)
#  else //!CW_WIN32_DLL_IMPORT
#    ifdef CW_WIND_DLL_EXPORT
#      define CW_DLL_DECL __declspec(dllexport)
#    else //!CW_WIND_DLL_EXPORT
#      define CW_DLL_DECL
#    endif //CW_WIND_DLL_EXPORT
#  endif //CW_WIN32_DLL_IMPORT
#else //PLATFORM != PLATFORM_WINDOWS
#  define CW_DLL_DECL
#endif //PLATFORM

#if PLATFORM == PLATFORM_WINDOWS
#  define CW_DLL_SPEC __declspec(dllexport)
#  ifndef DECLSPEC_NORETURN
#    define DECLSPEC_NORETURN __declspec(noreturn)
#  endif //DECLSPEC_NORETURN
#else //PLATFORM != PLATFORM_WINDOWS
#  define CW_DLL_SPEC
#  define DECLSPEC_NORETURN
#endif //PLATFORM

#if !defined(DEBUG)
#  define CW_INLINE inline
#else //DEBUG
#  if !defined(CW_DEBUG)
#    define CW_DEBUG
#  endif //CW_DEBUG
#  define CW_INLINE
#endif //!DEBUG

#if COMPILER == COMPILER_GNU
#  define ATTR_NORETURN __attribute__((noreturn))
#  define ATTR_PRINTF(F,V) __attribute__ ((format (printf, F, V)))
#else //COMPILER != COMPILER_GNU
#  define ATTR_NORETURN
#  define ATTR_PRINTF(F,V)
#endif //COMPILER == COMPILER_GNU

typedef ACE_INT64 int64;
typedef ACE_INT32 int32;
typedef ACE_INT16 int16;
typedef ACE_INT8 int8;
typedef ACE_UINT64 uint64;
typedef ACE_UINT32 uint32;
typedef ACE_UINT16 uint16;
typedef ACE_UINT8 uint8;

#if COMPILER != COMPILER_MICROSOFT
typedef uint16      WORD;
typedef uint32      DWORD;
#endif //COMPILER

typedef uint64 OBJECT_HANDLE;

#define MULTI_THREAD_MAP
#ifdef MULTI_THREAD_MAP
#define MAP_BASED_RAND_GEN
#endif

#define MaNGOS              CW
#define MANGOS_DLL_DECL     CW_DLL_DECL
#define MANGOS_DLL_SPEC     CW_DLL_SPEC
#define GetMangosString     GetCWString

#if defined(MANGOS_DEBUG) || defined(CW_DEBUG)
#  ifndef CW_DEBUG
#    define CW_DEBUG
#  endif
#  ifndef MANGOS_DEBUG
#    define MANGOS_DEBUG
#  endif
#endif

#if !defined(DEBUG) && !defined(MANGOS_DEBUG) && !defined(TRINITY_DEBUG)
#define MULTI_THREAD_MAP
#endif

#ifdef MULTI_THREAD_MAP
#define MAP_BASED_RAND_GEN
#endif

#ifndef CLIENT_VER
#define CLIENT_VER 313
#endif


#endif //CW_DEFINE_H

