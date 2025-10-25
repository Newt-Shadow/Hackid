.class public final synthetic Lio/flutter/plugins/firebase/core/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/flutter/plugins/firebase/core/FlutterFirebaseCorePlugin;

.field public final synthetic b:Lh7/f;

.field public final synthetic c:Lm6/l;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugins/firebase/core/FlutterFirebaseCorePlugin;Lh7/f;Lm6/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/firebase/core/f;->a:Lio/flutter/plugins/firebase/core/FlutterFirebaseCorePlugin;

    iput-object p2, p0, Lio/flutter/plugins/firebase/core/f;->b:Lh7/f;

    iput-object p3, p0, Lio/flutter/plugins/firebase/core/f;->c:Lm6/l;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/firebase/core/f;->a:Lio/flutter/plugins/firebase/core/FlutterFirebaseCorePlugin;

    iget-object v1, p0, Lio/flutter/plugins/firebase/core/f;->b:Lh7/f;

    iget-object v2, p0, Lio/flutter/plugins/firebase/core/f;->c:Lm6/l;

    invoke-static {v0, v1, v2}, Lio/flutter/plugins/firebase/core/FlutterFirebaseCorePlugin;->g(Lio/flutter/plugins/firebase/core/FlutterFirebaseCorePlugin;Lh7/f;Lm6/l;)V

    return-void
.end method
