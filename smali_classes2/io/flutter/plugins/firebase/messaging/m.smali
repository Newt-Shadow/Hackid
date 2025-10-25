.class public final synthetic Lio/flutter/plugins/firebase/messaging/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugins/firebase/messaging/FlutterFirebasePermissionManager$RequestPermissionsSuccessCallback;


# instance fields
.field public final synthetic a:Ljava/util/Map;

.field public final synthetic b:Lm6/l;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Lm6/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/firebase/messaging/m;->a:Ljava/util/Map;

    iput-object p2, p0, Lio/flutter/plugins/firebase/messaging/m;->b:Lm6/l;

    return-void
.end method


# virtual methods
.method public final onSuccess(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/firebase/messaging/m;->a:Ljava/util/Map;

    iget-object v1, p0, Lio/flutter/plugins/firebase/messaging/m;->b:Lm6/l;

    invoke-static {v0, v1, p1}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->d(Ljava/util/Map;Lm6/l;I)V

    return-void
.end method
