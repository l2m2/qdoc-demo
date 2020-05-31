#ifndef DEMOCLASS2_H
#define DEMOCLASS2_H

#include <QObject>

class DemoClass1 : public QObject
{
    Q_OBJECT
public:
    DemoClass1(QObject *parent = nullptr);

    void foo();
    void bar(const QString &str);

signals:
    void fooSignal();

public slots:
    void fooSlots();
    void exampleDontShowMe();

private:
    void funcPrivate();
};

#endif // DEMOCLASS2_H
