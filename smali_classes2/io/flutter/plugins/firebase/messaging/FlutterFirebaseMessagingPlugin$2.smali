.class Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin$2;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->setAutoInitEnabled(Ljava/util/Map;)Lm6/Task;
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
.field final synthetic this$0:Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;

.field final synthetic val$firebaseMessaging:Lcom/google/firebase/messaging/FirebaseMessaging;


# direct methods
.method constructor <init>(Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;Lcom/google/firebase/messaging/FirebaseMessaging;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin$2;->this$0:Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;

    .line 2
    .line 3
    iput-object p2, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin$2;->val$firebaseMessaging:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/google/firebase/messaging/FirebaseMessaging;->A()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string p2, "isAutoInitEnabled"

    .line 17
    .line 18
    invoke-virtual {p0, p2, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-void
.end method
