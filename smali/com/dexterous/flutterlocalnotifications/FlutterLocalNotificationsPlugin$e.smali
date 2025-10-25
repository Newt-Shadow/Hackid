.class Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dexterous/flutterlocalnotifications/e1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/plugin/common/MethodChannel$Result;

.field final synthetic b:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;


# direct methods
.method constructor <init>(Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$e;->b:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$e;->a:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$e;->a:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 2
    .line 3
    const-string v1, "permissionRequestInProgress"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-interface {v0, v1, p1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$e;->a:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
