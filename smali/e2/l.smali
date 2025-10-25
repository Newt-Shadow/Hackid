.class final Le2/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Le2/a;

.field private final c:Le2/q;

.field private final d:Le2/y;


# direct methods
.method constructor <init>(Landroid/content/Context;Le2/a;Le2/q;Le2/y;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le2/l;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Le2/l;->b:Le2/a;

    .line 7
    .line 8
    iput-object p3, p0, Le2/l;->c:Le2/q;

    .line 9
    .line 10
    iput-object p4, p0, Le2/l;->d:Le2/y;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic a(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Le2/l;->f(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Le2/l;->e(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Le2/l;->h(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Le2/l;->g(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic e(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, p1, p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private static synthetic f(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, p1, p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private static synthetic g(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, p1, p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private static synthetic h(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, p1, p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, -0x1

    .line 11
    sparse-switch v1, :sswitch_data_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :sswitch_0
    const-string v1, "requestPermissions"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v2, 0x4

    .line 25
    goto :goto_0

    .line 26
    :sswitch_1
    const-string v1, "openAppSettings"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v2, 0x3

    .line 36
    goto :goto_0

    .line 37
    :sswitch_2
    const-string v1, "checkPermissionStatus"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const/4 v2, 0x2

    .line 47
    goto :goto_0

    .line 48
    :sswitch_3
    const-string v1, "shouldShowRequestPermissionRationale"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_3

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    const/4 v2, 0x1

    .line 58
    goto :goto_0

    .line 59
    :sswitch_4
    const-string v1, "checkServiceStatus"

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_4

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    const/4 v2, 0x0

    .line 69
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 70
    .line 71
    .line 72
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    .line 73
    .line 74
    .line 75
    goto/16 :goto_1

    .line 76
    .line 77
    :pswitch_0
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Ljava/util/List;

    .line 82
    .line 83
    iget-object v0, p0, Le2/l;->c:Le2/q;

    .line 84
    .line 85
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    new-instance v1, Le2/f;

    .line 89
    .line 90
    invoke-direct {v1, p2}, Le2/f;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 91
    .line 92
    .line 93
    new-instance v2, Le2/g;

    .line 94
    .line 95
    invoke-direct {v2, p2}, Le2/g;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, p1, v1, v2}, Le2/q;->g(Ljava/util/List;Le2/q$b;Le2/b;)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :pswitch_1
    iget-object p1, p0, Le2/l;->b:Le2/a;

    .line 103
    .line 104
    iget-object v0, p0, Le2/l;->a:Landroid/content/Context;

    .line 105
    .line 106
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    new-instance v1, Le2/j;

    .line 110
    .line 111
    invoke-direct {v1, p2}, Le2/j;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 112
    .line 113
    .line 114
    new-instance v2, Le2/k;

    .line 115
    .line 116
    invoke-direct {v2, p2}, Le2/k;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v0, v1, v2}, Le2/a;->a(Landroid/content/Context;Le2/a$a;Le2/b;)V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :pswitch_2
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    .line 124
    .line 125
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    iget-object v0, p0, Le2/l;->c:Le2/q;

    .line 134
    .line 135
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    new-instance v1, Le2/e;

    .line 139
    .line 140
    invoke-direct {v1, p2}, Le2/e;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, p1, v1}, Le2/q;->c(ILe2/q$a;)V

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :pswitch_3
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    .line 148
    .line 149
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    iget-object v0, p0, Le2/l;->c:Le2/q;

    .line 158
    .line 159
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    new-instance v1, Le2/h;

    .line 163
    .line 164
    invoke-direct {v1, p2}, Le2/h;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 165
    .line 166
    .line 167
    new-instance v2, Le2/i;

    .line 168
    .line 169
    invoke-direct {v2, p2}, Le2/i;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, p1, v1, v2}, Le2/q;->i(ILe2/q$c;Le2/b;)V

    .line 173
    .line 174
    .line 175
    goto :goto_1

    .line 176
    :pswitch_4
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    .line 177
    .line 178
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    iget-object v0, p0, Le2/l;->d:Le2/y;

    .line 187
    .line 188
    iget-object v1, p0, Le2/l;->a:Landroid/content/Context;

    .line 189
    .line 190
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    new-instance v2, Le2/c;

    .line 194
    .line 195
    invoke-direct {v2, p2}, Le2/c;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 196
    .line 197
    .line 198
    new-instance v3, Le2/d;

    .line 199
    .line 200
    invoke-direct {v3, p2}, Le2/d;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, p1, v1, v2, v3}, Le2/y;->a(ILandroid/content/Context;Le2/y$a;Le2/b;)V

    .line 204
    .line 205
    .line 206
    :goto_1
    return-void

    .line 207
    :sswitch_data_0
    .sparse-switch
        -0x5c086121 -> :sswitch_4
        -0x3ca2ffb7 -> :sswitch_3
        -0x22583c37 -> :sswitch_2
        0x14b278ba -> :sswitch_1
        0x637dca75 -> :sswitch_0
    .end sparse-switch

    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
