#ifndef PROFIL_H
#define PROFIL_H

#include <QObject>
#include <QQmlEngine>

class Profil : public QObject {
   Q_OBJECT
   QML_ELEMENT
 public:
   Profil();
   ~Profil();

   bool GetLogStatus();

 private:
   bool profilLogStatus;
};

#endif // PROFIL_H
