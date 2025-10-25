.class public final Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugins/firebase/analytics/FirebaseAnalyticsHostApi;


# instance fields
.field private analytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field private channel:Lio/flutter/plugin/common/MethodChannel;

.field private messenger:Lio/flutter/plugin/common/BinaryMessenger;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lm6/l;Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->handleGetSessionId$lambda$2(Lm6/l;Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/Map;Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lm6/l;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->handleLogEvent$lambda$3(Ljava/util/Map;Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lm6/l;)V

    return-void
.end method

.method public static synthetic c(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lid/l;Lm6/Task;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->getSessionId$lambda$21(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lid/l;Lm6/Task;)V

    return-void
.end method

.method private final createBundleFromMap(Ljava/util/Map;)Landroid/os/Bundle;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_c

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/util/Map$Entry;

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Ljava/lang/String;

    .line 35
    .line 36
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    instance-of v4, v2, Ljava/lang/String;

    .line 41
    .line 42
    if-eqz v4, :cond_1

    .line 43
    .line 44
    check-cast v2, Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    instance-of v4, v2, Ljava/lang/Integer;

    .line 51
    .line 52
    if-eqz v4, :cond_2

    .line 53
    .line 54
    check-cast v2, Ljava/lang/Number;

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    int-to-long v4, v2

    .line 61
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    instance-of v4, v2, Ljava/lang/Long;

    .line 66
    .line 67
    if-eqz v4, :cond_3

    .line 68
    .line 69
    check-cast v2, Ljava/lang/Number;

    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 72
    .line 73
    .line 74
    move-result-wide v4

    .line 75
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    instance-of v4, v2, Ljava/lang/Double;

    .line 80
    .line 81
    if-eqz v4, :cond_4

    .line 82
    .line 83
    check-cast v2, Ljava/lang/Number;

    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    .line 86
    .line 87
    .line 88
    move-result-wide v4

    .line 89
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_4
    instance-of v4, v2, Ljava/lang/Boolean;

    .line 94
    .line 95
    if-eqz v4, :cond_5

    .line 96
    .line 97
    check-cast v2, Ljava/lang/Boolean;

    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_5
    if-nez v2, :cond_6

    .line 108
    .line 109
    invoke-virtual {v1, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_6
    instance-of v4, v2, Ljava/lang/Iterable;

    .line 114
    .line 115
    const-string v5, "Unsupported value type: "

    .line 116
    .line 117
    if-eqz v4, :cond_a

    .line 118
    .line 119
    new-instance v4, Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .line 123
    .line 124
    check-cast v2, Ljava/lang/Iterable;

    .line 125
    .line 126
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    if-eqz v6, :cond_9

    .line 135
    .line 136
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    instance-of v7, v6, Ljava/util/Map;

    .line 141
    .line 142
    if-eqz v7, :cond_7

    .line 143
    .line 144
    check-cast v6, Ljava/util/Map;

    .line 145
    .line 146
    invoke-direct {p0, v6}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->createBundleFromMap(Ljava/util/Map;)Landroid/os/Bundle;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_7
    if-nez v6, :cond_8

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 158
    .line 159
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string v0, " in list at key "

    .line 179
    .line 180
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    throw p1

    .line 194
    :cond_9
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 195
    .line 196
    .line 197
    goto/16 :goto_0

    .line 198
    .line 199
    :cond_a
    instance-of v4, v2, Ljava/util/Map;

    .line 200
    .line 201
    if-eqz v4, :cond_b

    .line 202
    .line 203
    check-cast v2, Ljava/util/Map;

    .line 204
    .line 205
    invoke-direct {p0, v2}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->createBundleFromMap(Ljava/util/Map;)Landroid/os/Bundle;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 210
    .line 211
    .line 212
    goto/16 :goto_0

    .line 213
    .line 214
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 215
    .line 216
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    throw p1

    .line 243
    :cond_c
    return-object v1
.end method

.method public static synthetic d(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Ljava/lang/String;Ljava/lang/String;Lm6/l;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->handleSetUserProperty$lambda$7(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Ljava/lang/String;Ljava/lang/String;Lm6/l;)V

    return-void
.end method

.method private static final didReinitializeFirebaseCore$lambda$1(Lm6/l;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Lm6/l;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    .line 4
    .line 5
    goto :goto_0

    .line 6
    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {p0, v0}, Lm6/l;->b(Ljava/lang/Exception;)V

    .line 8
    .line 9
    .line 10
    :goto_0
    return-void
.end method

.method public static synthetic e(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lid/l;Lm6/Task;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->setConsent$lambda$18(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lid/l;Lm6/Task;)V

    return-void
.end method

.method public static synthetic f(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lid/l;Lm6/Task;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->resetAnalyticsData$lambda$16(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lid/l;Lm6/Task;)V

    return-void
.end method

.method public static synthetic g(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Ljava/util/Map;Lm6/l;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->handleSetDefaultEventParameters$lambda$10(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Ljava/util/Map;Lm6/l;)V

    return-void
.end method

.method private static final getAppInstanceId$lambda$20(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lid/l;Lm6/Task;)V
    .locals 1

    .line 1
    const-string v0, "task"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2, p1}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->handleTypedTaskResult(Lm6/Task;Lid/l;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final getPluginConstantsForFirebaseApp$lambda$0(Lm6/l;)V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lm6/l;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {p0, v0}, Lm6/l;->b(Ljava/lang/Exception;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method private static final getSessionId$lambda$21(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lid/l;Lm6/Task;)V
    .locals 1

    .line 1
    const-string v0, "task"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2, p1}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->handleTypedTaskResult(Lm6/Task;Lid/l;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic h(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lid/l;Lm6/Task;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->setUserProperty$lambda$14(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lid/l;Lm6/Task;)V

    return-void
.end method

.method private final handleGetAppInstanceId()Lm6/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm6/Task;"
        }
    .end annotation

    .line 1
    new-instance v0, Lm6/l;

    .line 2
    .line 3
    invoke-direct {v0}, Lm6/l;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    new-instance v2, Lio/flutter/plugins/firebase/analytics/j0;

    .line 9
    .line 10
    invoke-direct {v2, v0, p0}, Lio/flutter/plugins/firebase/analytics/j0;-><init>(Lm6/l;Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lm6/l;->a()Lm6/Task;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "getTask(...)"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method private static final handleGetAppInstanceId$lambda$11(Lm6/l;Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p1, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->analytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string p1, "analytics"

    .line 6
    .line 7
    invoke-static {p1}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a()Lm6/Task;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lm6/n;->a(Lm6/Task;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Lm6/l;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p0, p1}, Lm6/l;->b(Ljava/lang/Exception;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method

.method private final handleGetSessionId()Lm6/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm6/Task;"
        }
    .end annotation

    .line 1
    new-instance v0, Lm6/l;

    .line 2
    .line 3
    invoke-direct {v0}, Lm6/l;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    new-instance v2, Lio/flutter/plugins/firebase/analytics/d0;

    .line 9
    .line 10
    invoke-direct {v2, v0, p0}, Lio/flutter/plugins/firebase/analytics/d0;-><init>(Lm6/l;Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lm6/l;->a()Lm6/Task;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "getTask(...)"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method private static final handleGetSessionId$lambda$2(Lm6/l;Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p1, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->analytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string p1, "analytics"

    .line 6
    .line 7
    invoke-static {p1}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->b()Lm6/Task;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lm6/n;->a(Lm6/Task;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Lm6/l;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p0, p1}, Lm6/l;->b(Ljava/lang/Exception;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method

.method private final handleLogEvent(Ljava/util/Map;)Lm6/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lm6/Task;"
        }
    .end annotation

    .line 1
    new-instance v0, Lm6/l;

    .line 2
    .line 3
    invoke-direct {v0}, Lm6/l;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    new-instance v2, Lio/flutter/plugins/firebase/analytics/r0;

    .line 9
    .line 10
    invoke-direct {v2, p1, p0, v0}, Lio/flutter/plugins/firebase/analytics/r0;-><init>(Ljava/util/Map;Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lm6/l;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lm6/l;->a()Lm6/Task;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v0, "getTask(...)"

    .line 21
    .line 22
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object p1
.end method

.method private static final handleLogEvent$lambda$3(Ljava/util/Map;Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lm6/l;)V
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "eventName"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    const-string v1, "null cannot be cast to non-null type kotlin.String"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    check-cast v0, Ljava/lang/String;

    .line 16
    .line 17
    const-string v1, "parameters"

    .line 18
    .line 19
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ljava/util/Map;

    .line 24
    .line 25
    invoke-direct {p1, p0}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->createBundleFromMap(Ljava/util/Map;)Landroid/os/Bundle;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    iget-object p1, p1, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->analytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    const-string p1, "analytics"

    .line 35
    .line 36
    invoke-static {p1}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    move-object p1, v1

    .line 40
    :cond_0
    invoke-virtual {p1, v0, p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->c(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v1}, Lm6/l;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception p0

    .line 48
    invoke-virtual {p2, p0}, Lm6/l;->b(Ljava/lang/Exception;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void
.end method

.method private final handleResetAnalyticsData()Lm6/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm6/Task;"
        }
    .end annotation

    .line 1
    new-instance v0, Lm6/l;

    .line 2
    .line 3
    invoke-direct {v0}, Lm6/l;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    new-instance v2, Lio/flutter/plugins/firebase/analytics/l0;

    .line 9
    .line 10
    invoke-direct {v2, p0, v0}, Lio/flutter/plugins/firebase/analytics/l0;-><init>(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lm6/l;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lm6/l;->a()Lm6/Task;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "getTask(...)"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method private static final handleResetAnalyticsData$lambda$8(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lm6/l;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->analytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    const-string p0, "analytics"

    .line 7
    .line 8
    invoke-static {p0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object p0, v0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->d()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lm6/l;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    invoke-virtual {p1, p0}, Lm6/l;->b(Ljava/lang/Exception;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method private final handleSetAnalyticsCollectionEnabled(Z)Lm6/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lm6/Task;"
        }
    .end annotation

    .line 1
    new-instance v0, Lm6/l;

    .line 2
    .line 3
    invoke-direct {v0}, Lm6/l;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    new-instance v2, Lio/flutter/plugins/firebase/analytics/b0;

    .line 9
    .line 10
    invoke-direct {v2, p0, p1, v0}, Lio/flutter/plugins/firebase/analytics/b0;-><init>(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;ZLm6/l;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lm6/l;->a()Lm6/Task;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v0, "getTask(...)"

    .line 21
    .line 22
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object p1
.end method

.method private static final handleSetAnalyticsCollectionEnabled$lambda$5(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;ZLm6/l;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->analytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    const-string p0, "analytics"

    .line 7
    .line 8
    invoke-static {p0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object p0, v0

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->e(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, v0}, Lm6/l;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    invoke-virtual {p2, p0}, Lm6/l;->b(Ljava/lang/Exception;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method private final handleSetConsent(Ljava/util/Map;)Lm6/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lm6/Task;"
        }
    .end annotation

    .line 1
    new-instance v0, Lm6/l;

    .line 2
    .line 3
    invoke-direct {v0}, Lm6/l;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    new-instance v2, Lio/flutter/plugins/firebase/analytics/i0;

    .line 9
    .line 10
    invoke-direct {v2, p1, p0, v0}, Lio/flutter/plugins/firebase/analytics/i0;-><init>(Ljava/util/Map;Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lm6/l;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lm6/l;->a()Lm6/Task;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v0, "getTask(...)"

    .line 21
    .line 22
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object p1
.end method

.method private static final handleSetConsent$lambda$9(Ljava/util/Map;Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lm6/l;)V
    .locals 5

    .line 1
    :try_start_0
    const-string v0, "adStorageConsentGranted"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    const-string v1, "analyticsStorageConsentGranted"

    .line 10
    .line 11
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ljava/lang/Boolean;

    .line 16
    .line 17
    const-string v2, "adPersonalizationSignalsConsentGranted"

    .line 18
    .line 19
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Ljava/lang/Boolean;

    .line 24
    .line 25
    const-string v3, "adUserDataConsentGranted"

    .line 26
    .line 27
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Ljava/lang/Boolean;

    .line 32
    .line 33
    new-instance v3, Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 36
    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    sget-object v4, Lcom/google/firebase/analytics/FirebaseAnalytics$b;->a:Lcom/google/firebase/analytics/FirebaseAnalytics$b;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    sget-object v0, Lcom/google/firebase/analytics/FirebaseAnalytics$a;->a:Lcom/google/firebase/analytics/FirebaseAnalytics$a;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    sget-object v0, Lcom/google/firebase/analytics/FirebaseAnalytics$a;->b:Lcom/google/firebase/analytics/FirebaseAnalytics$a;

    .line 52
    .line 53
    :goto_0
    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    :cond_1
    if-eqz v1, :cond_3

    .line 57
    .line 58
    sget-object v0, Lcom/google/firebase/analytics/FirebaseAnalytics$b;->b:Lcom/google/firebase/analytics/FirebaseAnalytics$b;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    sget-object v1, Lcom/google/firebase/analytics/FirebaseAnalytics$a;->a:Lcom/google/firebase/analytics/FirebaseAnalytics$a;

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    sget-object v1, Lcom/google/firebase/analytics/FirebaseAnalytics$a;->b:Lcom/google/firebase/analytics/FirebaseAnalytics$a;

    .line 70
    .line 71
    :goto_1
    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    :cond_3
    if-eqz v2, :cond_5

    .line 75
    .line 76
    sget-object v0, Lcom/google/firebase/analytics/FirebaseAnalytics$b;->d:Lcom/google/firebase/analytics/FirebaseAnalytics$b;

    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_4

    .line 83
    .line 84
    sget-object v1, Lcom/google/firebase/analytics/FirebaseAnalytics$a;->a:Lcom/google/firebase/analytics/FirebaseAnalytics$a;

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_4
    sget-object v1, Lcom/google/firebase/analytics/FirebaseAnalytics$a;->b:Lcom/google/firebase/analytics/FirebaseAnalytics$a;

    .line 88
    .line 89
    :goto_2
    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    :cond_5
    if-eqz p0, :cond_7

    .line 93
    .line 94
    sget-object v0, Lcom/google/firebase/analytics/FirebaseAnalytics$b;->c:Lcom/google/firebase/analytics/FirebaseAnalytics$b;

    .line 95
    .line 96
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    if-eqz p0, :cond_6

    .line 101
    .line 102
    sget-object p0, Lcom/google/firebase/analytics/FirebaseAnalytics$a;->a:Lcom/google/firebase/analytics/FirebaseAnalytics$a;

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_6
    sget-object p0, Lcom/google/firebase/analytics/FirebaseAnalytics$a;->b:Lcom/google/firebase/analytics/FirebaseAnalytics$a;

    .line 106
    .line 107
    :goto_3
    invoke-interface {v3, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    :cond_7
    iget-object p0, p1, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->analytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 111
    .line 112
    const/4 p1, 0x0

    .line 113
    if-nez p0, :cond_8

    .line 114
    .line 115
    const-string p0, "analytics"

    .line 116
    .line 117
    invoke-static {p0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    move-object p0, p1

    .line 121
    :cond_8
    invoke-virtual {p0, v3}, Lcom/google/firebase/analytics/FirebaseAnalytics;->f(Ljava/util/Map;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2, p1}, Lm6/l;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .line 126
    .line 127
    goto :goto_4

    .line 128
    :catch_0
    move-exception p0

    .line 129
    invoke-virtual {p2, p0}, Lm6/l;->b(Ljava/lang/Exception;)V

    .line 130
    .line 131
    .line 132
    :goto_4
    return-void
.end method

.method private final handleSetDefaultEventParameters(Ljava/util/Map;)Lm6/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lm6/Task;"
        }
    .end annotation

    .line 1
    new-instance v0, Lm6/l;

    .line 2
    .line 3
    invoke-direct {v0}, Lm6/l;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    new-instance v2, Lio/flutter/plugins/firebase/analytics/m0;

    .line 9
    .line 10
    invoke-direct {v2, p0, p1, v0}, Lio/flutter/plugins/firebase/analytics/m0;-><init>(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Ljava/util/Map;Lm6/l;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lm6/l;->a()Lm6/Task;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v0, "getTask(...)"

    .line 21
    .line 22
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object p1
.end method

.method private static final handleSetDefaultEventParameters$lambda$10(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Ljava/util/Map;Lm6/l;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->analytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "analytics"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->createBundleFromMap(Ljava/util/Map;)Landroid/os/Bundle;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {v0, p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->g(Landroid/os/Bundle;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, v1}, Lm6/l;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    invoke-virtual {p2, p0}, Lm6/l;->b(Ljava/lang/Exception;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method

.method private final handleSetSessionTimeoutDuration(J)Lm6/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lm6/Task;"
        }
    .end annotation

    .line 1
    new-instance v0, Lm6/l;

    .line 2
    .line 3
    invoke-direct {v0}, Lm6/l;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    new-instance v2, Lio/flutter/plugins/firebase/analytics/y;

    .line 9
    .line 10
    invoke-direct {v2, p0, p1, p2, v0}, Lio/flutter/plugins/firebase/analytics/y;-><init>(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;JLm6/l;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lm6/l;->a()Lm6/Task;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string p2, "getTask(...)"

    .line 21
    .line 22
    invoke-static {p1, p2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object p1
.end method

.method private static final handleSetSessionTimeoutDuration$lambda$6(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;JLm6/l;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->analytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    const-string p0, "analytics"

    .line 7
    .line 8
    invoke-static {p0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object p0, v0

    .line 12
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->h(J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p3, v0}, Lm6/l;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    invoke-virtual {p3, p0}, Lm6/l;->b(Ljava/lang/Exception;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method private final handleSetUserId(Ljava/lang/String;)Lm6/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lm6/Task;"
        }
    .end annotation

    .line 1
    new-instance v0, Lm6/l;

    .line 2
    .line 3
    invoke-direct {v0}, Lm6/l;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    new-instance v2, Lio/flutter/plugins/firebase/analytics/a0;

    .line 9
    .line 10
    invoke-direct {v2, p0, p1, v0}, Lio/flutter/plugins/firebase/analytics/a0;-><init>(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Ljava/lang/String;Lm6/l;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lm6/l;->a()Lm6/Task;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v0, "getTask(...)"

    .line 21
    .line 22
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object p1
.end method

.method private static final handleSetUserId$lambda$4(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Ljava/lang/String;Lm6/l;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->analytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    const-string p0, "analytics"

    .line 7
    .line 8
    invoke-static {p0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object p0, v0

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->i(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, v0}, Lm6/l;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    invoke-virtual {p2, p0}, Lm6/l;->b(Ljava/lang/Exception;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method private final handleSetUserProperty(Ljava/lang/String;Ljava/lang/String;)Lm6/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lm6/Task;"
        }
    .end annotation

    .line 1
    new-instance v0, Lm6/l;

    .line 2
    .line 3
    invoke-direct {v0}, Lm6/l;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    new-instance v2, Lio/flutter/plugins/firebase/analytics/s0;

    .line 9
    .line 10
    invoke-direct {v2, p0, p1, p2, v0}, Lio/flutter/plugins/firebase/analytics/s0;-><init>(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Ljava/lang/String;Ljava/lang/String;Lm6/l;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lm6/l;->a()Lm6/Task;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string p2, "getTask(...)"

    .line 21
    .line 22
    invoke-static {p1, p2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object p1
.end method

.method private static final handleSetUserProperty$lambda$7(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Ljava/lang/String;Ljava/lang/String;Lm6/l;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->analytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    const-string p0, "analytics"

    .line 7
    .line 8
    invoke-static {p0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object p0, v0

    .line 12
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p3, v0}, Lm6/l;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    invoke-virtual {p3, p0}, Lm6/l;->b(Ljava/lang/Exception;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method private final handleTypedTaskResult(Lm6/Task;Lid/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lm6/Task;",
            "Lid/l;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lm6/Task;->p()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lxc/l;->b:Lxc/l$a;

    .line 8
    .line 9
    invoke-virtual {p1}, Lm6/Task;->l()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Lxc/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Lxc/l;->a(Ljava/lang/Object;)Lxc/l;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p2, p1}, Lid/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p1}, Lm6/Task;->k()Ljava/lang/Exception;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-nez p1, :cond_2

    .line 36
    .line 37
    :cond_1
    const-string p1, "An unknown error occurred"

    .line 38
    .line 39
    :cond_2
    sget-object v0, Lxc/l;->b:Lxc/l$a;

    .line 40
    .line 41
    new-instance v0, Lio/flutter/plugins/firebase/analytics/FlutterError;

    .line 42
    .line 43
    const-string v1, "firebase_analytics"

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-direct {v0, v1, p1, v2}, Lio/flutter/plugins/firebase/analytics/FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Lxc/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p1}, Lxc/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p1}, Lxc/l;->a(Ljava/lang/Object;)Lxc/l;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-interface {p2, p1}, Lid/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    :goto_0
    return-void
.end method

.method private final handleVoidTaskResult(Lm6/Task;Lid/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm6/Task;",
            "Lid/l;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lm6/Task;->p()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object p1, Lxc/l;->b:Lxc/l$a;

    .line 8
    .line 9
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 10
    .line 11
    invoke-static {p1}, Lxc/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lxc/l;->a(Ljava/lang/Object;)Lxc/l;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p2, p1}, Lid/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p1}, Lm6/Task;->k()Ljava/lang/Exception;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-nez p1, :cond_2

    .line 34
    .line 35
    :cond_1
    const-string p1, "An unknown error occurred"

    .line 36
    .line 37
    :cond_2
    sget-object v0, Lxc/l;->b:Lxc/l$a;

    .line 38
    .line 39
    new-instance v0, Lio/flutter/plugins/firebase/analytics/FlutterError;

    .line 40
    .line 41
    const-string v1, "firebase_analytics"

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-direct {v0, v1, p1, v2}, Lio/flutter/plugins/firebase/analytics/FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Lxc/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p1}, Lxc/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p1}, Lxc/l;->a(Ljava/lang/Object;)Lxc/l;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-interface {p2, p1}, Lid/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    :goto_0
    return-void
.end method

.method public static synthetic i(Lm6/l;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->didReinitializeFirebaseCore$lambda$1(Lm6/l;)V

    return-void
.end method

.method private final initInstance(Lio/flutter/plugin/common/BinaryMessenger;Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-static {p2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iput-object p2, p0, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->analytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 6
    .line 7
    new-instance p2, Lio/flutter/plugin/common/MethodChannel;

    .line 8
    .line 9
    const-string v0, "plugins.flutter.io/firebase_analytics"

    .line 10
    .line 11
    invoke-direct {p2, p1, v0}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 15
    .line 16
    sget-object v1, Lio/flutter/plugins/firebase/analytics/FirebaseAnalyticsHostApi;->Companion:Lio/flutter/plugins/firebase/analytics/FirebaseAnalyticsHostApi$Companion;

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x4

    .line 20
    const/4 v6, 0x0

    .line 21
    move-object v2, p1

    .line 22
    move-object v3, p0

    .line 23
    invoke-static/range {v1 .. v6}, Lio/flutter/plugins/firebase/analytics/FirebaseAnalyticsHostApi$Companion;->setUp$default(Lio/flutter/plugins/firebase/analytics/FirebaseAnalyticsHostApi$Companion;Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/firebase/analytics/FirebaseAnalyticsHostApi;Ljava/lang/String;ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0, p0}, Lio/flutter/plugins/firebase/core/FlutterFirebasePluginRegistry;->registerPlugin(Ljava/lang/String;Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->messenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 30
    .line 31
    return-void
.end method

.method public static synthetic j(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lid/l;Lm6/Task;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->setSessionTimeoutDuration$lambda$17(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lid/l;Lm6/Task;)V

    return-void
.end method

.method public static synthetic k(Ljava/util/Map;Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lm6/l;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->handleSetConsent$lambda$9(Ljava/util/Map;Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lm6/l;)V

    return-void
.end method

.method public static synthetic l(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Ljava/lang/String;Lm6/l;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->handleSetUserId$lambda$4(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Ljava/lang/String;Lm6/l;)V

    return-void
.end method

.method private static final logEvent$lambda$12(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lid/l;Lm6/Task;)V
    .locals 1

    .line 1
    const-string v0, "task"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2, p1}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->handleVoidTaskResult(Lm6/Task;Lid/l;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic m(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;ZLm6/l;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->handleSetAnalyticsCollectionEnabled$lambda$5(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;ZLm6/l;)V

    return-void
.end method

.method public static synthetic n(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lid/l;Lm6/Task;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->getAppInstanceId$lambda$20(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lid/l;Lm6/Task;)V

    return-void
.end method

.method public static synthetic o(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lid/l;Lm6/Task;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->logEvent$lambda$12(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lid/l;Lm6/Task;)V

    return-void
.end method

.method public static synthetic p(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lid/l;Lm6/Task;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->setDefaultEventParameters$lambda$19(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lid/l;Lm6/Task;)V

    return-void
.end method

.method public static synthetic q(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lid/l;Lm6/Task;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->setAnalyticsCollectionEnabled$lambda$15(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lid/l;Lm6/Task;)V

    return-void
.end method

.method public static synthetic r(Lm6/l;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->getPluginConstantsForFirebaseApp$lambda$0(Lm6/l;)V

    return-void
.end method

.method private static final resetAnalyticsData$lambda$16(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lid/l;Lm6/Task;)V
    .locals 1

    .line 1
    const-string v0, "task"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2, p1}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->handleVoidTaskResult(Lm6/Task;Lid/l;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic s(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lm6/l;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->handleResetAnalyticsData$lambda$8(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lm6/l;)V

    return-void
.end method

.method private static final setAnalyticsCollectionEnabled$lambda$15(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lid/l;Lm6/Task;)V
    .locals 1

    .line 1
    const-string v0, "task"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2, p1}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->handleVoidTaskResult(Lm6/Task;Lid/l;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final setConsent$lambda$18(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lid/l;Lm6/Task;)V
    .locals 1

    .line 1
    const-string v0, "task"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2, p1}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->handleVoidTaskResult(Lm6/Task;Lid/l;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final setDefaultEventParameters$lambda$19(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lid/l;Lm6/Task;)V
    .locals 1

    .line 1
    const-string v0, "task"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2, p1}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->handleVoidTaskResult(Lm6/Task;Lid/l;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final setSessionTimeoutDuration$lambda$17(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lid/l;Lm6/Task;)V
    .locals 1

    .line 1
    const-string v0, "task"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2, p1}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->handleVoidTaskResult(Lm6/Task;Lid/l;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final setUserId$lambda$13(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lid/l;Lm6/Task;)V
    .locals 1

    .line 1
    const-string v0, "task"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2, p1}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->handleVoidTaskResult(Lm6/Task;Lid/l;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final setUserProperty$lambda$14(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lid/l;Lm6/Task;)V
    .locals 1

    .line 1
    const-string v0, "task"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2, p1}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->handleVoidTaskResult(Lm6/Task;Lid/l;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic t(Lm6/l;Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->handleGetAppInstanceId$lambda$11(Lm6/l;Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;)V

    return-void
.end method

.method public static synthetic u(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;JLm6/l;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->handleSetSessionTimeoutDuration$lambda$6(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;JLm6/l;)V

    return-void
.end method

.method public static synthetic v(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lid/l;Lm6/Task;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->setUserId$lambda$13(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lid/l;Lm6/Task;)V

    return-void
.end method


# virtual methods
.method public didReinitializeFirebaseCore()Lm6/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm6/Task;"
        }
    .end annotation

    .line 1
    new-instance v0, Lm6/l;

    .line 2
    .line 3
    invoke-direct {v0}, Lm6/l;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    new-instance v2, Lio/flutter/plugins/firebase/analytics/p0;

    .line 9
    .line 10
    invoke-direct {v2, v0}, Lio/flutter/plugins/firebase/analytics/p0;-><init>(Lm6/l;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lm6/l;->a()Lm6/Task;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "getTask(...)"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public getAppInstanceId(Lid/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lid/l;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->handleGetAppInstanceId()Lm6/Task;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lio/flutter/plugins/firebase/analytics/o0;

    .line 11
    .line 12
    invoke-direct {v1, p0, p1}, Lio/flutter/plugins/firebase/analytics/o0;-><init>(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lid/l;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lm6/Task;->c(Lm6/f;)Lm6/Task;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public getPluginConstantsForFirebaseApp(Lh7/f;)Lm6/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh7/f;",
            ")",
            "Lm6/Task;"
        }
    .end annotation

    .line 1
    new-instance p1, Lm6/l;

    .line 2
    .line 3
    invoke-direct {p1}, Lm6/l;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    new-instance v1, Lio/flutter/plugins/firebase/analytics/z;

    .line 9
    .line 10
    invoke-direct {v1, p1}, Lio/flutter/plugins/firebase/analytics/z;-><init>(Lm6/l;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lm6/l;->a()Lm6/Task;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v0, "getTask(...)"

    .line 21
    .line 22
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object p1
.end method

.method public getSessionId(Lid/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lid/l;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->handleGetSessionId()Lm6/Task;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lio/flutter/plugins/firebase/analytics/f0;

    .line 11
    .line 12
    invoke-direct {v1, p0, p1}, Lio/flutter/plugins/firebase/analytics/f0;-><init>(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lid/l;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lm6/Task;->c(Lm6/f;)Lm6/Task;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public initiateOnDeviceConversionMeasurement(Ljava/util/Map;Lid/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lid/l;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "arguments"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "callback"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lxc/l;->b:Lxc/l$a;

    .line 12
    .line 13
    new-instance p1, Lio/flutter/plugins/firebase/analytics/FlutterError;

    .line 14
    .line 15
    const-string v0, "initiateOnDeviceConversionMeasurement is only available on iOS."

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    const-string v2, "unimplemented"

    .line 19
    .line 20
    invoke-direct {p1, v2, v0, v1}, Lio/flutter/plugins/firebase/analytics/FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lxc/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Lxc/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Lxc/l;->a(Ljava/lang/Object;)Lxc/l;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p2, p1}, Lid/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public logEvent(Ljava/util/Map;Lid/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lid/l;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->handleLogEvent(Ljava/util/Map;)Lm6/Task;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v0, Lio/flutter/plugins/firebase/analytics/k0;

    .line 16
    .line 17
    invoke-direct {v0, p0, p2}, Lio/flutter/plugins/firebase/analytics/k0;-><init>(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lid/l;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lm6/Task;->c(Lm6/f;)Lm6/Task;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 2

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "getBinaryMessenger(...)"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v1, "getApplicationContext(...)"

    .line 20
    .line 21
    invoke-static {p1, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, v0, p1}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->initInstance(Lio/flutter/plugin/common/BinaryMessenger;Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 7

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v2, p0, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->messenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    sget-object v1, Lio/flutter/plugins/firebase/analytics/FirebaseAnalyticsHostApi;->Companion:Lio/flutter/plugins/firebase/analytics/FirebaseAnalyticsHostApi$Companion;

    .line 19
    .line 20
    invoke-static {v2}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v4, 0x0

    .line 25
    const/4 v5, 0x4

    .line 26
    const/4 v6, 0x0

    .line 27
    invoke-static/range {v1 .. v6}, Lio/flutter/plugins/firebase/analytics/FirebaseAnalyticsHostApi$Companion;->setUp$default(Lio/flutter/plugins/firebase/analytics/FirebaseAnalyticsHostApi$Companion;Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/firebase/analytics/FirebaseAnalyticsHostApi;Ljava/lang/String;ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 31
    .line 32
    iput-object v0, p0, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->messenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 36
    .line 37
    const-string v0, "Required value was null."

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1
.end method

.method public resetAnalyticsData(Lid/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lid/l;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->handleResetAnalyticsData()Lm6/Task;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lio/flutter/plugins/firebase/analytics/c0;

    .line 11
    .line 12
    invoke-direct {v1, p0, p1}, Lio/flutter/plugins/firebase/analytics/c0;-><init>(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lid/l;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lm6/Task;->c(Lm6/f;)Lm6/Task;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public setAnalyticsCollectionEnabled(ZLid/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lid/l;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->handleSetAnalyticsCollectionEnabled(Z)Lm6/Task;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    new-instance v0, Lio/flutter/plugins/firebase/analytics/h0;

    .line 11
    .line 12
    invoke-direct {v0, p0, p2}, Lio/flutter/plugins/firebase/analytics/h0;-><init>(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lid/l;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lm6/Task;->c(Lm6/f;)Lm6/Task;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public setConsent(Ljava/util/Map;Lid/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lid/l;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "consent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->handleSetConsent(Ljava/util/Map;)Lm6/Task;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v0, Lio/flutter/plugins/firebase/analytics/g0;

    .line 16
    .line 17
    invoke-direct {v0, p0, p2}, Lio/flutter/plugins/firebase/analytics/g0;-><init>(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lid/l;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lm6/Task;->c(Lm6/f;)Lm6/Task;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public setDefaultEventParameters(Ljava/util/Map;Lid/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lid/l;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->handleSetDefaultEventParameters(Ljava/util/Map;)Lm6/Task;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    new-instance v0, Lio/flutter/plugins/firebase/analytics/e0;

    .line 11
    .line 12
    invoke-direct {v0, p0, p2}, Lio/flutter/plugins/firebase/analytics/e0;-><init>(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lid/l;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lm6/Task;->c(Lm6/f;)Lm6/Task;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public setSessionTimeoutDuration(JLid/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lid/l;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->handleSetSessionTimeoutDuration(J)Lm6/Task;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    new-instance p2, Lio/flutter/plugins/firebase/analytics/q0;

    .line 11
    .line 12
    invoke-direct {p2, p0, p3}, Lio/flutter/plugins/firebase/analytics/q0;-><init>(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lid/l;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lm6/Task;->c(Lm6/f;)Lm6/Task;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public setUserId(Ljava/lang/String;Lid/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lid/l;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->handleSetUserId(Ljava/lang/String;)Lm6/Task;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    new-instance v0, Lio/flutter/plugins/firebase/analytics/n0;

    .line 11
    .line 12
    invoke-direct {v0, p0, p2}, Lio/flutter/plugins/firebase/analytics/n0;-><init>(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lid/l;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lm6/Task;->c(Lm6/f;)Lm6/Task;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public setUserProperty(Ljava/lang/String;Ljava/lang/String;Lid/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lid/l;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->handleSetUserProperty(Ljava/lang/String;Ljava/lang/String;)Lm6/Task;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance p2, Lio/flutter/plugins/firebase/analytics/t0;

    .line 16
    .line 17
    invoke-direct {p2, p0, p3}, Lio/flutter/plugins/firebase/analytics/t0;-><init>(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lid/l;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Lm6/Task;->c(Lm6/f;)Lm6/Task;

    .line 21
    .line 22
    .line 23
    return-void
.end method
