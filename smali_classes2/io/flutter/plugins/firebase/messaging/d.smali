.class public final synthetic Lio/flutter/plugins/firebase/messaging/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lh7/f;

.field public final synthetic b:Lm6/l;


# direct methods
.method public synthetic constructor <init>(Lh7/f;Lm6/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/firebase/messaging/d;->a:Lh7/f;

    iput-object p2, p0, Lio/flutter/plugins/firebase/messaging/d;->b:Lm6/l;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/firebase/messaging/d;->a:Lh7/f;

    iget-object v1, p0, Lio/flutter/plugins/firebase/messaging/d;->b:Lm6/l;

    invoke-static {v0, v1}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->h(Lh7/f;Lm6/l;)V

    return-void
.end method
