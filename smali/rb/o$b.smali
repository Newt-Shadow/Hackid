.class public final Lrb/o$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrb/o;->o(Lio/flutter/plugin/common/MethodChannel;Ljava/lang/String;Ljava/lang/Object;Lid/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lid/a;


# direct methods
.method constructor <init>(Lid/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrb/o$b;->a:Lid/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    const-string p2, "errorCode"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lrb/o$b;->a:Lid/a;

    .line 7
    .line 8
    invoke-interface {p1}, Lid/a;->invoke()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public notImplemented()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrb/o$b;->a:Lid/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lid/a;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lrb/o$b;->a:Lid/a;

    .line 2
    .line 3
    invoke-interface {p1}, Lid/a;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method
