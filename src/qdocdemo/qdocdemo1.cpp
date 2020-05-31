#include "qdocdemo1.h"

/*!
 * \class QDocDemo1
 * \inmodule qdocdemo
 * \brief brief of QDocDemo1  中文介绍
 */

/*!
    \fn void QDocDemo1::fooSignal()

    This signal is emitted when xxx.
*/

QDocDemo1::QDocDemo1(QObject *parent)
    : QObject(parent)
{

}

/*!
 * \brief breif of foo
 */
void QDocDemo1::foo()
{

}

/*!
 * \brief breif of bar. \a str.
 */
void QDocDemo1::bar(const QString &str)
{
    Q_UNUSED(str)
}

/*!
 * \brief brief of fooSlots
 */
void QDocDemo1::fooSlots()
{

}
/*!
 * \brief QDocDemo1::exampleDontShowMe
 * \internal
 */
void QDocDemo1::exampleDontShowMe()
{

}

void QDocDemo1::funcPrivate()
{

}
