.class public final synthetic Lfa/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfa/d0$c;


# instance fields
.field public final synthetic a:Lio/flutter/plugin/common/MethodChannel$Result;

.field public final synthetic b:Lfa/b0;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugin/common/MethodChannel$Result;Lfa/b0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfa/z;->a:Lio/flutter/plugin/common/MethodChannel$Result;

    iput-object p2, p0, Lfa/z;->b:Lfa/b0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lfa/z;->a:Lio/flutter/plugin/common/MethodChannel$Result;

    iget-object v1, p0, Lfa/z;->b:Lfa/b0;

    invoke-static {v0, v1, p1, p2}, Lfa/b0;->a(Lio/flutter/plugin/common/MethodChannel$Result;Lfa/b0;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
