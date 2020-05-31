#ifndef QDOCDEMO1_H
#define QDOCDEMO1_H

#include <QObject>

class QDocDemo1 : public QObject
{
    Q_OBJECT
public:
    QDocDemo1(QObject *parent = nullptr);

    void foo();
    void bar(const QString &str);
    void exampleNoQdoc();

signals:
    void fooSignal();

public slots:
    void fooSlots();
    void exampleDontShowMe();

private:
    void funcPrivate();
};

#endif // QDOCDEMO1_H
