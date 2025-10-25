.class final Lx8/d$c;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Lid/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx8/d;->b(Lad/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:I

.field synthetic b:Ljava/lang/Object;

.field final synthetic c:Lx8/d;


# direct methods
.method constructor <init>(Lx8/d;Lad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx8/d$c;->c:Lx8/d;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILad/e;)V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lx8/d$c;->create(Ljava/lang/Object;Lad/e;)Lad/e;

    move-result-object p1

    check-cast p1, Lx8/d$c;

    sget-object p2, Lxc/t;->a:Lxc/t;

    invoke-virtual {p1, p2}, Lx8/d$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lad/e;)Lad/e;
    .locals 2

    .line 1
    new-instance v0, Lx8/d$c;

    iget-object v1, p0, Lx8/d$c;->c:Lx8/d;

    invoke-direct {v0, v1, p2}, Lx8/d$c;-><init>(Lx8/d;Lad/e;)V

    iput-object p1, v0, Lx8/d$c;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    check-cast p2, Lad/e;

    invoke-virtual {p0, p1, p2}, Lx8/d$c;->a(Lorg/json/JSONObject;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "cache_duration"

    .line 4
    .line 5
    const-string v2, "session_timeout_seconds"

    .line 6
    .line 7
    const-string v3, "sampling_rate"

    .line 8
    .line 9
    const-string v4, "sessions_enabled"

    .line 10
    .line 11
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    iget v6, v1, Lx8/d$c;->a:I

    .line 16
    .line 17
    const/4 v7, 0x1

    .line 18
    if-eqz v6, :cond_1

    .line 19
    .line 20
    if-ne v6, v7, :cond_0

    .line 21
    .line 22
    invoke-static/range {p1 .. p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto/16 :goto_6

    .line 26
    .line 27
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 30
    .line 31
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0

    .line 35
    :cond_1
    invoke-static/range {p1 .. p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object v6, v1, Lx8/d$c;->b:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v6, Lorg/json/JSONObject;

    .line 41
    .line 42
    new-instance v8, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v9, "Fetched settings: "

    .line 48
    .line 49
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    const-string v9, "FirebaseSessions"

    .line 60
    .line 61
    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    const-string v8, "app_quality"

    .line 65
    .line 66
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v10

    .line 70
    const/4 v11, 0x0

    .line 71
    if-eqz v10, :cond_6

    .line 72
    .line 73
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    const-string v8, "null cannot be cast to non-null type org.json.JSONObject"

    .line 78
    .line 79
    invoke-static {v6, v8}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    check-cast v6, Lorg/json/JSONObject;

    .line 83
    .line 84
    :try_start_0
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    if-eqz v8, :cond_2

    .line 89
    .line 90
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    check-cast v4, Ljava/lang/Boolean;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_2
    move-object v4, v11

    .line 98
    :goto_0
    :try_start_1
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    if-eqz v8, :cond_3

    .line 103
    .line 104
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    check-cast v3, Ljava/lang/Double;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_3
    move-object v3, v11

    .line 112
    :goto_1
    :try_start_2
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result v8

    .line 116
    if-eqz v8, :cond_4

    .line 117
    .line 118
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    check-cast v2, Ljava/lang/Integer;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_4
    move-object v2, v11

    .line 126
    :goto_2
    :try_start_3
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    move-result v8

    .line 130
    if-eqz v8, :cond_5

    .line 131
    .line 132
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Ljava/lang/Integer;

    .line 137
    .line 138
    move-object v11, v0

    .line 139
    :cond_5
    sget-object v0, Lxc/t;->a:Lxc/t;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 140
    .line 141
    move-object v15, v2

    .line 142
    move-object v14, v3

    .line 143
    move-object v13, v4

    .line 144
    goto :goto_4

    .line 145
    :catch_0
    move-exception v0

    .line 146
    move-object/from16 v18, v4

    .line 147
    .line 148
    move-object v4, v0

    .line 149
    move-object v0, v11

    .line 150
    move-object/from16 v11, v18

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :catch_1
    move-exception v0

    .line 154
    move-object v2, v11

    .line 155
    move-object v11, v4

    .line 156
    move-object v4, v0

    .line 157
    move-object v0, v2

    .line 158
    goto :goto_3

    .line 159
    :catch_2
    move-exception v0

    .line 160
    move-object v2, v11

    .line 161
    move-object v3, v2

    .line 162
    move-object v11, v4

    .line 163
    move-object v4, v0

    .line 164
    move-object v0, v3

    .line 165
    goto :goto_3

    .line 166
    :catch_3
    move-exception v0

    .line 167
    move-object v4, v0

    .line 168
    move-object v0, v11

    .line 169
    move-object v2, v0

    .line 170
    move-object v3, v2

    .line 171
    :goto_3
    const-string v6, "Error parsing the configs remotely fetched: "

    .line 172
    .line 173
    invoke-static {v9, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/b;->c(I)Ljava/lang/Integer;

    .line 178
    .line 179
    .line 180
    move-object v15, v2

    .line 181
    move-object v14, v3

    .line 182
    move-object v13, v11

    .line 183
    move-object v11, v0

    .line 184
    goto :goto_4

    .line 185
    :cond_6
    move-object v13, v11

    .line 186
    move-object v14, v13

    .line 187
    move-object v15, v14

    .line 188
    :goto_4
    iget-object v0, v1, Lx8/d$c;->c:Lx8/d;

    .line 189
    .line 190
    invoke-static {v0}, Lx8/d;->g(Lx8/d;)Lx8/l;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    if-eqz v11, :cond_7

    .line 195
    .line 196
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    goto :goto_5

    .line 201
    :cond_7
    invoke-static {}, Lx8/d;->e()Lx8/d$a;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    invoke-virtual {v2}, Lx8/d$a;->a()I

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    :goto_5
    iget-object v3, v1, Lx8/d$c;->c:Lx8/d;

    .line 210
    .line 211
    invoke-static {v3}, Lx8/d;->h(Lx8/d;)Lu8/w0;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    invoke-interface {v3}, Lu8/w0;->a()Lu8/v0;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    invoke-virtual {v3}, Lu8/v0;->a()J

    .line 220
    .line 221
    .line 222
    move-result-wide v3

    .line 223
    new-instance v6, Lx8/h;

    .line 224
    .line 225
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/b;->c(I)Ljava/lang/Integer;

    .line 226
    .line 227
    .line 228
    move-result-object v16

    .line 229
    invoke-static {v3, v4}, Lkotlin/coroutines/jvm/internal/b;->d(J)Ljava/lang/Long;

    .line 230
    .line 231
    .line 232
    move-result-object v17

    .line 233
    move-object v12, v6

    .line 234
    invoke-direct/range {v12 .. v17}, Lx8/h;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;)V

    .line 235
    .line 236
    .line 237
    iput v7, v1, Lx8/d$c;->a:I

    .line 238
    .line 239
    invoke-interface {v0, v6, v1}, Lx8/l;->e(Lx8/h;Lad/e;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    if-ne v0, v5, :cond_8

    .line 244
    .line 245
    return-object v5

    .line 246
    :cond_8
    :goto_6
    sget-object v0, Lxc/t;->a:Lxc/t;

    .line 247
    .line 248
    return-object v0
.end method
