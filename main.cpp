#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QIcon>

int main(int argc, char *argv[]) {
   QGuiApplication app(argc, argv);

   QQmlApplicationEngine engine;
   const QUrl url(u"qrc:/CryptoNotes_V2/Main.qml"_qs);
   QObject::connect(
       &engine, &QQmlApplicationEngine::objectCreationFailed, &app,
       []() { QCoreApplication::exit(-1); }, Qt::QueuedConnection);
   app.setWindowIcon(QIcon(":/img/Icon/TitleIMG_1.jpg"));
   engine.load(url);

   return app.exec();
}
