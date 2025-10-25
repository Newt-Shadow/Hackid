.class public final Lqf/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;


# instance fields
.field private a:Lio/flutter/plugin/common/MethodChannel;

.field private b:Lio/flutter/plugin/common/MethodChannel;

.field private c:Lqf/f;

.field private d:Landroid/content/Context;

.field private e:Lio/flutter/plugin/common/BinaryMessenger;

.field private f:Lrf/n;

.field private final g:Ljava/util/concurrent/ConcurrentHashMap;

.field private h:Lqf/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lqf/d;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    new-instance v0, Lqf/a;

    .line 12
    .line 13
    invoke-direct {v0}, Lqf/a;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lqf/d;->h:Lqf/a;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic a(Lqf/d;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lqf/d;->r(Lqf/d;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method public static synthetic b(Lqf/d;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lqf/d;->s(Lqf/d;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method public static final synthetic c(Lqf/d;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lqf/d;->h(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic d(Lqf/d;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lqf/d;->q(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final g(Ljava/lang/String;)Lrf/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lqf/d;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lrf/s;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    const-string v0, "Player has not yet been created or has already been disposed."

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1
.end method

.method private final h(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string v2, "message is required"

    .line 10
    .line 11
    const-string v3, "message"

    .line 12
    .line 13
    sparse-switch v1, :sswitch_data_0

    .line 14
    .line 15
    .line 16
    goto/16 :goto_2

    .line 17
    .line 18
    :sswitch_0
    const-string v1, "setAudioContext"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    goto/16 :goto_2

    .line 27
    .line 28
    :cond_0
    invoke-virtual {p0}, Lqf/d;->f()Landroid/media/AudioManager;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lqf/d;->h:Lqf/a;

    .line 33
    .line 34
    invoke-virtual {v1}, Lqf/a;->e()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lqf/d;->h:Lqf/a;

    .line 42
    .line 43
    invoke-virtual {v1}, Lqf/a;->g()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Lqf/e;->a(Lio/flutter/plugin/common/MethodCall;)Lqf/a;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p0, Lqf/d;->h:Lqf/a;

    .line 55
    .line 56
    goto/16 :goto_1

    .line 57
    .line 58
    :sswitch_1
    const-string v1, "emitError"

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_1

    .line 65
    .line 66
    goto/16 :goto_2

    .line 67
    .line 68
    :cond_1
    const-string v0, "code"

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Ljava/lang/String;

    .line 75
    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    invoke-virtual {p1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Ljava/lang/String;

    .line 83
    .line 84
    if-eqz p1, :cond_2

    .line 85
    .line 86
    const/4 v1, 0x0

    .line 87
    invoke-virtual {p0, v0, p1, v1}, Lqf/d;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p1

    .line 101
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 102
    .line 103
    const-string p2, "code is required"

    .line 104
    .line 105
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p1

    .line 113
    :sswitch_2
    const-string p1, "init"

    .line 114
    .line 115
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-nez p1, :cond_4

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_4
    iget-object p1, p0, Lqf/d;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    const-string v0, "<get-values>(...)"

    .line 129
    .line 130
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    check-cast p1, Ljava/lang/Iterable;

    .line 134
    .line 135
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_5

    .line 144
    .line 145
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    check-cast v0, Lrf/s;

    .line 150
    .line 151
    invoke-virtual {v0}, Lrf/s;->e()V

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_5
    iget-object p1, p0, Lqf/d;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 156
    .line 157
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :sswitch_3
    const-string v1, "emitLog"

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-nez v0, :cond_6

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_6
    invoke-virtual {p1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    check-cast p1, Ljava/lang/String;

    .line 175
    .line 176
    if-eqz p1, :cond_7

    .line 177
    .line 178
    invoke-virtual {p0, p1}, Lqf/d;->m(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    :goto_1
    const/4 p1, 0x1

    .line 182
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    return-void

    .line 190
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 191
    .line 192
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    throw p1

    .line 200
    :cond_8
    :goto_2
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    .line 201
    .line 202
    .line 203
    return-void

    .line 204
    nop

    .line 205
    :sswitch_data_0
    .sparse-switch
        -0x612cd98f -> :sswitch_3
        0x316510 -> :sswitch_2
        0x36423df5 -> :sswitch_1
        0x7164e27b -> :sswitch_0
    .end sparse-switch
.end method

.method private final q(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "AndroidAudioError"

    .line 8
    .line 9
    const-string v4, "playerId"

    .line 10
    .line 11
    invoke-virtual {v0, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Ljava/lang/String;

    .line 16
    .line 17
    if-nez v4, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v5, v0, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 21
    .line 22
    const-string v6, "create"

    .line 23
    .line 24
    invoke-static {v5, v6}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    const/4 v6, 0x1

    .line 29
    const/4 v7, 0x0

    .line 30
    if-eqz v5, :cond_3

    .line 31
    .line 32
    new-instance v0, Lqf/f;

    .line 33
    .line 34
    new-instance v3, Lio/flutter/plugin/common/EventChannel;

    .line 35
    .line 36
    iget-object v5, v1, Lqf/d;->e:Lio/flutter/plugin/common/BinaryMessenger;

    .line 37
    .line 38
    if-nez v5, :cond_1

    .line 39
    .line 40
    const-string v5, "binaryMessenger"

    .line 41
    .line 42
    invoke-static {v5}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    move-object v5, v7

    .line 46
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v9, "xyz.luan/audioplayers/events/"

    .line 52
    .line 53
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    invoke-direct {v3, v5, v8}, Lio/flutter/plugin/common/EventChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-direct {v0, v3}, Lqf/f;-><init>(Lio/flutter/plugin/common/EventChannel;)V

    .line 67
    .line 68
    .line 69
    iget-object v3, v1, Lqf/d;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 70
    .line 71
    new-instance v5, Lrf/s;

    .line 72
    .line 73
    iget-object v8, v1, Lqf/d;->h:Lqf/a;

    .line 74
    .line 75
    const/4 v9, 0x0

    .line 76
    const/4 v10, 0x0

    .line 77
    const/4 v11, 0x0

    .line 78
    const/4 v12, 0x0

    .line 79
    const/4 v13, 0x0

    .line 80
    const/4 v14, 0x0

    .line 81
    const/16 v15, 0x3f

    .line 82
    .line 83
    const/16 v16, 0x0

    .line 84
    .line 85
    invoke-static/range {v8 .. v16}, Lqf/a;->c(Lqf/a;ZZIIIIILjava/lang/Object;)Lqf/a;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    iget-object v9, v1, Lqf/d;->f:Lrf/n;

    .line 90
    .line 91
    if-nez v9, :cond_2

    .line 92
    .line 93
    const-string v9, "soundPoolManager"

    .line 94
    .line 95
    invoke-static {v9}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_2
    move-object v7, v9

    .line 100
    :goto_0
    invoke-direct {v5, v1, v0, v8, v7}, Lrf/s;-><init>(Lqf/d;Lqf/f;Lqf/a;Lrf/n;)V

    .line 101
    .line 102
    .line 103
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_3
    invoke-direct {v1, v4}, Lqf/d;->g(Ljava/lang/String;)Lrf/s;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    :try_start_0
    iget-object v8, v0, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 119
    .line 120
    if-eqz v8, :cond_24

    .line 121
    .line 122
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 123
    .line 124
    .line 125
    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 126
    const/16 v10, 0x2e

    .line 127
    .line 128
    const-string v11, "message is required"

    .line 129
    .line 130
    const-string v12, "message"

    .line 131
    .line 132
    const/4 v13, 0x0

    .line 133
    sparse-switch v9, :sswitch_data_0

    .line 134
    .line 135
    .line 136
    goto/16 :goto_4

    .line 137
    .line 138
    :sswitch_0
    :try_start_1
    const-string v4, "setReleaseMode"

    .line 139
    .line 140
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    if-nez v4, :cond_4

    .line 145
    .line 146
    goto/16 :goto_4

    .line 147
    .line 148
    :cond_4
    const-string v4, "releaseMode"

    .line 149
    .line 150
    invoke-virtual {v0, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    move-object v14, v0

    .line 155
    check-cast v14, Ljava/lang/String;

    .line 156
    .line 157
    if-nez v14, :cond_5

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_5
    new-array v15, v6, [C

    .line 161
    .line 162
    aput-char v10, v15, v13

    .line 163
    .line 164
    const/16 v16, 0x0

    .line 165
    .line 166
    const/16 v17, 0x0

    .line 167
    .line 168
    const/16 v18, 0x6

    .line 169
    .line 170
    const/16 v19, 0x0

    .line 171
    .line 172
    invoke-static/range {v14 .. v19}, Lrd/n;->y0(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-static {v0}, Lyc/m;->Z(Ljava/util/List;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    check-cast v0, Ljava/lang/String;

    .line 181
    .line 182
    invoke-static {v0}, Lqf/e;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-static {v0}, Lqf/h;->valueOf(Ljava/lang/String;)Lqf/h;

    .line 187
    .line 188
    .line 189
    move-result-object v7

    .line 190
    :goto_1
    if-eqz v7, :cond_6

    .line 191
    .line 192
    invoke-virtual {v5, v7}, Lrf/s;->L(Lqf/h;)V

    .line 193
    .line 194
    .line 195
    goto/16 :goto_3

    .line 196
    .line 197
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 198
    .line 199
    const-string v4, "releaseMode is required"

    .line 200
    .line 201
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    throw v0

    .line 209
    :sswitch_1
    const-string v4, "setAudioContext"

    .line 210
    .line 211
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v4

    .line 215
    if-nez v4, :cond_7

    .line 216
    .line 217
    goto/16 :goto_4

    .line 218
    .line 219
    :cond_7
    invoke-static/range {p1 .. p1}, Lqf/e;->a(Lio/flutter/plugin/common/MethodCall;)Lqf/a;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-virtual {v5, v0}, Lrf/s;->Q(Lqf/a;)V

    .line 224
    .line 225
    .line 226
    goto/16 :goto_3

    .line 227
    .line 228
    :sswitch_2
    const-string v4, "setSourceBytes"

    .line 229
    .line 230
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    if-nez v4, :cond_8

    .line 235
    .line 236
    goto/16 :goto_4

    .line 237
    .line 238
    :cond_8
    const-string v4, "bytes"

    .line 239
    .line 240
    invoke-virtual {v0, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    check-cast v0, [B

    .line 245
    .line 246
    if-eqz v0, :cond_9

    .line 247
    .line 248
    new-instance v4, Lsf/b;

    .line 249
    .line 250
    invoke-direct {v4, v0}, Lsf/b;-><init>([B)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v5, v4}, Lrf/s;->M(Lsf/c;)V

    .line 254
    .line 255
    .line 256
    goto/16 :goto_3

    .line 257
    .line 258
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 259
    .line 260
    const-string v4, "bytes are required"

    .line 261
    .line 262
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v4

    .line 266
    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    throw v0

    .line 270
    :sswitch_3
    const-string v0, "dispose"

    .line 271
    .line 272
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    if-nez v0, :cond_a

    .line 277
    .line 278
    goto/16 :goto_4

    .line 279
    .line 280
    :cond_a
    invoke-virtual {v5}, Lrf/s;->e()V

    .line 281
    .line 282
    .line 283
    iget-object v0, v1, Lqf/d;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 284
    .line 285
    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    goto/16 :goto_3

    .line 289
    .line 290
    :sswitch_4
    const-string v0, "release"

    .line 291
    .line 292
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    if-nez v0, :cond_b

    .line 297
    .line 298
    goto/16 :goto_4

    .line 299
    .line 300
    :cond_b
    invoke-virtual {v5}, Lrf/s;->E()V

    .line 301
    .line 302
    .line 303
    goto/16 :goto_3

    .line 304
    .line 305
    :sswitch_5
    const-string v4, "emitError"

    .line 306
    .line 307
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result v4

    .line 311
    if-nez v4, :cond_c

    .line 312
    .line 313
    goto/16 :goto_4

    .line 314
    .line 315
    :cond_c
    const-string v4, "code"

    .line 316
    .line 317
    invoke-virtual {v0, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v4

    .line 321
    check-cast v4, Ljava/lang/String;

    .line 322
    .line 323
    if-eqz v4, :cond_e

    .line 324
    .line 325
    invoke-virtual {v0, v12}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    check-cast v0, Ljava/lang/String;

    .line 330
    .line 331
    if-eqz v0, :cond_d

    .line 332
    .line 333
    invoke-virtual {v5, v4, v0, v7}, Lrf/s;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 334
    .line 335
    .line 336
    goto/16 :goto_3

    .line 337
    .line 338
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 339
    .line 340
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v4

    .line 344
    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    throw v0

    .line 348
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 349
    .line 350
    const-string v4, "code is required"

    .line 351
    .line 352
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v4

    .line 356
    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    throw v0

    .line 360
    :sswitch_6
    const-string v4, "setVolume"

    .line 361
    .line 362
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    move-result v4

    .line 366
    if-nez v4, :cond_f

    .line 367
    .line 368
    goto/16 :goto_4

    .line 369
    .line 370
    :cond_f
    const-string v4, "volume"

    .line 371
    .line 372
    invoke-virtual {v0, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    check-cast v0, Ljava/lang/Double;

    .line 377
    .line 378
    if-eqz v0, :cond_10

    .line 379
    .line 380
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 381
    .line 382
    .line 383
    move-result-wide v7

    .line 384
    double-to-float v0, v7

    .line 385
    invoke-virtual {v5, v0}, Lrf/s;->N(F)V

    .line 386
    .line 387
    .line 388
    goto/16 :goto_3

    .line 389
    .line 390
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 391
    .line 392
    const-string v4, "volume is required"

    .line 393
    .line 394
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v4

    .line 398
    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    throw v0

    .line 402
    :sswitch_7
    const-string v0, "pause"

    .line 403
    .line 404
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    move-result v0

    .line 408
    if-nez v0, :cond_11

    .line 409
    .line 410
    goto/16 :goto_4

    .line 411
    .line 412
    :cond_11
    invoke-virtual {v5}, Lrf/s;->C()V

    .line 413
    .line 414
    .line 415
    goto/16 :goto_3

    .line 416
    .line 417
    :sswitch_8
    const-string v0, "getDuration"

    .line 418
    .line 419
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 420
    .line 421
    .line 422
    move-result v0

    .line 423
    if-nez v0, :cond_12

    .line 424
    .line 425
    goto/16 :goto_4

    .line 426
    .line 427
    :cond_12
    invoke-virtual {v5}, Lrf/s;->l()Ljava/lang/Integer;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 432
    .line 433
    .line 434
    return-void

    .line 435
    :sswitch_9
    const-string v0, "stop"

    .line 436
    .line 437
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 438
    .line 439
    .line 440
    move-result v0

    .line 441
    if-nez v0, :cond_13

    .line 442
    .line 443
    goto/16 :goto_4

    .line 444
    .line 445
    :cond_13
    invoke-virtual {v5}, Lrf/s;->P()V

    .line 446
    .line 447
    .line 448
    goto/16 :goto_3

    .line 449
    .line 450
    :sswitch_a
    const-string v4, "seek"

    .line 451
    .line 452
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    move-result v4

    .line 456
    if-nez v4, :cond_14

    .line 457
    .line 458
    goto/16 :goto_4

    .line 459
    .line 460
    :cond_14
    const-string v4, "position"

    .line 461
    .line 462
    invoke-virtual {v0, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    check-cast v0, Ljava/lang/Integer;

    .line 467
    .line 468
    if-eqz v0, :cond_15

    .line 469
    .line 470
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 471
    .line 472
    .line 473
    move-result v0

    .line 474
    invoke-virtual {v5, v0}, Lrf/s;->G(I)V

    .line 475
    .line 476
    .line 477
    goto/16 :goto_3

    .line 478
    .line 479
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 480
    .line 481
    const-string v4, "position is required"

    .line 482
    .line 483
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v4

    .line 487
    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    throw v0

    .line 491
    :sswitch_b
    const-string v4, "setSourceUrl"

    .line 492
    .line 493
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 494
    .line 495
    .line 496
    move-result v4

    .line 497
    if-nez v4, :cond_16

    .line 498
    .line 499
    goto/16 :goto_4

    .line 500
    .line 501
    :cond_16
    const-string v4, "url"

    .line 502
    .line 503
    invoke-virtual {v0, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object v4

    .line 507
    check-cast v4, Ljava/lang/String;

    .line 508
    .line 509
    if-eqz v4, :cond_18

    .line 510
    .line 511
    const-string v7, "isLocal"

    .line 512
    .line 513
    invoke-virtual {v0, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    check-cast v0, Ljava/lang/Boolean;

    .line 518
    .line 519
    if-eqz v0, :cond_17

    .line 520
    .line 521
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 522
    .line 523
    .line 524
    move-result v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 525
    :cond_17
    :try_start_2
    new-instance v0, Lsf/d;

    .line 526
    .line 527
    invoke-direct {v0, v4, v13}, Lsf/d;-><init>(Ljava/lang/String;Z)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v5, v0}, Lrf/s;->M(Lsf/c;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 531
    .line 532
    .line 533
    goto/16 :goto_3

    .line 534
    .line 535
    :catch_0
    move-exception v0

    .line 536
    :try_start_3
    const-string v4, "Failed to set source. For troubleshooting, see: https://github.com/bluefireteam/audioplayers/blob/main/troubleshooting.md"

    .line 537
    .line 538
    invoke-interface {v2, v3, v4, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 539
    .line 540
    .line 541
    return-void

    .line 542
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 543
    .line 544
    const-string v4, "url is required"

    .line 545
    .line 546
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v4

    .line 550
    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 551
    .line 552
    .line 553
    throw v0

    .line 554
    :sswitch_c
    const-string v4, "setPlaybackRate"

    .line 555
    .line 556
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 557
    .line 558
    .line 559
    move-result v4

    .line 560
    if-nez v4, :cond_19

    .line 561
    .line 562
    goto/16 :goto_4

    .line 563
    .line 564
    :cond_19
    const-string v4, "playbackRate"

    .line 565
    .line 566
    invoke-virtual {v0, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    check-cast v0, Ljava/lang/Double;

    .line 571
    .line 572
    if-eqz v0, :cond_1a

    .line 573
    .line 574
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 575
    .line 576
    .line 577
    move-result-wide v7

    .line 578
    double-to-float v0, v7

    .line 579
    invoke-virtual {v5, v0}, Lrf/s;->K(F)V

    .line 580
    .line 581
    .line 582
    goto/16 :goto_3

    .line 583
    .line 584
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 585
    .line 586
    const-string v4, "playbackRate is required"

    .line 587
    .line 588
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v4

    .line 592
    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 593
    .line 594
    .line 595
    throw v0

    .line 596
    :sswitch_d
    const-string v0, "resume"

    .line 597
    .line 598
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 599
    .line 600
    .line 601
    move-result v0

    .line 602
    if-nez v0, :cond_1b

    .line 603
    .line 604
    goto/16 :goto_4

    .line 605
    .line 606
    :cond_1b
    invoke-virtual {v5}, Lrf/s;->D()V

    .line 607
    .line 608
    .line 609
    goto/16 :goto_3

    .line 610
    .line 611
    :sswitch_e
    const-string v4, "emitLog"

    .line 612
    .line 613
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 614
    .line 615
    .line 616
    move-result v4

    .line 617
    if-nez v4, :cond_1c

    .line 618
    .line 619
    goto/16 :goto_4

    .line 620
    .line 621
    :cond_1c
    invoke-virtual {v0, v12}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 622
    .line 623
    .line 624
    move-result-object v0

    .line 625
    check-cast v0, Ljava/lang/String;

    .line 626
    .line 627
    if-eqz v0, :cond_1d

    .line 628
    .line 629
    invoke-virtual {v5, v0}, Lrf/s;->t(Ljava/lang/String;)V

    .line 630
    .line 631
    .line 632
    goto :goto_3

    .line 633
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 634
    .line 635
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v4

    .line 639
    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 640
    .line 641
    .line 642
    throw v0

    .line 643
    :sswitch_f
    const-string v4, "setBalance"

    .line 644
    .line 645
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 646
    .line 647
    .line 648
    move-result v4

    .line 649
    if-nez v4, :cond_1e

    .line 650
    .line 651
    goto/16 :goto_4

    .line 652
    .line 653
    :cond_1e
    const-string v4, "balance"

    .line 654
    .line 655
    invoke-virtual {v0, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 656
    .line 657
    .line 658
    move-result-object v0

    .line 659
    check-cast v0, Ljava/lang/Double;

    .line 660
    .line 661
    if-eqz v0, :cond_1f

    .line 662
    .line 663
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 664
    .line 665
    .line 666
    move-result-wide v7

    .line 667
    double-to-float v0, v7

    .line 668
    invoke-virtual {v5, v0}, Lrf/s;->H(F)V

    .line 669
    .line 670
    .line 671
    goto :goto_3

    .line 672
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 673
    .line 674
    const-string v4, "balance is required"

    .line 675
    .line 676
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 677
    .line 678
    .line 679
    move-result-object v4

    .line 680
    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 681
    .line 682
    .line 683
    throw v0

    .line 684
    :sswitch_10
    const-string v4, "setPlayerMode"

    .line 685
    .line 686
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 687
    .line 688
    .line 689
    move-result v4

    .line 690
    if-nez v4, :cond_20

    .line 691
    .line 692
    goto :goto_4

    .line 693
    :cond_20
    const-string v4, "playerMode"

    .line 694
    .line 695
    invoke-virtual {v0, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 696
    .line 697
    .line 698
    move-result-object v0

    .line 699
    move-object v14, v0

    .line 700
    check-cast v14, Ljava/lang/String;

    .line 701
    .line 702
    if-nez v14, :cond_21

    .line 703
    .line 704
    goto :goto_2

    .line 705
    :cond_21
    new-array v15, v6, [C

    .line 706
    .line 707
    aput-char v10, v15, v13

    .line 708
    .line 709
    const/16 v16, 0x0

    .line 710
    .line 711
    const/16 v17, 0x0

    .line 712
    .line 713
    const/16 v18, 0x6

    .line 714
    .line 715
    const/16 v19, 0x0

    .line 716
    .line 717
    invoke-static/range {v14 .. v19}, Lrd/n;->y0(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    .line 718
    .line 719
    .line 720
    move-result-object v0

    .line 721
    invoke-static {v0}, Lyc/m;->Z(Ljava/util/List;)Ljava/lang/Object;

    .line 722
    .line 723
    .line 724
    move-result-object v0

    .line 725
    check-cast v0, Ljava/lang/String;

    .line 726
    .line 727
    invoke-static {v0}, Lqf/e;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 728
    .line 729
    .line 730
    move-result-object v0

    .line 731
    invoke-static {v0}, Lqf/g;->valueOf(Ljava/lang/String;)Lqf/g;

    .line 732
    .line 733
    .line 734
    move-result-object v7

    .line 735
    :goto_2
    if-eqz v7, :cond_22

    .line 736
    .line 737
    invoke-virtual {v5, v7}, Lrf/s;->I(Lqf/g;)V

    .line 738
    .line 739
    .line 740
    :goto_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 741
    .line 742
    .line 743
    move-result-object v0

    .line 744
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 745
    .line 746
    .line 747
    goto :goto_5

    .line 748
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 749
    .line 750
    const-string v4, "playerMode is required"

    .line 751
    .line 752
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 753
    .line 754
    .line 755
    move-result-object v4

    .line 756
    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 757
    .line 758
    .line 759
    throw v0

    .line 760
    :sswitch_11
    const-string v0, "getCurrentPosition"

    .line 761
    .line 762
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 763
    .line 764
    .line 765
    move-result v0

    .line 766
    if-nez v0, :cond_23

    .line 767
    .line 768
    goto :goto_4

    .line 769
    :cond_23
    invoke-virtual {v5}, Lrf/s;->k()Ljava/lang/Integer;

    .line 770
    .line 771
    .line 772
    move-result-object v0

    .line 773
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 774
    .line 775
    .line 776
    return-void

    .line 777
    :cond_24
    :goto_4
    invoke-interface/range {p2 .. p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 778
    .line 779
    .line 780
    return-void

    .line 781
    :catch_1
    move-exception v0

    .line 782
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 783
    .line 784
    .line 785
    move-result-object v4

    .line 786
    invoke-interface {v2, v3, v4, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 787
    .line 788
    .line 789
    :goto_5
    return-void

    .line 790
    nop

    .line 791
    :sswitch_data_0
    .sparse-switch
        -0x68b9fc74 -> :sswitch_11
        -0x66b209da -> :sswitch_10
        -0x62f907e6 -> :sswitch_f
        -0x612cd98f -> :sswitch_e
        -0x37b237d3 -> :sswitch_d
        -0x17fa60e3 -> :sswitch_c
        -0x97aa2ee -> :sswitch_b
        0x35ce78 -> :sswitch_a
        0x360802 -> :sswitch_9
        0x51e8b0a -> :sswitch_8
        0x65825f6 -> :sswitch_7
        0x27f73e1c -> :sswitch_6
        0x36423df5 -> :sswitch_5
        0x41012807 -> :sswitch_4
        0x63a5261f -> :sswitch_3
        0x6999fb4e -> :sswitch_2
        0x7164e27b -> :sswitch_1
        0x7cf03488 -> :sswitch_0
    .end sparse-switch
.end method

.method private static final r(Lqf/d;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "response"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lqf/d$a;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lqf/d$a;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1, p2, v0}, Lqf/d;->t(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;Lid/Function2;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private static final s(Lqf/d;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "response"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lqf/d$b;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lqf/d$b;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1, p2, v0}, Lqf/d;->t(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;Lid/Function2;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private final t(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;Lid/Function2;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-interface {p3, p1, p2}, Lid/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catchall_0
    move-exception p1

    .line 6
    const-string p3, "Unexpected AndroidAudioError"

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {p2, p3, v0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method


# virtual methods
.method public final e()Landroid/content/Context;
    .locals 2

    .line 1
    iget-object v0, p0, Lqf/d;->d:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "context"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "getApplicationContext(...)"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public final f()Landroid/media/AudioManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lqf/d;->d:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "context"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "audio"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "null cannot be cast to non-null type android.media.AudioManager"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    check-cast v0, Landroid/media/AudioManager;

    .line 27
    .line 28
    return-object v0
.end method

.method public final i(Lrf/s;)V
    .locals 3

    .line 1
    const-string v0, "player"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lrf/s;->m()Lqf/f;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x0

    .line 11
    const/4 v1, 0x2

    .line 12
    const-string v2, "audio.onComplete"

    .line 13
    .line 14
    invoke-static {p1, v2, v0, v1, v0}, Lqf/f;->d(Lqf/f;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final j(Lrf/s;)V
    .locals 4

    .line 1
    const-string v0, "player"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lrf/s;->m()Lqf/f;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x1

    .line 11
    new-array v1, v1, [Lxc/k;

    .line 12
    .line 13
    invoke-virtual {p1}, Lrf/s;->l()Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move p1, v2

    .line 26
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v3, "value"

    .line 31
    .line 32
    invoke-static {v3, p1}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    aput-object p1, v1, v2

    .line 37
    .line 38
    invoke-static {v1}, Lyc/e0;->g([Lxc/k;)Ljava/util/HashMap;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string v1, "audio.onDuration"

    .line 43
    .line 44
    invoke-virtual {v0, v1, p1}, Lqf/f;->c(Ljava/lang/String;Ljava/util/Map;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final k(Lrf/s;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    const-string v0, "player"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lrf/s;->m()Lqf/f;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1, p2, p3, p4}, Lqf/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lqf/d;->c:Lqf/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "globalEvents"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lqf/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lqf/d;->c:Lqf/f;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string v0, "globalEvents"

    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    :cond_0
    const-string v1, "value"

    .line 17
    .line 18
    invoke-static {v1, p1}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    filled-new-array {p1}, [Lxc/k;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1}, Lyc/e0;->g([Lxc/k;)Ljava/util/HashMap;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v1, "audio.onLog"

    .line 31
    .line 32
    invoke-virtual {v0, v1, p1}, Lqf/f;->c(Ljava/lang/String;Ljava/util/Map;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final n(Lrf/s;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "player"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "message"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lrf/s;->m()Lqf/f;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "value"

    .line 16
    .line 17
    invoke-static {v0, p2}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    filled-new-array {p2}, [Lxc/k;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-static {p2}, Lyc/e0;->g([Lxc/k;)Ljava/util/HashMap;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const-string v0, "audio.onLog"

    .line 30
    .line 31
    invoke-virtual {p1, v0, p2}, Lqf/f;->c(Ljava/lang/String;Ljava/util/Map;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final o(Lrf/s;Z)V
    .locals 1

    .line 1
    const-string v0, "player"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lrf/s;->m()Lqf/f;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "value"

    .line 11
    .line 12
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-static {v0, p2}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    filled-new-array {p2}, [Lxc/k;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-static {p2}, Lyc/e0;->g([Lxc/k;)Ljava/util/HashMap;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    const-string v0, "audio.onPrepared"

    .line 29
    .line 30
    invoke-virtual {p1, v0, p2}, Lqf/f;->c(Ljava/lang/String;Ljava/util/Map;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 3

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lqf/d;->d:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lqf/d;->e:Lio/flutter/plugin/common/BinaryMessenger;

    .line 17
    .line 18
    new-instance v0, Lrf/n;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lrf/n;-><init>(Lqf/d;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lqf/d;->f:Lrf/n;

    .line 24
    .line 25
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    .line 26
    .line 27
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "xyz.luan/audioplayers"

    .line 32
    .line 33
    invoke-direct {v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lqf/d;->a:Lio/flutter/plugin/common/MethodChannel;

    .line 37
    .line 38
    new-instance v1, Lqf/b;

    .line 39
    .line 40
    invoke-direct {v1, p0}, Lqf/b;-><init>(Lqf/d;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 44
    .line 45
    .line 46
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    .line 47
    .line 48
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const-string v2, "xyz.luan/audioplayers.global"

    .line 53
    .line 54
    invoke-direct {v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lqf/d;->b:Lio/flutter/plugin/common/MethodChannel;

    .line 58
    .line 59
    new-instance v1, Lqf/c;

    .line 60
    .line 61
    invoke-direct {v1, p0}, Lqf/c;-><init>(Lqf/d;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 65
    .line 66
    .line 67
    new-instance v0, Lqf/f;

    .line 68
    .line 69
    new-instance v1, Lio/flutter/plugin/common/EventChannel;

    .line 70
    .line 71
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const-string v2, "xyz.luan/audioplayers.global/events"

    .line 76
    .line 77
    invoke-direct {v1, p1, v2}, Lio/flutter/plugin/common/EventChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-direct {v0, v1}, Lqf/f;-><init>(Lio/flutter/plugin/common/EventChannel;)V

    .line 81
    .line 82
    .line 83
    iput-object v0, p0, Lqf/d;->c:Lqf/f;

    .line 84
    .line 85
    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lqf/d;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v0, "<get-values>(...)"

    .line 13
    .line 14
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    check-cast p1, Ljava/lang/Iterable;

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lrf/s;

    .line 34
    .line 35
    invoke-virtual {v0}, Lrf/s;->e()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object p1, p0, Lqf/d;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lqf/d;->f:Lrf/n;

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    if-nez p1, :cond_1

    .line 48
    .line 49
    const-string p1, "soundPoolManager"

    .line 50
    .line 51
    invoke-static {p1}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    move-object p1, v0

    .line 55
    :cond_1
    invoke-virtual {p1}, Lrf/n;->d()V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lqf/d;->c:Lqf/f;

    .line 59
    .line 60
    if-nez p1, :cond_2

    .line 61
    .line 62
    const-string p1, "globalEvents"

    .line 63
    .line 64
    invoke-static {p1}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    move-object v0, p1

    .line 69
    :goto_1
    invoke-virtual {v0}, Lqf/f;->a()V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final p(Lrf/s;)V
    .locals 3

    .line 1
    const-string v0, "player"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lrf/s;->m()Lqf/f;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x0

    .line 11
    const/4 v1, 0x2

    .line 12
    const-string v2, "audio.onSeekComplete"

    .line 13
    .line 14
    invoke-static {p1, v2, v0, v1, v0}, Lqf/f;->d(Lqf/f;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
