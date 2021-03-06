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
    config/doc.qdocconf \
    global/compat.qdocconf \
    global/config.qdocconf \
    global/externalsites.qdocconf \
    global/fileextensions.qdocconf \
    global/html-config.qdocconf \
    global/html-footer.qdocconf \
    global/html-header-offline.qdocconf \
    global/macros.qdocconf \
    global/manifest-meta.qdocconf \
    global/qt-cpp-defines.qdocconf \
    global/qt-html-templates-offline-simple.qdocconf \
    global/qt-html-templates-offline.qdocconf \
    global/qt-module-defaults-offline.qdocconf \
    src/qdocdemo-index.qdoc \
    src/qdocdemo.qdoc
