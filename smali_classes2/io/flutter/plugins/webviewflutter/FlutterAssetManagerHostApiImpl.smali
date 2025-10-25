.class public Lio/flutter/plugins/webviewflutter/FlutterAssetManagerHostApiImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$FlutterAssetManagerHostApi;


# instance fields
.field final flutterAssetManager:Lio/flutter/plugins/webviewflutter/FlutterAssetManager;


# direct methods
.method public constructor <init>(Lio/flutter/plugins/webviewflutter/FlutterAssetManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/FlutterAssetManagerHostApiImpl;->flutterAssetManager:Lio/flutter/plugins/webviewflutter/FlutterAssetManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getAssetFilePathByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/FlutterAssetManagerHostApiImpl;->flutterAssetManager:Lio/flutter/plugins/webviewflutter/FlutterAssetManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/flutter/plugins/webviewflutter/FlutterAssetManager;->getAssetFilePathByName(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public list(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/FlutterAssetManagerHostApiImpl;->flutterAssetManager:Lio/flutter/plugins/webviewflutter/FlutterAssetManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/flutter/plugins/webviewflutter/FlutterAssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    new-instance p1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return-object p1

    .line 20
    :catch_0
    move-exception p1

    .line 21
    new-instance v0, Ljava/lang/RuntimeException;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v0
.end method
