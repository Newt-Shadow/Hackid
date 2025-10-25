.class public final Lio/sentry/r3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/g1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/r3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lio/sentry/l2;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/sentry/r3$a;->b(Lio/sentry/l2;Lio/sentry/ILogger;)Lio/sentry/r3;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b(Lio/sentry/l2;Lio/sentry/ILogger;)Lio/sentry/r3;
    .locals 5

    .line 1
    invoke-interface {p1}, Lio/sentry/l2;->t()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/sentry/r3;

    .line 5
    .line 6
    invoke-direct {v0}, Lio/sentry/r3;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Lio/sentry/l2;->peek()Lio/sentry/vendor/gson/stream/b;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    sget-object v3, Lio/sentry/vendor/gson/stream/b;->NAME:Lio/sentry/vendor/gson/stream/b;

    .line 15
    .line 16
    if-ne v2, v3, :cond_9

    .line 17
    .line 18
    invoke-interface {p1}, Lio/sentry/l2;->f0()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/4 v4, -0x1

    .line 30
    sparse-switch v3, :sswitch_data_0

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :sswitch_0
    const-string v3, "profile_sample_rate"

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/4 v4, 0x6

    .line 44
    goto :goto_1

    .line 45
    :sswitch_1
    const-string v3, "trace_sample_rate"

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-nez v3, :cond_2

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    const/4 v4, 0x5

    .line 55
    goto :goto_1

    .line 56
    :sswitch_2
    const-string v3, "profiling_traces_hz"

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-nez v3, :cond_3

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    const/4 v4, 0x4

    .line 66
    goto :goto_1

    .line 67
    :sswitch_3
    const-string v3, "profile_sampled"

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-nez v3, :cond_4

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_4
    const/4 v4, 0x3

    .line 77
    goto :goto_1

    .line 78
    :sswitch_4
    const-string v3, "is_profiling_enabled"

    .line 79
    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-nez v3, :cond_5

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_5
    const/4 v4, 0x2

    .line 88
    goto :goto_1

    .line 89
    :sswitch_5
    const-string v3, "profiling_traces_dir_path"

    .line 90
    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-nez v3, :cond_6

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_6
    const/4 v4, 0x1

    .line 99
    goto :goto_1

    .line 100
    :sswitch_6
    const-string v3, "trace_sampled"

    .line 101
    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-nez v3, :cond_7

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_7
    const/4 v4, 0x0

    .line 110
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 111
    .line 112
    .line 113
    if-nez v1, :cond_8

    .line 114
    .line 115
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 116
    .line 117
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 118
    .line 119
    .line 120
    :cond_8
    invoke-interface {p1, p2, v1, v2}, Lio/sentry/l2;->b0(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :pswitch_0
    invoke-interface {p1}, Lio/sentry/l2;->e0()Ljava/lang/Double;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    if-eqz v2, :cond_0

    .line 129
    .line 130
    iput-object v2, v0, Lio/sentry/r3;->b:Ljava/lang/Double;

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :pswitch_1
    invoke-interface {p1}, Lio/sentry/l2;->e0()Ljava/lang/Double;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    if-eqz v2, :cond_0

    .line 138
    .line 139
    iput-object v2, v0, Lio/sentry/r3;->d:Ljava/lang/Double;

    .line 140
    .line 141
    goto/16 :goto_0

    .line 142
    .line 143
    :pswitch_2
    invoke-interface {p1}, Lio/sentry/l2;->J()Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    if-eqz v2, :cond_0

    .line 148
    .line 149
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    iput v2, v0, Lio/sentry/r3;->g:I

    .line 154
    .line 155
    goto/16 :goto_0

    .line 156
    .line 157
    :pswitch_3
    invoke-interface {p1}, Lio/sentry/l2;->m0()Ljava/lang/Boolean;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    if-eqz v2, :cond_0

    .line 162
    .line 163
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    iput-boolean v2, v0, Lio/sentry/r3;->a:Z

    .line 168
    .line 169
    goto/16 :goto_0

    .line 170
    .line 171
    :pswitch_4
    invoke-interface {p1}, Lio/sentry/l2;->m0()Ljava/lang/Boolean;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    if-eqz v2, :cond_0

    .line 176
    .line 177
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    iput-boolean v2, v0, Lio/sentry/r3;->f:Z

    .line 182
    .line 183
    goto/16 :goto_0

    .line 184
    .line 185
    :pswitch_5
    invoke-interface {p1}, Lio/sentry/l2;->T()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    if-eqz v2, :cond_0

    .line 190
    .line 191
    iput-object v2, v0, Lio/sentry/r3;->e:Ljava/lang/String;

    .line 192
    .line 193
    goto/16 :goto_0

    .line 194
    .line 195
    :pswitch_6
    invoke-interface {p1}, Lio/sentry/l2;->m0()Ljava/lang/Boolean;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    if-eqz v2, :cond_0

    .line 200
    .line 201
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    iput-boolean v2, v0, Lio/sentry/r3;->c:Z

    .line 206
    .line 207
    goto/16 :goto_0

    .line 208
    .line 209
    :cond_9
    invoke-virtual {v0, v1}, Lio/sentry/r3;->h(Ljava/util/Map;)V

    .line 210
    .line 211
    .line 212
    invoke-interface {p1}, Lio/sentry/l2;->r()V

    .line 213
    .line 214
    .line 215
    return-object v0

    .line 216
    nop

    .line 217
    :sswitch_data_0
    .sparse-switch
        -0x21c03d00 -> :sswitch_6
        -0x1ad38c31 -> :sswitch_5
        -0x6f7b3ad -> :sswitch_4
        -0x426489c -> :sswitch_3
        0x5e67e24a -> :sswitch_2
        0x62951a5b -> :sswitch_1
        0x7f963cbf -> :sswitch_0
    .end sparse-switch

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
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
