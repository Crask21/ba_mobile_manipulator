/****************************************************************************
** Meta object code from reading C++ file 'teleop_panel.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.8)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/teleop_panel/src/teleop_panel.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'teleop_panel.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.8. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_teleop_panel__TeleopPanel_t {
    QByteArrayData data[16];
    char stringdata0[224];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_teleop_panel__TeleopPanel_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_teleop_panel__TeleopPanel_t qt_meta_stringdata_teleop_panel__TeleopPanel = {
    {
QT_MOC_LITERAL(0, 0, 25), // "teleop_panel::TeleopPanel"
QT_MOC_LITERAL(1, 26, 9), // "setCmdVel"
QT_MOC_LITERAL(2, 36, 0), // ""
QT_MOC_LITERAL(3, 37, 16), // "linear_velocity_"
QT_MOC_LITERAL(4, 54, 17), // "angular_velocity_"
QT_MOC_LITERAL(5, 72, 14), // "setCmdVelTopic"
QT_MOC_LITERAL(6, 87, 5), // "topic"
QT_MOC_LITERAL(7, 93, 13), // "setEStopTopic"
QT_MOC_LITERAL(8, 107, 10), // "sendCmdVel"
QT_MOC_LITERAL(9, 118, 9), // "sendEStop"
QT_MOC_LITERAL(10, 128, 17), // "updateCmdVelTopic"
QT_MOC_LITERAL(11, 146, 16), // "updateEStopTopic"
QT_MOC_LITERAL(12, 163, 14), // "toggledEnabled"
QT_MOC_LITERAL(13, 178, 19), // "toggledEStopEnabled"
QT_MOC_LITERAL(14, 198, 7), // "checked"
QT_MOC_LITERAL(15, 206, 17) // "toggledEStopValue"

    },
    "teleop_panel::TeleopPanel\0setCmdVel\0"
    "\0linear_velocity_\0angular_velocity_\0"
    "setCmdVelTopic\0topic\0setEStopTopic\0"
    "sendCmdVel\0sendEStop\0updateCmdVelTopic\0"
    "updateEStopTopic\0toggledEnabled\0"
    "toggledEStopEnabled\0checked\0"
    "toggledEStopValue"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_teleop_panel__TeleopPanel[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
      10,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    2,   64,    2, 0x0a /* Public */,
       5,    1,   69,    2, 0x0a /* Public */,
       7,    1,   72,    2, 0x0a /* Public */,
       8,    0,   75,    2, 0x09 /* Protected */,
       9,    0,   76,    2, 0x09 /* Protected */,
      10,    0,   77,    2, 0x09 /* Protected */,
      11,    0,   78,    2, 0x09 /* Protected */,
      12,    1,   79,    2, 0x09 /* Protected */,
      13,    1,   82,    2, 0x09 /* Protected */,
      15,    1,   85,    2, 0x09 /* Protected */,

 // slots: parameters
    QMetaType::Void, QMetaType::Float, QMetaType::Float,    3,    4,
    QMetaType::Void, QMetaType::QString,    6,
    QMetaType::Void, QMetaType::QString,    6,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Bool,    2,
    QMetaType::Void, QMetaType::Bool,   14,
    QMetaType::Void, QMetaType::Bool,   14,

       0        // eod
};

void teleop_panel::TeleopPanel::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<TeleopPanel *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->setCmdVel((*reinterpret_cast< float(*)>(_a[1])),(*reinterpret_cast< float(*)>(_a[2]))); break;
        case 1: _t->setCmdVelTopic((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 2: _t->setEStopTopic((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 3: _t->sendCmdVel(); break;
        case 4: _t->sendEStop(); break;
        case 5: _t->updateCmdVelTopic(); break;
        case 6: _t->updateEStopTopic(); break;
        case 7: _t->toggledEnabled((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 8: _t->toggledEStopEnabled((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 9: _t->toggledEStopValue((*reinterpret_cast< bool(*)>(_a[1]))); break;
        default: ;
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject teleop_panel::TeleopPanel::staticMetaObject = { {
    &rviz::Panel::staticMetaObject,
    qt_meta_stringdata_teleop_panel__TeleopPanel.data,
    qt_meta_data_teleop_panel__TeleopPanel,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *teleop_panel::TeleopPanel::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *teleop_panel::TeleopPanel::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_teleop_panel__TeleopPanel.stringdata0))
        return static_cast<void*>(this);
    return rviz::Panel::qt_metacast(_clname);
}

int teleop_panel::TeleopPanel::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::Panel::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 10)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 10;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 10)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 10;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
