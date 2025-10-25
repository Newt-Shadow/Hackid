.class public Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$FlutterError;,
        Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$HttpAuthHandlerFlutterApi;,
        Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$HttpAuthHandlerHostApi;,
        Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$GeolocationPermissionsCallbackFlutterApi;,
        Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$GeolocationPermissionsCallbackHostApi;,
        Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ViewFlutterApi;,
        Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$CustomViewCallbackFlutterApi;,
        Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$CustomViewCallbackHostApi;,
        Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$PermissionRequestFlutterApi;,
        Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$PermissionRequestHostApi;,
        Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$FileChooserParamsFlutterApi;,
        Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebStorageHostApi;,
        Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi;,
        Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApiCodec;,
        Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$FlutterAssetManagerHostApi;,
        Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientHostApi;,
        Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$DownloadListenerFlutterApi;,
        Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$DownloadListenerHostApi;,
        Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi;,
        Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApiCodec;,
        Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientHostApi;,
        Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$JavaScriptChannelFlutterApi;,
        Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$JavaScriptChannelHostApi;,
        Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebSettingsHostApi;,
        Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewFlutterApi;,
        Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;,
        Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApiCodec;,
        Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$CookieManagerHostApi;,
        Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$JavaObjectFlutterApi;,
        Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$JavaObjectHostApi;,
        Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$InstanceManagerHostApi;,
        Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$Result;,
        Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessage;,
        Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewPoint;,
        Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceErrorData;,
        Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceResponseData;,
        Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData;,
        Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;,
        Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$FileChooserMode;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    .line 6
    .line 7
    instance-of v1, p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$FlutterError;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$FlutterError;

    .line 12
    .line 13
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$FlutterError;->code:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$FlutterError;->details:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v2, "Cause: "

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v2, ", Stacktrace: "

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    :goto_0
    return-object v0
.end method
