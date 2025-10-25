.class public final synthetic Lio/flutter/plugins/firebase/messaging/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugins/firebase/messaging/ErrorCallback;


# instance fields
.field public final synthetic a:Lm6/l;


# direct methods
.method public synthetic constructor <init>(Lm6/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/firebase/messaging/n;->a:Lm6/l;

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/firebase/messaging/n;->a:Lm6/l;

    invoke-static {v0, p1}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->f(Lm6/l;Ljava/lang/String;)V

    return-void
.end method
