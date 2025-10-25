.class public final Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private hasGesture:Ljava/lang/Boolean;

.field private isForMainFrame:Ljava/lang/Boolean;

.field private isRedirect:Ljava/lang/Boolean;

.field private method:Ljava/lang/String;

.field private requestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData;
    .locals 2

    .line 1
    new-instance v0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData$Builder;->url:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData;->setUrl(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData$Builder;->isForMainFrame:Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData;->setIsForMainFrame(Ljava/lang/Boolean;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData$Builder;->isRedirect:Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData;->setIsRedirect(Ljava/lang/Boolean;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData$Builder;->hasGesture:Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData;->setHasGesture(Ljava/lang/Boolean;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData$Builder;->method:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData;->setMethod(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData$Builder;->requestHeaders:Ljava/util/Map;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData;->setRequestHeaders(Ljava/util/Map;)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method public setHasGesture(Ljava/lang/Boolean;)Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData$Builder;->hasGesture:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public setIsForMainFrame(Ljava/lang/Boolean;)Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData$Builder;->isForMainFrame:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public setIsRedirect(Ljava/lang/Boolean;)Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData$Builder;->isRedirect:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public setMethod(Ljava/lang/String;)Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData$Builder;->method:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setRequestHeaders(Ljava/util/Map;)Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData$Builder;->requestHeaders:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData$Builder;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
