.class final Lbb/a$g;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Lid/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbb/a;->onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lio/flutter/plugin/common/MethodCall;

.field final synthetic c:Lio/flutter/plugin/common/MethodChannel$Result;

.field final synthetic d:Lbb/a;


# direct methods
.method constructor <init>(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;Lbb/a;Lad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbb/a$g;->b:Lio/flutter/plugin/common/MethodCall;

    iput-object p2, p0, Lbb/a$g;->c:Lio/flutter/plugin/common/MethodChannel$Result;

    iput-object p3, p0, Lbb/a$g;->d:Lbb/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILad/e;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lad/e;)Lad/e;
    .locals 3

    .line 1
    new-instance p1, Lbb/a$g;

    iget-object v0, p0, Lbb/a$g;->b:Lio/flutter/plugin/common/MethodCall;

    iget-object v1, p0, Lbb/a$g;->c:Lio/flutter/plugin/common/MethodChannel$Result;

    iget-object v2, p0, Lbb/a$g;->d:Lbb/a;

    invoke-direct {p1, v0, v1, v2, p2}, Lbb/a$g;-><init>(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;Lbb/a;Lad/e;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ltd/l0;

    check-cast p2, Lad/e;

    invoke-virtual {p0, p1, p2}, Lbb/a$g;->invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lbb/a$g;->create(Ljava/lang/Object;Lad/e;)Lad/e;

    move-result-object p1

    check-cast p1, Lbb/a$g;

    sget-object p2, Lxc/t;->a:Lxc/t;

    invoke-virtual {p1, p2}, Lbb/a$g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lbb/a$g;->a:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    :try_start_0
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :catch_0
    move-exception p1

    .line 17
    goto :goto_2

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_1
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :try_start_1
    iget-object p1, p0, Lbb/a$g;->b:Lio/flutter/plugin/common/MethodCall;

    .line 30
    .line 31
    const-string v1, "sourceDir"

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    move-object v5, p1

    .line 38
    check-cast v5, Ljava/lang/String;

    .line 39
    .line 40
    iget-object p1, p0, Lbb/a$g;->b:Lio/flutter/plugin/common/MethodCall;

    .line 41
    .line 42
    const-string v1, "files"

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    move-object v6, p1

    .line 49
    check-cast v6, Ljava/util/List;

    .line 50
    .line 51
    iget-object p1, p0, Lbb/a$g;->b:Lio/flutter/plugin/common/MethodCall;

    .line 52
    .line 53
    const-string v1, "zipFile"

    .line 54
    .line 55
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    move-object v7, p1

    .line 60
    check-cast v7, Ljava/lang/String;

    .line 61
    .line 62
    iget-object p1, p0, Lbb/a$g;->b:Lio/flutter/plugin/common/MethodCall;

    .line 63
    .line 64
    const-string v1, "includeBaseDirectory"

    .line 65
    .line 66
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-static {p1, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    invoke-static {}, Ltd/z0;->b()Ltd/i0;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    new-instance v10, Lbb/a$g$a;

    .line 83
    .line 84
    iget-object v4, p0, Lbb/a$g;->d:Lbb/a;

    .line 85
    .line 86
    if-eqz p1, :cond_2

    .line 87
    .line 88
    move v8, v2

    .line 89
    goto :goto_0

    .line 90
    :cond_2
    const/4 p1, 0x0

    .line 91
    move v8, p1

    .line 92
    :goto_0
    const/4 v9, 0x0

    .line 93
    move-object v3, v10

    .line 94
    invoke-direct/range {v3 .. v9}, Lbb/a$g$a;-><init>(Lbb/a;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLad/e;)V

    .line 95
    .line 96
    .line 97
    iput v2, p0, Lbb/a$g;->a:I

    .line 98
    .line 99
    invoke-static {v1, v10, p0}, Ltd/g;->g(Lad/i;Lid/Function2;Lad/e;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    if-ne p1, v0, :cond_3

    .line 104
    .line 105
    return-object v0

    .line 106
    :cond_3
    :goto_1
    iget-object p1, p0, Lbb/a$g;->c:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 107
    .line 108
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 113
    .line 114
    .line 115
    goto :goto_3

    .line 116
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lbb/a$g;->c:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    const-string v2, "zip_error"

    .line 130
    .line 131
    invoke-interface {v0, v2, v1, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    :goto_3
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 135
    .line 136
    return-object p1
.end method
