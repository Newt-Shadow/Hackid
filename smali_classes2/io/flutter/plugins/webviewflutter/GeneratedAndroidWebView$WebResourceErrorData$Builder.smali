.class public final Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceErrorData$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceErrorData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private description:Ljava/lang/String;

.field private errorCode:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceErrorData;
    .locals 2

    .line 1
    new-instance v0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceErrorData;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceErrorData;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceErrorData$Builder;->errorCode:Ljava/lang/Long;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceErrorData;->setErrorCode(Ljava/lang/Long;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceErrorData$Builder;->description:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceErrorData;->setDescription(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceErrorData$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceErrorData$Builder;->description:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setErrorCode(Ljava/lang/Long;)Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceErrorData$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceErrorData$Builder;->errorCode:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method
