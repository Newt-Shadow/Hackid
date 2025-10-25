.class public final Loc/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# instance fields
.field private final a:Loc/d;

.field private final b:Ldev/fluttercommunity/plus/share/a;


# direct methods
.method public constructor <init>(Loc/d;Ldev/fluttercommunity/plus/share/a;)V
    .locals 1

    .line 1
    const-string v0, "share"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "manager"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Loc/a;->a:Loc/d;

    .line 15
    .line 16
    iput-object p2, p0, Loc/a;->b:Ldev/fluttercommunity/plus/share/a;

    .line 17
    .line 18
    return-void
.end method

.method private final a(Lio/flutter/plugin/common/MethodCall;)V
    .locals 1

    .line 1
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of p1, p1, Ljava/util/Map;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string v0, "Map arguments expected"

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1
.end method

.method private final b(ZLio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, "dev.fluttercommunity.plus/share/unavailable"

    .line 4
    .line 5
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 7

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "result"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Loc/a;->a(Lio/flutter/plugin/common/MethodCall;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iget-object v1, p0, Loc/a;->b:Ldev/fluttercommunity/plus/share/a;

    .line 16
    .line 17
    invoke-virtual {v1, p2}, Ldev/fluttercommunity/plus/share/a;->c(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 18
    .line 19
    .line 20
    :try_start_0
    iget-object v1, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 21
    .line 22
    if-eqz v1, :cond_6

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    const v3, -0x6bf77228

    .line 29
    .line 30
    .line 31
    const-string v4, "subject"

    .line 32
    .line 33
    const-string v5, "text"

    .line 34
    .line 35
    if-eq v2, v3, :cond_4

    .line 36
    .line 37
    const v3, -0x2c5502f3

    .line 38
    .line 39
    .line 40
    const-string v6, "null cannot be cast to non-null type kotlin.String"

    .line 41
    .line 42
    if-eq v2, v3, :cond_2

    .line 43
    .line 44
    const v3, 0x6854fdf

    .line 45
    .line 46
    .line 47
    if-eq v2, v3, :cond_0

    .line 48
    .line 49
    goto/16 :goto_0

    .line 50
    .line 51
    :cond_0
    :try_start_1
    const-string v2, "share"

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    iget-object v1, p0, Loc/a;->a:Loc/d;

    .line 61
    .line 62
    invoke-virtual {p1, v5}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-static {v2, v6}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    check-cast v2, Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {p1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v1, v2, p1, v0}, Loc/d;->p(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 78
    .line 79
    .line 80
    invoke-direct {p0, v0, p2}, Loc/a;->b(ZLio/flutter/plugin/common/MethodChannel$Result;)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    const-string v2, "shareUri"

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_3

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    iget-object v1, p0, Loc/a;->a:Loc/d;

    .line 94
    .line 95
    const-string v2, "uri"

    .line 96
    .line 97
    invoke-virtual {p1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-static {p1, v6}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    check-cast p1, Ljava/lang/String;

    .line 105
    .line 106
    const/4 v2, 0x0

    .line 107
    invoke-virtual {v1, p1, v2, v0}, Loc/d;->p(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 108
    .line 109
    .line 110
    invoke-direct {p0, v0, p2}, Loc/a;->b(ZLio/flutter/plugin/common/MethodChannel$Result;)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_4
    const-string v2, "shareFiles"

    .line 115
    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-nez v1, :cond_5

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_5
    iget-object v1, p0, Loc/a;->a:Loc/d;

    .line 124
    .line 125
    const-string v2, "paths"

    .line 126
    .line 127
    invoke-virtual {p1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-static {v2}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    check-cast v2, Ljava/util/List;

    .line 135
    .line 136
    const-string v3, "mimeTypes"

    .line 137
    .line 138
    invoke-virtual {p1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    check-cast v3, Ljava/util/List;

    .line 143
    .line 144
    invoke-virtual {p1, v5}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    check-cast v5, Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {p1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    check-cast p1, Ljava/lang/String;

    .line 155
    .line 156
    move-object v4, v5

    .line 157
    move-object v5, p1

    .line 158
    move v6, v0

    .line 159
    invoke-virtual/range {v1 .. v6}, Loc/d;->q(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 160
    .line 161
    .line 162
    invoke-direct {p0, v0, p2}, Loc/a;->b(ZLio/flutter/plugin/common/MethodChannel$Result;)V

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_6
    :goto_0
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    .line 168
    .line 169
    goto :goto_1

    .line 170
    :catchall_0
    move-exception p1

    .line 171
    iget-object v0, p0, Loc/a;->b:Ldev/fluttercommunity/plus/share/a;

    .line 172
    .line 173
    invoke-virtual {v0}, Ldev/fluttercommunity/plus/share/a;->a()V

    .line 174
    .line 175
    .line 176
    const-string v0, "Share failed"

    .line 177
    .line 178
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-interface {p2, v0, v1, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    :goto_1
    return-void
.end method
