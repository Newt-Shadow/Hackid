.class public final Lob/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrb/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lob/d;->onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/plugin/common/MethodChannel$Result;


# direct methods
.method constructor <init>(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lob/d$a;->a:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    const-string v0, "exception"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lsb/a;->a:Lsb/a$a;

    .line 7
    .line 8
    iget-object v1, p0, Lob/d$a;->a:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Lsb/a$a;->a(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Exception;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public b(Lqb/j;)V
    .locals 1

    .line 1
    const-string v0, "permissionStatus"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lob/d$a;->a:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {v0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
