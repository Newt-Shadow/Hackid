.class public final Ljp/espresso3389/content_resolver/a$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/espresso3389/content_resolver/a$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Ltd/v;


# direct methods
.method constructor <init>(Ltd/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljp/espresso3389/content_resolver/a$c$a;->a:Ltd/v;

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
    .locals 2

    .line 1
    const-string p3, "errorCode"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p3, p0, Ljp/espresso3389/content_resolver/a$c$a;->a:Ltd/v;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Exception;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p1, ": "

    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {p3, v0}, Ltd/v;->E(Ljava/lang/Throwable;)Z

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public notImplemented()V
    .locals 4

    .line 1
    iget-object v0, p0, Ljp/espresso3389/content_resolver/a$c$a;->a:Ltd/v;

    .line 2
    .line 3
    new-instance v1, Lxc/j;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v1, v2, v3, v2}, Lxc/j;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Ltd/v;->E(Ljava/lang/Throwable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ljp/espresso3389/content_resolver/a$c$a;->a:Ltd/v;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ltd/v;->H(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method
