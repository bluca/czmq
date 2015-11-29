/*
################################################################################
#  THIS FILE IS 100% GENERATED BY ZPROJECT; DO NOT EDIT EXCEPT EXPERIMENTALLY  #
#  Please refer to the README for information about making permanent changes.  #
################################################################################
*/
#ifndef Q_CZMQ_H
#define Q_CZMQ_H

#include <QObject>
#include <QString>
#include <czmq.h>

#if defined(Q_OS_WIN)
#  if !defined(QT_CZMQ_EXPORT) && !defined(QT_CZMQ_IMPORT)
#    define QT_CZMQ_EXPORT
#  elif defined(QT_CZMQ_IMPORT)
#    if defined(QT_CZMQ_EXPORT)
#      undef QT_CZMQ_EXPORT
#    endif
#    define QT_CZMQ_EXPORT __declspec(dllimport)
#  elif defined(QT_CZMQ_EXPORT)
#    undef QT_CZMQ_EXPORT
#    define QT_CZMQ_EXPORT __declspec(dllexport)
#  endif
#else
#  define QT_CZMQ_EXPORT
#endif

//  Opaque class structures to allow forward references
class QZactor;
class QZarmour;
class QZdir;
class QZdirPatch;
class QZfile;
class QZframe;
class QZhash;
class QZhashx;
class QZiflist;
class QZlist;
class QZloop;
class QZmsg;
class QZpoller;
class QZsock;
class QZstr;
class QZtrie;
class QZuuid;

//  Public API classes
#include "qzactor.h"
#include "qzarmour.h"
#include "qzdir.h"
#include "qzdirpatch.h"
#include "qzfile.h"
#include "qzframe.h"
#include "qzhash.h"
#include "qzhashx.h"
#include "qziflist.h"
#include "qzlist.h"
#include "qzloop.h"
#include "qzmsg.h"
#include "qzpoller.h"
#include "qzsock.h"
#include "qzstr.h"
#include "qztrie.h"
#include "qzuuid.h"

#endif //  Q_CZMQ_H
/*
################################################################################
#  THIS FILE IS 100% GENERATED BY ZPROJECT; DO NOT EDIT EXCEPT EXPERIMENTALLY  #
#  Please refer to the README for information about making permanent changes.  #
################################################################################
*/
