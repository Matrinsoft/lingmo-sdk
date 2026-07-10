#include <QApplication>
#include <QPushButton>
#include <QVBoxLayout>
#include <QLabel>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    app.setApplicationName("Lingmo Custom Style Example");

    // Use Lingmo style (set via QT_QPA_PLATFORMTHEME=lingmo or programmatically)
    // app.setStyle("lingmo");

    QWidget window;
    window.setWindowTitle("Custom Style Example");
    window.setMinimumSize(400, 300);

    auto *layout = new QVBoxLayout(&window);

    auto *label = new QLabel("This window uses Lingmo Widgets style.");
    layout->addWidget(label);

    auto *primaryButton = new QPushButton("Primary Action");
    primaryButton->setObjectName("primaryButton");
    layout->addWidget(primaryButton);

    auto *secondaryButton = new QPushButton("Secondary Action");
    layout->addWidget(secondaryButton);

    window.show();
    return app.exec();
}
