.class public final synthetic Lic/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm6/f;


# instance fields
.field public final synthetic a:Lic/d;

.field public final synthetic b:Lio/flutter/plugin/common/MethodChannel$Result;

.field public final synthetic c:Lcom/google/android/play/core/review/ReviewManager;


# direct methods
.method public synthetic constructor <init>(Lic/d;Lio/flutter/plugin/common/MethodChannel$Result;Lcom/google/android/play/core/review/ReviewManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lic/a;->a:Lic/d;

    iput-object p2, p0, Lic/a;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    iput-object p3, p0, Lic/a;->c:Lcom/google/android/play/core/review/ReviewManager;

    return-void
.end method


# virtual methods
.method public final onComplete(Lm6/Task;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lic/a;->a:Lic/d;

    iget-object v1, p0, Lic/a;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    iget-object v2, p0, Lic/a;->c:Lcom/google/android/play/core/review/ReviewManager;

    invoke-static {v0, v1, v2, p1}, Lic/d;->b(Lic/d;Lio/flutter/plugin/common/MethodChannel$Result;Lcom/google/android/play/core/review/ReviewManager;Lm6/Task;)V

    return-void
.end method
