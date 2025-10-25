.class public final synthetic Lio/flutter/plugins/firebase/core/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lm6/l;


# direct methods
.method public synthetic constructor <init>(Lm6/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/firebase/core/j;->a:Lm6/l;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/firebase/core/j;->a:Lm6/l;

    invoke-static {v0}, Lio/flutter/plugins/firebase/core/FlutterFirebasePluginRegistry;->b(Lm6/l;)V

    return-void
.end method
