.class Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->getToken()Lm6/Task;
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

.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin$1;->this$0:Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;

    .line 2
    .line 3
    iput-object p2, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin$1;->val$token:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string p1, "token"

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    return-void
.end method
