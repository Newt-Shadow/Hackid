.class public final synthetic Lqc/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm6/f;


# instance fields
.field public final synthetic a:Lio/flutter/plugin/common/MethodChannel$Result;

.field public final synthetic b:Lqc/m;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugin/common/MethodChannel$Result;Lqc/m;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqc/c;->a:Lio/flutter/plugin/common/MethodChannel$Result;

    iput-object p2, p0, Lqc/c;->b:Lqc/m;

    iput-boolean p3, p0, Lqc/c;->c:Z

    return-void
.end method


# virtual methods
.method public final onComplete(Lm6/Task;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lqc/c;->a:Lio/flutter/plugin/common/MethodChannel$Result;

    iget-object v1, p0, Lqc/c;->b:Lqc/m;

    iget-boolean v2, p0, Lqc/c;->c:Z

    invoke-static {v0, v1, v2, p1}, Lqc/m;->b(Lio/flutter/plugin/common/MethodChannel$Result;Lqc/m;ZLm6/Task;)V

    return-void
.end method
