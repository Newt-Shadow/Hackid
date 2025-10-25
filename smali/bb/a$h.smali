.class final Lbb/a$h;
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
    iput-object p1, p0, Lbb/a$h;->b:Lio/flutter/plugin/common/MethodCall;

    iput-object p2, p0, Lbb/a$h;->c:Lio/flutter/plugin/common/MethodChannel$Result;

    iput-object p3, p0, Lbb/a$h;->d:Lbb/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILad/e;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lad/e;)Lad/e;
    .locals 3

    .line 1
    new-instance p1, Lbb/a$h;

    iget-object v0, p0, Lbb/a$h;->b:Lio/flutter/plugin/common/MethodCall;

    iget-object v1, p0, Lbb/a$h;->c:Lio/flutter/plugin/common/MethodChannel$Result;

    iget-object v2, p0, Lbb/a$h;->d:Lbb/a;

    invoke-direct {p1, v0, v1, v2, p2}, Lbb/a$h;-><init>(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;Lbb/a;Lad/e;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ltd/l0;

    check-cast p2, Lad/e;

    invoke-virtual {p0, p1, p2}, Lbb/a$h;->invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lbb/a$h;->create(Ljava/lang/Object;Lad/e;)Lad/e;

    move-result-object p1

    check-cast p1, Lbb/a$h;

    sget-object p2, Lxc/t;->a:Lxc/t;

    invoke-virtual {p1, p2}, Lbb/a$h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lbb/a$h;->a:I

    .line 6
    .line 7
    const-string v2, "FlutterArchivePlugin"

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    if-ne v1, v3, :cond_0

    .line 13
    .line 14
    :try_start_0
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_1

    .line 18
    :catch_0
    move-exception p1

    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_1
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :try_start_1
    iget-object p1, p0, Lbb/a$h;->b:Lio/flutter/plugin/common/MethodCall;

    .line 33
    .line 34
    const-string v1, "zipFile"

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    move-object v6, p1

    .line 41
    check-cast v6, Ljava/lang/String;

    .line 42
    .line 43
    iget-object p1, p0, Lbb/a$h;->b:Lio/flutter/plugin/common/MethodCall;

    .line 44
    .line 45
    const-string v1, "zipFileCharset"

    .line 46
    .line 47
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Ljava/lang/String;

    .line 52
    .line 53
    iget-object v1, p0, Lbb/a$h;->b:Lio/flutter/plugin/common/MethodCall;

    .line 54
    .line 55
    const-string v4, "destinationDir"

    .line 56
    .line 57
    invoke-virtual {v1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    move-object v8, v1

    .line 62
    check-cast v8, Ljava/lang/String;

    .line 63
    .line 64
    iget-object v1, p0, Lbb/a$h;->b:Lio/flutter/plugin/common/MethodCall;

    .line 65
    .line 66
    const-string v4, "reportProgress"

    .line 67
    .line 68
    invoke-virtual {v1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    move-object v9, v1

    .line 73
    check-cast v9, Ljava/lang/Boolean;

    .line 74
    .line 75
    iget-object v1, p0, Lbb/a$h;->b:Lio/flutter/plugin/common/MethodCall;

    .line 76
    .line 77
    const-string v4, "jobId"

    .line 78
    .line 79
    invoke-virtual {v1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    move-object v10, v1

    .line 84
    check-cast v10, Ljava/lang/Integer;

    .line 85
    .line 86
    if-eqz p1, :cond_2

    .line 87
    .line 88
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    goto :goto_0

    .line 93
    :cond_2
    const/4 p1, 0x0

    .line 94
    :goto_0
    move-object v7, p1

    .line 95
    const-string p1, "onMethodCall / unzip..."

    .line 96
    .line 97
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    invoke-static {}, Ltd/z0;->b()Ltd/i0;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    new-instance v1, Lbb/a$h$a;

    .line 105
    .line 106
    iget-object v5, p0, Lbb/a$h;->d:Lbb/a;

    .line 107
    .line 108
    const/4 v11, 0x0

    .line 109
    move-object v4, v1

    .line 110
    invoke-direct/range {v4 .. v11}, Lbb/a$h$a;-><init>(Lbb/a;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Lad/e;)V

    .line 111
    .line 112
    .line 113
    iput v3, p0, Lbb/a$h;->a:I

    .line 114
    .line 115
    invoke-static {p1, v1, p0}, Ltd/g;->g(Lad/i;Lid/Function2;Lad/e;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    if-ne p1, v0, :cond_3

    .line 120
    .line 121
    return-object v0

    .line 122
    :cond_3
    :goto_1
    const-string p1, "...onMethodCall / unzip"

    .line 123
    .line 124
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lbb/a$h;->c:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 128
    .line 129
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 134
    .line 135
    .line 136
    goto :goto_3

    .line 137
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 138
    .line 139
    .line 140
    iget-object v0, p0, Lbb/a$h;->c:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 141
    .line 142
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    const-string v2, "unzip_error"

    .line 151
    .line 152
    invoke-interface {v0, v2, v1, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    :goto_3
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 156
    .line 157
    return-object p1
.end method
