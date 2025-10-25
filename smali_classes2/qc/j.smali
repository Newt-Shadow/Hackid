.class public final synthetic Lqc/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm6/f;


# instance fields
.field public final synthetic a:Lio/flutter/plugin/common/MethodChannel$Result;

.field public final synthetic b:Lqc/m;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugin/common/MethodChannel$Result;Lqc/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqc/j;->a:Lio/flutter/plugin/common/MethodChannel$Result;

    iput-object p2, p0, Lqc/j;->b:Lqc/m;

    return-void
.end method


# virtual methods
.method public final onComplete(Lm6/Task;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lqc/j;->a:Lio/flutter/plugin/common/MethodChannel$Result;

    iget-object v1, p0, Lqc/j;->b:Lqc/m;

    invoke-static {v0, v1, p1}, Lqc/m;->c(Lio/flutter/plugin/common/MethodChannel$Result;Lqc/m;Lm6/Task;)V

    return-void
.end method
