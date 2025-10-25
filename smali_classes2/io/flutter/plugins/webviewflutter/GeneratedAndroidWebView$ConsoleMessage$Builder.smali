.class public final Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessage$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private level:Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;

.field private lineNumber:Ljava/lang/Long;

.field private message:Ljava/lang/String;

.field private sourceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessage;
    .locals 2

    .line 1
    new-instance v0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessage;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessage;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessage$Builder;->lineNumber:Ljava/lang/Long;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessage;->setLineNumber(Ljava/lang/Long;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessage$Builder;->message:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessage;->setMessage(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessage$Builder;->level:Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessage;->setLevel(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessage$Builder;->sourceId:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessage;->setSourceId(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public setLevel(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;)Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessage$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessage$Builder;->level:Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;

    .line 2
    .line 3
    return-object p0
.end method

.method public setLineNumber(Ljava/lang/Long;)Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessage$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessage$Builder;->lineNumber:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessage$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessage$Builder;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setSourceId(Ljava/lang/String;)Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessage$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessage$Builder;->sourceId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
