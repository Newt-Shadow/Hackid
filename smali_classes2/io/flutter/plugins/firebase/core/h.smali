.class public final synthetic Lio/flutter/plugins/firebase/core/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lm6/l;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lm6/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/firebase/core/h;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/flutter/plugins/firebase/core/h;->b:Lm6/l;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/firebase/core/h;->a:Ljava/lang/String;

    iget-object v1, p0, Lio/flutter/plugins/firebase/core/h;->b:Lm6/l;

    invoke-static {v0, v1}, Lio/flutter/plugins/firebase/core/FlutterFirebaseCorePlugin;->m(Ljava/lang/String;Lm6/l;)V

    return-void
.end method
