.class public final Lme/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxa/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/e;->y(Ljava/util/List;Lio/flutter/plugin/common/MethodChannel$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lme/e;


# direct methods
.method constructor <init>(Ljava/util/List;Lme/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lme/e$b;->a:Ljava/util/List;

    .line 2
    .line 3
    iput-object p2, p0, Lme/e$b;->b:Lme/e;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lxa/b;)V
    .locals 3

    .line 1
    const-string v0, "result"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lme/e$b;->a:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lme/e$b;->a:Ljava/util/List;

    .line 15
    .line 16
    invoke-virtual {p1}, Lxa/b;->a()Ld9/a;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    :cond_0
    invoke-virtual {p1}, Lxa/b;->e()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "code"

    .line 31
    .line 32
    invoke-static {v1, v0}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1}, Lxa/b;->a()Ld9/a;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v2, "type"

    .line 45
    .line 46
    invoke-static {v2, v1}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const-string v2, "rawBytes"

    .line 51
    .line 52
    invoke-virtual {p1}, Lxa/b;->c()[B

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {v2, p1}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    filled-new-array {v0, v1, p1}, [Lxc/k;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {p1}, Lyc/e0;->h([Lxc/k;)Ljava/util/Map;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iget-object v0, p0, Lme/e$b;->b:Lme/e;

    .line 69
    .line 70
    invoke-static {v0}, Lme/e;->e(Lme/e;)Lio/flutter/plugin/common/MethodChannel;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const-string v1, "onRecognizeQR"

    .line 75
    .line 76
    invoke-virtual {v0, v1, p1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 1

    .line 1
    const-string v0, "resultPoints"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
