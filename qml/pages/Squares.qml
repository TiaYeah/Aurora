import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.Layouts 1.1

Page {
    id: page

        // The effective value will be restricted by ApplicationWindow.allowedOrientations
        allowedOrientations: Orientation.All

        SilicaFlickable {
            anchors.fill: parent

            anchors.leftMargin: 100
            Item {
                id: square
                property int size: 150

            }

            Column {
                Item {
                    id: item1
                    height: square.size * 2
                    Rectangle{
                        x: 50
                        y: 50
                        width: square.size
                        height: square.size
                        color: "red"
                    }

                    Rectangle{
                        x: 50 + square.size
                        y: 50 + square.size / 2
                        width: square.size
                        height: square.size
                        color: "lightgreen"
                    }
                    Rectangle{
                        Text{
                            text: "Квадрат"
                            color: "white"
                            anchors.centerIn: parent
                        }

                        x: 50 + square.size * 1.5
                        y: 50
                        width: square.size
                        height: square.size
                        color: "blue"
                    }
                }
                Item {
                    id: item2
                    height: square.size * 3
                    anchors.top: item1.bottom
                    Column {
                        spacing: 50
                        Row{
                            spacing: 50
                            Rectangle{
                                x: 50
                                y: 50
                                width: square.size
                                height: square.size
                                color: "red"
                            }

                            Rectangle{
                                x: 50
                                y: 50
                                width: square.size
                                height: square.size
                                color: "lightgreen"
                            }
                            Rectangle{
                                x: 50
                                y: 50
                                width: square.size
                                height: square.size
                                color: "blue"
                            }
                        }
                        Row {
                            spacing: 50
                            Rectangle{
                                x: 50
                                y: 50
                                width: square.size
                                height: square.size
                                color: "pink"
                            }
                            Rectangle{
                                x: 50
                                y: 50
                                width: square.size
                                height: square.size
                                opacity: 0
                            }

                            Rectangle{
                                x: 50
                                y: 50
                                width: square.size
                                height: square.size
                                color: "black"
                            }
                        }
                    }
                }
                Item {
                    id: item3
                    anchors.top: item2.bottom
                    Grid{
                        rows: 2
                        columns: 3
                        spacing: 50
                        Rectangle{
                            width: square.size
                            height: square.size
                            color: "red"
                        }

                        Rectangle{
                            width: square.size
                            height: square.size
                            color: "lightgreen"
                        }
                        Rectangle{
                            width: square.size
                            height: square.size
                            color: "blue"
                        }

                        Rectangle{
                            width: square.size
                            height: square.size
                            color: "pink"
                        }

                        Rectangle{
                            opacity: 0
                            width: square.size
                            height: square.size
                        }


                        Rectangle{
                            width: square.size
                            height: square.size
                            color: "black"
                        }
                    }
                }
                }

            }
            VerticalScrollDecorator {}
        }
