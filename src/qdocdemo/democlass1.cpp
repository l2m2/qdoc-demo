#include "democlass1.h"

/*!
 * \class DemoClass1
 * \inmodule qdocdemo
 * \ingroup modules
 * \brief brief of DemoClass1  中文介绍
 */

/*!
    \fn void DemoClass1::fooSignal()

    This signal is emitted when xxx.
*/

DemoClass1::DemoClass1(QObject *parent)
    : QObject(parent)
{

}

/*!
 * \brief breif of foo
 */
void DemoClass1::foo()
{

}

/*!
 * \brief breif of bar. \a str.
 */
void DemoClass1::bar(const QString &str)
{
    Q_UNUSED(str)
}

/*!
 * \brief brief of fooSlots
 */
void DemoClass1::fooSlots()
{

}
/*!
 * \brief DemoClass1::exampleDontShowMe
 * \internal
 */
void DemoClass1::exampleDontShowMe()
{

}

void DemoClass1::funcPrivate()
{

}
