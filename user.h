#ifndef USER_H
#define USER_H

#include <QObject>
#include <QQmlEngine>

#include "profil.h"

class User : public QObject {
   Q_OBJECT
   QML_ELEMENT
 public:
   User();
   ~User();

 private:

};

#endif // USER_H
