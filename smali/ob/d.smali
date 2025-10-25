.class public final Lob/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;
.implements Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lrb/s;

.field private c:Lio/flutter/plugin/common/MethodChannel;

.field private d:Landroid/app/Activity;

.field private e:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lrb/s;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "provider"

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
    iput-object p1, p0, Lob/d;->a:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, Lob/d;->b:Lrb/s;

    .line 17
    .line 18
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lob/d;->e:Ljava/util/Map;

    .line 24
    .line 25
    return-void
.end method

.method private final a()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lob/d;->d:Landroid/app/Activity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    new-instance v0, Lpb/a;

    .line 10
    .line 11
    invoke-direct {v0}, Lpb/a;-><init>()V

    .line 12
    .line 13
    .line 14
    throw v0
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lob/d;->c:Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string v0, "channel"

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    move-object v0, v1

    .line 14
    :cond_0
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public c(Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 2

    .line 1
    const-string v0, "messenger"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    .line 7
    .line 8
    const-string v1, "flutter_foreground_task/methods"

    .line 9
    .line 10
    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lob/d;->c:Lio/flutter/plugin/common/MethodChannel;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public d(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lob/d;->d:Landroid/app/Activity;

    .line 2
    .line 3
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 1
    iget-object p2, p0, Lob/d;->e:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Lio/flutter/plugin/common/MethodChannel$Result;

    .line 12
    .line 13
    const/4 p3, 0x1

    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    return p3

    .line 17
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :pswitch_0
    sget-object p1, Lsb/d;->a:Lsb/d$a;

    .line 22
    .line 23
    iget-object v0, p0, Lob/d;->a:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lsb/d$a;->b(Landroid/content/Context;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :pswitch_1
    sget-object p1, Lsb/d;->a:Lsb/d$a;

    .line 38
    .line 39
    iget-object v0, p0, Lob/d;->a:Landroid/content/Context;

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lsb/d$a;->a(Landroid/content/Context;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :pswitch_2
    sget-object p1, Lsb/d;->a:Lsb/d$a;

    .line 54
    .line 55
    iget-object v0, p0, Lob/d;->a:Landroid/content/Context;

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Lsb/d$a;->d(Landroid/content/Context;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :pswitch_3
    sget-object p1, Lsb/d;->a:Lsb/d$a;

    .line 70
    .line 71
    iget-object v0, p0, Lob/d;->a:Landroid/content/Context;

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Lsb/d$a;->d(Landroid/content/Context;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    :goto_0
    return p3

    .line 85
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

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
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    .line 12
    .line 13
    :try_start_0
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 14
    .line 15
    if-eqz p1, :cond_17

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x1

    .line 22
    sparse-switch v1, :sswitch_data_0

    .line 23
    .line 24
    .line 25
    goto/16 :goto_2

    .line 26
    .line 27
    :sswitch_0
    const-string v0, "isIgnoringBatteryOptimizations"

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    goto/16 :goto_2

    .line 36
    .line 37
    :cond_0
    sget-object p1, Lsb/d;->a:Lsb/d$a;

    .line 38
    .line 39
    iget-object v0, p0, Lob/d;->a:Landroid/content/Context;

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lsb/d$a;->d(Landroid/content/Context;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_3

    .line 53
    .line 54
    :sswitch_1
    const-string v1, "startService"

    .line 55
    .line 56
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-nez p1, :cond_1

    .line 61
    .line 62
    goto/16 :goto_2

    .line 63
    .line 64
    :cond_1
    iget-object p1, p0, Lob/d;->b:Lrb/s;

    .line 65
    .line 66
    invoke-interface {p1}, Lrb/s;->a()Lcom/pravera/flutter_foreground_task/service/a;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iget-object v1, p0, Lob/d;->a:Landroid/content/Context;

    .line 71
    .line 72
    invoke-virtual {p1, v1, v0}, Lcom/pravera/flutter_foreground_task/service/a;->d(Landroid/content/Context;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 76
    .line 77
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    goto/16 :goto_3

    .line 81
    .line 82
    :sswitch_2
    const-string v0, "openAlarmsAndRemindersSettings"

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-nez p1, :cond_2

    .line 89
    .line 90
    goto/16 :goto_2

    .line 91
    .line 92
    :cond_2
    invoke-direct {p0}, Lob/d;->a()Landroid/app/Activity;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const/16 v0, 0xcb

    .line 97
    .line 98
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    iget-object v2, p0, Lob/d;->e:Ljava/util/Map;

    .line 103
    .line 104
    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    sget-object v1, Lsb/d;->a:Lsb/d$a;

    .line 108
    .line 109
    invoke-virtual {v1, p1, v0}, Lsb/d$a;->g(Landroid/app/Activity;I)V

    .line 110
    .line 111
    .line 112
    goto/16 :goto_3

    .line 113
    .line 114
    :sswitch_3
    const-string v0, "openIgnoreBatteryOptimizationSettings"

    .line 115
    .line 116
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-nez p1, :cond_3

    .line 121
    .line 122
    goto/16 :goto_2

    .line 123
    .line 124
    :cond_3
    invoke-direct {p0}, Lob/d;->a()Landroid/app/Activity;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    const/16 v0, 0xc9

    .line 129
    .line 130
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    iget-object v2, p0, Lob/d;->e:Ljava/util/Map;

    .line 135
    .line 136
    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    sget-object v1, Lsb/d;->a:Lsb/d$a;

    .line 140
    .line 141
    invoke-virtual {v1, p1, v0}, Lsb/d$a;->h(Landroid/app/Activity;I)V

    .line 142
    .line 143
    .line 144
    goto/16 :goto_3

    .line 145
    .line 146
    :sswitch_4
    const-string v0, "attachedActivity"

    .line 147
    .line 148
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    if-nez p1, :cond_4

    .line 153
    .line 154
    goto/16 :goto_2

    .line 155
    .line 156
    :cond_4
    iget-object p1, p0, Lob/d;->d:Landroid/app/Activity;

    .line 157
    .line 158
    if-eqz p1, :cond_5

    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_5
    const/4 v2, 0x0

    .line 162
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    goto/16 :goto_3

    .line 170
    .line 171
    :sswitch_5
    const-string v1, "sendData"

    .line 172
    .line 173
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    if-nez p1, :cond_6

    .line 178
    .line 179
    goto/16 :goto_2

    .line 180
    .line 181
    :cond_6
    iget-object p1, p0, Lob/d;->b:Lrb/s;

    .line 182
    .line 183
    invoke-interface {p1}, Lrb/s;->a()Lcom/pravera/flutter_foreground_task/service/a;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-virtual {p1, v0}, Lcom/pravera/flutter_foreground_task/service/a;->c(Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    goto/16 :goto_3

    .line 191
    .line 192
    :sswitch_6
    const-string v0, "canScheduleExactAlarms"

    .line 193
    .line 194
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    if-nez p1, :cond_7

    .line 199
    .line 200
    goto/16 :goto_2

    .line 201
    .line 202
    :cond_7
    sget-object p1, Lsb/d;->a:Lsb/d$a;

    .line 203
    .line 204
    iget-object v0, p0, Lob/d;->a:Landroid/content/Context;

    .line 205
    .line 206
    invoke-virtual {p1, v0}, Lsb/d$a;->b(Landroid/content/Context;)Z

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    goto/16 :goto_3

    .line 218
    .line 219
    :sswitch_7
    const-string v0, "stopService"

    .line 220
    .line 221
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result p1

    .line 225
    if-nez p1, :cond_8

    .line 226
    .line 227
    goto/16 :goto_2

    .line 228
    .line 229
    :cond_8
    iget-object p1, p0, Lob/d;->b:Lrb/s;

    .line 230
    .line 231
    invoke-interface {p1}, Lrb/s;->a()Lcom/pravera/flutter_foreground_task/service/a;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    iget-object v0, p0, Lob/d;->a:Landroid/content/Context;

    .line 236
    .line 237
    invoke-virtual {p1, v0}, Lcom/pravera/flutter_foreground_task/service/a;->e(Landroid/content/Context;)V

    .line 238
    .line 239
    .line 240
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 241
    .line 242
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    goto/16 :goto_3

    .line 246
    .line 247
    :sswitch_8
    const-string v0, "minimizeApp"

    .line 248
    .line 249
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result p1

    .line 253
    if-nez p1, :cond_9

    .line 254
    .line 255
    goto/16 :goto_2

    .line 256
    .line 257
    :cond_9
    invoke-direct {p0}, Lob/d;->a()Landroid/app/Activity;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    sget-object v0, Lsb/d;->a:Lsb/d$a;

    .line 262
    .line 263
    invoke-virtual {v0, p1}, Lsb/d$a;->f(Landroid/app/Activity;)V

    .line 264
    .line 265
    .line 266
    goto/16 :goto_3

    .line 267
    .line 268
    :sswitch_9
    const-string v1, "updateService"

    .line 269
    .line 270
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result p1

    .line 274
    if-nez p1, :cond_a

    .line 275
    .line 276
    goto/16 :goto_2

    .line 277
    .line 278
    :cond_a
    iget-object p1, p0, Lob/d;->b:Lrb/s;

    .line 279
    .line 280
    invoke-interface {p1}, Lrb/s;->a()Lcom/pravera/flutter_foreground_task/service/a;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    iget-object v1, p0, Lob/d;->a:Landroid/content/Context;

    .line 285
    .line 286
    invoke-virtual {p1, v1, v0}, Lcom/pravera/flutter_foreground_task/service/a;->f(Landroid/content/Context;Ljava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 290
    .line 291
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    goto/16 :goto_3

    .line 295
    .line 296
    :sswitch_a
    const-string v0, "restartService"

    .line 297
    .line 298
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    move-result p1

    .line 302
    if-nez p1, :cond_b

    .line 303
    .line 304
    goto/16 :goto_2

    .line 305
    .line 306
    :cond_b
    iget-object p1, p0, Lob/d;->b:Lrb/s;

    .line 307
    .line 308
    invoke-interface {p1}, Lrb/s;->a()Lcom/pravera/flutter_foreground_task/service/a;

    .line 309
    .line 310
    .line 311
    move-result-object p1

    .line 312
    iget-object v0, p0, Lob/d;->a:Landroid/content/Context;

    .line 313
    .line 314
    invoke-virtual {p1, v0}, Lcom/pravera/flutter_foreground_task/service/a;->b(Landroid/content/Context;)V

    .line 315
    .line 316
    .line 317
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 318
    .line 319
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    goto/16 :goto_3

    .line 323
    .line 324
    :sswitch_b
    const-string v0, "isRunningService"

    .line 325
    .line 326
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result p1

    .line 330
    if-nez p1, :cond_c

    .line 331
    .line 332
    goto/16 :goto_2

    .line 333
    .line 334
    :cond_c
    iget-object p1, p0, Lob/d;->b:Lrb/s;

    .line 335
    .line 336
    invoke-interface {p1}, Lrb/s;->a()Lcom/pravera/flutter_foreground_task/service/a;

    .line 337
    .line 338
    .line 339
    move-result-object p1

    .line 340
    invoke-virtual {p1}, Lcom/pravera/flutter_foreground_task/service/a;->a()Z

    .line 341
    .line 342
    .line 343
    move-result p1

    .line 344
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 345
    .line 346
    .line 347
    move-result-object p1

    .line 348
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 349
    .line 350
    .line 351
    goto/16 :goto_3

    .line 352
    .line 353
    :sswitch_c
    const-string v0, "openSystemAlertWindowSettings"

    .line 354
    .line 355
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    move-result p1

    .line 359
    if-nez p1, :cond_d

    .line 360
    .line 361
    goto/16 :goto_2

    .line 362
    .line 363
    :cond_d
    invoke-direct {p0}, Lob/d;->a()Landroid/app/Activity;

    .line 364
    .line 365
    .line 366
    move-result-object p1

    .line 367
    const/16 v0, 0xca

    .line 368
    .line 369
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    iget-object v2, p0, Lob/d;->e:Ljava/util/Map;

    .line 374
    .line 375
    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    sget-object v1, Lsb/d;->a:Lsb/d$a;

    .line 379
    .line 380
    invoke-virtual {v1, p1, v0}, Lsb/d$a;->i(Landroid/app/Activity;I)V

    .line 381
    .line 382
    .line 383
    goto/16 :goto_3

    .line 384
    .line 385
    :sswitch_d
    const-string v1, "launchApp"

    .line 386
    .line 387
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    move-result p1

    .line 391
    if-nez p1, :cond_e

    .line 392
    .line 393
    goto/16 :goto_2

    .line 394
    .line 395
    :cond_e
    if-nez v0, :cond_f

    .line 396
    .line 397
    goto :goto_1

    .line 398
    :cond_f
    instance-of v2, v0, Ljava/lang/String;

    .line 399
    .line 400
    :goto_1
    if-eqz v2, :cond_18

    .line 401
    .line 402
    sget-object p1, Lsb/d;->a:Lsb/d$a;

    .line 403
    .line 404
    iget-object v1, p0, Lob/d;->a:Landroid/content/Context;

    .line 405
    .line 406
    check-cast v0, Ljava/lang/String;

    .line 407
    .line 408
    invoke-virtual {p1, v1, v0}, Lsb/d$a;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    goto/16 :goto_3

    .line 412
    .line 413
    :sswitch_e
    const-string v0, "checkNotificationPermission"

    .line 414
    .line 415
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    move-result p1

    .line 419
    if-nez p1, :cond_10

    .line 420
    .line 421
    goto/16 :goto_2

    .line 422
    .line 423
    :cond_10
    invoke-direct {p0}, Lob/d;->a()Landroid/app/Activity;

    .line 424
    .line 425
    .line 426
    move-result-object p1

    .line 427
    iget-object v0, p0, Lob/d;->b:Lrb/s;

    .line 428
    .line 429
    invoke-interface {v0}, Lrb/s;->b()Lrb/r;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    invoke-virtual {v0, p1}, Lrb/r;->a(Landroid/app/Activity;)Lqb/j;

    .line 434
    .line 435
    .line 436
    move-result-object p1

    .line 437
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 438
    .line 439
    .line 440
    move-result p1

    .line 441
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 442
    .line 443
    .line 444
    move-result-object p1

    .line 445
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 446
    .line 447
    .line 448
    goto/16 :goto_3

    .line 449
    .line 450
    :sswitch_f
    const-string v0, "requestNotificationPermission"

    .line 451
    .line 452
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    move-result p1

    .line 456
    if-nez p1, :cond_11

    .line 457
    .line 458
    goto/16 :goto_2

    .line 459
    .line 460
    :cond_11
    invoke-direct {p0}, Lob/d;->a()Landroid/app/Activity;

    .line 461
    .line 462
    .line 463
    move-result-object p1

    .line 464
    new-instance v0, Lob/d$a;

    .line 465
    .line 466
    invoke-direct {v0, p2}, Lob/d$a;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 467
    .line 468
    .line 469
    iget-object v1, p0, Lob/d;->b:Lrb/s;

    .line 470
    .line 471
    invoke-interface {v1}, Lrb/s;->b()Lrb/r;

    .line 472
    .line 473
    .line 474
    move-result-object v1

    .line 475
    invoke-virtual {v1, p1, v0}, Lrb/r;->e(Landroid/app/Activity;Lrb/q;)V

    .line 476
    .line 477
    .line 478
    goto/16 :goto_3

    .line 479
    .line 480
    :sswitch_10
    const-string v0, "wakeUpScreen"

    .line 481
    .line 482
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 483
    .line 484
    .line 485
    move-result p1

    .line 486
    if-nez p1, :cond_12

    .line 487
    .line 488
    goto/16 :goto_2

    .line 489
    .line 490
    :cond_12
    sget-object p1, Lsb/d;->a:Lsb/d$a;

    .line 491
    .line 492
    iget-object v0, p0, Lob/d;->a:Landroid/content/Context;

    .line 493
    .line 494
    invoke-virtual {p1, v0}, Lsb/d$a;->l(Landroid/content/Context;)V

    .line 495
    .line 496
    .line 497
    goto/16 :goto_3

    .line 498
    .line 499
    :sswitch_11
    const-string v0, "canDrawOverlays"

    .line 500
    .line 501
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 502
    .line 503
    .line 504
    move-result p1

    .line 505
    if-nez p1, :cond_13

    .line 506
    .line 507
    goto :goto_2

    .line 508
    :cond_13
    sget-object p1, Lsb/d;->a:Lsb/d$a;

    .line 509
    .line 510
    iget-object v0, p0, Lob/d;->a:Landroid/content/Context;

    .line 511
    .line 512
    invoke-virtual {p1, v0}, Lsb/d$a;->a(Landroid/content/Context;)Z

    .line 513
    .line 514
    .line 515
    move-result p1

    .line 516
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 517
    .line 518
    .line 519
    move-result-object p1

    .line 520
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 521
    .line 522
    .line 523
    goto :goto_3

    .line 524
    :sswitch_12
    const-string v0, "requestIgnoreBatteryOptimization"

    .line 525
    .line 526
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 527
    .line 528
    .line 529
    move-result p1

    .line 530
    if-nez p1, :cond_14

    .line 531
    .line 532
    goto :goto_2

    .line 533
    :cond_14
    invoke-direct {p0}, Lob/d;->a()Landroid/app/Activity;

    .line 534
    .line 535
    .line 536
    move-result-object p1

    .line 537
    const/16 v0, 0xc8

    .line 538
    .line 539
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 540
    .line 541
    .line 542
    move-result-object v1

    .line 543
    iget-object v2, p0, Lob/d;->e:Ljava/util/Map;

    .line 544
    .line 545
    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    .line 547
    .line 548
    sget-object v1, Lsb/d;->a:Lsb/d$a;

    .line 549
    .line 550
    invoke-virtual {v1, p1, v0}, Lsb/d$a;->j(Landroid/app/Activity;I)V

    .line 551
    .line 552
    .line 553
    goto :goto_3

    .line 554
    :sswitch_13
    const-string v0, "isAppOnForeground"

    .line 555
    .line 556
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 557
    .line 558
    .line 559
    move-result p1

    .line 560
    if-nez p1, :cond_15

    .line 561
    .line 562
    goto :goto_2

    .line 563
    :cond_15
    sget-object p1, Lsb/d;->a:Lsb/d$a;

    .line 564
    .line 565
    iget-object v0, p0, Lob/d;->a:Landroid/content/Context;

    .line 566
    .line 567
    invoke-virtual {p1, v0}, Lsb/d$a;->c(Landroid/content/Context;)Z

    .line 568
    .line 569
    .line 570
    move-result p1

    .line 571
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 572
    .line 573
    .line 574
    move-result-object p1

    .line 575
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 576
    .line 577
    .line 578
    goto :goto_3

    .line 579
    :sswitch_14
    const-string v1, "setOnLockScreenVisibility"

    .line 580
    .line 581
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 582
    .line 583
    .line 584
    move-result p1

    .line 585
    if-nez p1, :cond_16

    .line 586
    .line 587
    goto :goto_2

    .line 588
    :cond_16
    invoke-direct {p0}, Lob/d;->a()Landroid/app/Activity;

    .line 589
    .line 590
    .line 591
    move-result-object p1

    .line 592
    instance-of v1, v0, Ljava/lang/Boolean;

    .line 593
    .line 594
    if-eqz v1, :cond_18

    .line 595
    .line 596
    sget-object v1, Lsb/d;->a:Lsb/d$a;

    .line 597
    .line 598
    check-cast v0, Ljava/lang/Boolean;

    .line 599
    .line 600
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 601
    .line 602
    .line 603
    move-result v0

    .line 604
    invoke-virtual {v1, p1, v0}, Lsb/d$a;->k(Landroid/app/Activity;Z)V

    .line 605
    .line 606
    .line 607
    goto :goto_3

    .line 608
    :cond_17
    :goto_2
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    .line 610
    .line 611
    goto :goto_3

    .line 612
    :catch_0
    move-exception p1

    .line 613
    sget-object v0, Lsb/a;->a:Lsb/a$a;

    .line 614
    .line 615
    invoke-virtual {v0, p2, p1}, Lsb/a$a;->a(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Exception;)V

    .line 616
    .line 617
    .line 618
    :cond_18
    :goto_3
    return-void

    .line 619
    :sswitch_data_0
    .sparse-switch
        -0x7b649496 -> :sswitch_14
        -0x538b2147 -> :sswitch_13
        -0x392076e7 -> :sswitch_12
        -0x36b61089 -> :sswitch_11
        -0x3249d355 -> :sswitch_10
        -0x317d0577 -> :sswitch_f
        -0x2fd823be -> :sswitch_e
        -0x283da292 -> :sswitch_d
        -0x1703bd2a -> :sswitch_c
        0x1287abc0 -> :sswitch_b
        0x1cb5a1a6 -> :sswitch_a
        0x1d1961ac -> :sswitch_9
        0x285ccea3 -> :sswitch_8
        0x29afb053 -> :sswitch_7
        0x314e031a -> :sswitch_6
        0x4a532f52 -> :sswitch_5
        0x4b4cf0d3 -> :sswitch_4
        0x5753f001 -> :sswitch_3
        0x6060d5b9 -> :sswitch_2
        0x6e4047f3 -> :sswitch_1
        0x7bf6be92 -> :sswitch_0
    .end sparse-switch
.end method
