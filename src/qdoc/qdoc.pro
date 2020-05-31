TEMPLATE = aux

TargetName=qdocdemo

HELPGENERATOR = $$shell_path($$[QT_INSTALL_BINS]/qhelpgenerator)
QDOC_BIN = $$shell_path($$[QT_INSTALL_BINS]/qdoc)
QDOC_GLOBAL = QT_INSTALL_DOCS=$$[QT_INSTALL_DOCS]/src
QDOC_INDEX_DIR=$$[QT_INSTALL_DOCS]

QHP_FILE = $$PWD/html/$${TargetName}.qhp
QCH_FILE = $$PWD/$${TargetName}.qch

doc_generate.TARGET = $$TargetName.qhp
doc_generate.commands = $$QDOC_BIN $$PWD/config/doc.qdocconf
qch_docs.TARGET=$$TargetName.qch
qch_docs.commands = $$HELPGENERATOR -o $$QCH_FILE $$QHP_FILE
qch_docs.depends += doc_generate

QMAKE_EXTRA_TARGETS += doc_generate qch_docs

PRE_TARGETDEPS += qch_docs

DISTFILES += \
    config/doc.qdocconf
