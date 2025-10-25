.class final Lbb/a$f;
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
    iput-object p1, p0, Lbb/a$f;->b:Lio/flutter/plugin/common/MethodCall;

    iput-object p2, p0, Lbb/a$f;->c:Lio/flutter/plugin/common/MethodChannel$Result;

    iput-object p3, p0, Lbb/a$f;->d:Lbb/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILad/e;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lad/e;)Lad/e;
    .locals 3

    .line 1
    new-instance p1, Lbb/a$f;

    iget-object v0, p0, Lbb/a$f;->b:Lio/flutter/plugin/common/MethodCall;

    iget-object v1, p0, Lbb/a$f;->c:Lio/flutter/plugin/common/MethodChannel$Result;

    iget-object v2, p0, Lbb/a$f;->d:Lbb/a;

    invoke-direct {p1, v0, v1, v2, p2}, Lbb/a$f;-><init>(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;Lbb/a;Lad/e;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ltd/l0;

    check-cast p2, Lad/e;

    invoke-virtual {p0, p1, p2}, Lbb/a$f;->invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lbb/a$f;->create(Ljava/lang/Object;Lad/e;)Lad/e;

    move-result-object p1

    check-cast p1, Lbb/a$f;

    sget-object p2, Lxc/t;->a:Lxc/t;

    invoke-virtual {p1, p2}, Lbb/a$f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lbb/a$f;->a:I

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
    goto/16 :goto_1

    .line 16
    .line 17
    :catch_0
    move-exception p1

    .line 18
    goto/16 :goto_2

    .line 19
    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :try_start_1
    iget-object p1, p0, Lbb/a$f;->b:Lio/flutter/plugin/common/MethodCall;

    .line 32
    .line 33
    const-string v1, "sourceDir"

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    move-object v5, p1

    .line 40
    check-cast v5, Ljava/lang/String;

    .line 41
    .line 42
    iget-object p1, p0, Lbb/a$f;->b:Lio/flutter/plugin/common/MethodCall;

    .line 43
    .line 44
    const-string v1, "zipFile"

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    move-object v6, p1

    .line 51
    check-cast v6, Ljava/lang/String;

    .line 52
    .line 53
    iget-object p1, p0, Lbb/a$f;->b:Lio/flutter/plugin/common/MethodCall;

    .line 54
    .line 55
    const-string v1, "recurseSubDirs"

    .line 56
    .line 57
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-static {p1, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    iget-object p1, p0, Lbb/a$f;->b:Lio/flutter/plugin/common/MethodCall;

    .line 70
    .line 71
    const-string v1, "includeBaseDirectory"

    .line 72
    .line 73
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-static {p1, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    iget-object v1, p0, Lbb/a$f;->b:Lio/flutter/plugin/common/MethodCall;

    .line 86
    .line 87
    const-string v3, "reportProgress"

    .line 88
    .line 89
    invoke-virtual {v1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    move-object v9, v1

    .line 94
    check-cast v9, Ljava/lang/Boolean;

    .line 95
    .line 96
    iget-object v1, p0, Lbb/a$f;->b:Lio/flutter/plugin/common/MethodCall;

    .line 97
    .line 98
    const-string v3, "jobId"

    .line 99
    .line 100
    invoke-virtual {v1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    move-object v10, v1

    .line 105
    check-cast v10, Ljava/lang/Integer;

    .line 106
    .line 107
    invoke-static {}, Ltd/z0;->b()Ltd/i0;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    new-instance v12, Lbb/a$f$a;

    .line 112
    .line 113
    iget-object v4, p0, Lbb/a$f;->d:Lbb/a;

    .line 114
    .line 115
    if-eqz p1, :cond_2

    .line 116
    .line 117
    move v8, v2

    .line 118
    goto :goto_0

    .line 119
    :cond_2
    const/4 p1, 0x0

    .line 120
    move v8, p1

    .line 121
    :goto_0
    const/4 v11, 0x0

    .line 122
    move-object v3, v12

    .line 123
    invoke-direct/range {v3 .. v11}, Lbb/a$f$a;-><init>(Lbb/a;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Boolean;Ljava/lang/Integer;Lad/e;)V

    .line 124
    .line 125
    .line 126
    iput v2, p0, Lbb/a$f;->a:I

    .line 127
    .line 128
    invoke-static {v1, v12, p0}, Ltd/g;->g(Lad/i;Lid/Function2;Lad/e;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    if-ne p1, v0, :cond_3

    .line 133
    .line 134
    return-object v0

    .line 135
    :cond_3
    :goto_1
    iget-object p1, p0, Lbb/a$f;->c:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 136
    .line 137
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 142
    .line 143
    .line 144
    goto :goto_3

    .line 145
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lbb/a$f;->c:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 149
    .line 150
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    const-string v2, "zip_error"

    .line 159
    .line 160
    invoke-interface {v0, v2, v1, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    :goto_3
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 164
    .line 165
    return-object p1
.end method
