.class public final synthetic Lfa/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/flutter/plugin/common/MethodChannel$Result;

.field public final synthetic b:Lja/a;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugin/common/MethodChannel$Result;Lja/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfa/s;->a:Lio/flutter/plugin/common/MethodChannel$Result;

    iput-object p2, p0, Lfa/s;->b:Lja/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lfa/s;->a:Lio/flutter/plugin/common/MethodChannel$Result;

    iget-object v1, p0, Lfa/s;->b:Lja/a;

    invoke-static {v0, v1}, Lfa/u;->p(Lio/flutter/plugin/common/MethodChannel$Result;Lja/a;)V

    return-void
.end method
