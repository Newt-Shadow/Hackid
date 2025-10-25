.class public final Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceResponseData$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceResponseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private statusCode:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceResponseData;
    .locals 2

    .line 1
    new-instance v0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceResponseData;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceResponseData;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceResponseData$Builder;->statusCode:Ljava/lang/Long;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceResponseData;->setStatusCode(Ljava/lang/Long;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public setStatusCode(Ljava/lang/Long;)Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceResponseData$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceResponseData$Builder;->statusCode:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method
