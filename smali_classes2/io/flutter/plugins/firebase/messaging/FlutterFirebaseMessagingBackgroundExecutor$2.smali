.class Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingBackgroundExecutor$2;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingBackgroundExecutor;->executeDartCallbackInBackgroundIsolate(Landroid/content/Intent;Ljava/util/concurrent/CountDownLatch;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingBackgroundExecutor;

.field final synthetic val$remoteMessageMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingBackgroundExecutor;Ljava/util/Map;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingBackgroundExecutor$2;->this$0:Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingBackgroundExecutor;

    .line 2
    .line 3
    iput-object p2, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingBackgroundExecutor$2;->val$remoteMessageMap:Ljava/util/Map;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingBackgroundExecutor;->c(Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingBackgroundExecutor;)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "userCallbackHandle"

    .line 17
    .line 18
    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    const-string p1, "message"

    .line 22
    .line 23
    invoke-virtual {p0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    return-void
.end method
