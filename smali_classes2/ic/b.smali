.class public final synthetic Lic/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm6/f;


# instance fields
.field public final synthetic a:Lic/d;

.field public final synthetic b:Lio/flutter/plugin/common/MethodChannel$Result;


# direct methods
.method public synthetic constructor <init>(Lic/d;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lic/b;->a:Lic/d;

    iput-object p2, p0, Lic/b;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    return-void
.end method


# virtual methods
.method public final onComplete(Lm6/Task;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lic/b;->a:Lic/d;

    iget-object v1, p0, Lic/b;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-static {v0, v1, p1}, Lic/d;->c(Lic/d;Lio/flutter/plugin/common/MethodChannel$Result;Lm6/Task;)V

    return-void
.end method
