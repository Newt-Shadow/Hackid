.class Lio/flutter/plugins/firebase/messaging/PluginRegistrantException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "PluginRegistrantCallback is not set. Did you forget to call FlutterFirebaseMessagingBackgroundService.setPluginRegistrant? See the documentation for instructions."

    .line 2
    .line 3
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
