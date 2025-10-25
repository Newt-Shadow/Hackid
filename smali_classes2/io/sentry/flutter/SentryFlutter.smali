.class public final Lio/sentry/flutter/SentryFlutter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/flutter/SentryFlutter$Companion;
    }
.end annotation


# static fields
.field public static final ANDROID_SDK:Ljava/lang/String; = "sentry.java.android.flutter"

.field public static final Companion:Lio/sentry/flutter/SentryFlutter$Companion;

.field public static final FLUTTER_SDK:Ljava/lang/String; = "sentry.dart.flutter"

.field public static final NATIVE_SDK:Ljava/lang/String; = "sentry.native.android.flutter"


# instance fields
.field private autoPerformanceTracingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/sentry/flutter/SentryFlutter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/sentry/flutter/SentryFlutter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/sentry/flutter/SentryFlutter;->Companion:Lio/sentry/flutter/SentryFlutter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/util/Map;Lio/sentry/t5;Lio/sentry/c0;)Lio/sentry/t5;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/sentry/flutter/SentryFlutter;->updateReplayOptions$lambda$4(Ljava/util/Map;Lio/sentry/t5;Lio/sentry/c0;)Lio/sentry/t5;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateReplayOptions(Lio/sentry/flutter/SentryFlutter;Lio/sentry/android/core/SentryAndroidOptions;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/sentry/flutter/SentryFlutter;->updateReplayOptions(Lio/sentry/android/core/SentryAndroidOptions;Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final updateReplayOptions(Lio/sentry/android/core/SentryAndroidOptions;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/android/core/SentryAndroidOptions;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/sentry/s5;->getSessionReplay()Lio/sentry/u5;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "options.sessionReplay"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "quality"

    .line 11
    .line 12
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    instance-of v2, v1, Ljava/lang/String;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    check-cast v1, Ljava/lang/String;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v1, v3

    .line 25
    :goto_0
    const-string v2, "low"

    .line 26
    .line 27
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    sget-object v1, Lio/sentry/u5$a;->LOW:Lio/sentry/u5$a;

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const-string v2, "high"

    .line 37
    .line 38
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    sget-object v1, Lio/sentry/u5$a;->HIGH:Lio/sentry/u5$a;

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    sget-object v1, Lio/sentry/u5$a;->MEDIUM:Lio/sentry/u5$a;

    .line 48
    .line 49
    :goto_1
    invoke-virtual {v0, v1}, Lio/sentry/u5;->u(Lio/sentry/u5$a;)V

    .line 50
    .line 51
    .line 52
    const-string v1, "sessionSampleRate"

    .line 53
    .line 54
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    instance-of v2, v1, Ljava/lang/Number;

    .line 59
    .line 60
    if-eqz v2, :cond_3

    .line 61
    .line 62
    check-cast v1, Ljava/lang/Number;

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_3
    move-object v1, v3

    .line 66
    :goto_2
    if-eqz v1, :cond_4

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    .line 69
    .line 70
    .line 71
    move-result-wide v1

    .line 72
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    goto :goto_3

    .line 77
    :cond_4
    move-object v1, v3

    .line 78
    :goto_3
    invoke-virtual {v0, v1}, Lio/sentry/u5;->w(Ljava/lang/Double;)V

    .line 79
    .line 80
    .line 81
    const-string v1, "onErrorSampleRate"

    .line 82
    .line 83
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    instance-of v2, v1, Ljava/lang/Number;

    .line 88
    .line 89
    if-eqz v2, :cond_5

    .line 90
    .line 91
    check-cast v1, Ljava/lang/Number;

    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_5
    move-object v1, v3

    .line 95
    :goto_4
    if-eqz v1, :cond_6

    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    .line 98
    .line 99
    .line 100
    move-result-wide v1

    .line 101
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    goto :goto_5

    .line 106
    :cond_6
    move-object v1, v3

    .line 107
    :goto_5
    invoke-virtual {v0, v1}, Lio/sentry/u5;->t(Ljava/lang/Double;)V

    .line 108
    .line 109
    .line 110
    const/4 v1, 0x0

    .line 111
    invoke-virtual {v0, v1}, Lio/sentry/u5;->x(Z)V

    .line 112
    .line 113
    .line 114
    const-string v0, "tags"

    .line 115
    .line 116
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    instance-of v0, p2, Ljava/util/Map;

    .line 121
    .line 122
    if-eqz v0, :cond_7

    .line 123
    .line 124
    move-object v3, p2

    .line 125
    check-cast v3, Ljava/util/Map;

    .line 126
    .line 127
    :cond_7
    if-nez v3, :cond_8

    .line 128
    .line 129
    invoke-static {}, Lyc/e0;->e()Ljava/util/Map;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    :cond_8
    new-instance p2, Lio/sentry/flutter/a;

    .line 134
    .line 135
    invoke-direct {p2, v3}, Lio/sentry/flutter/a;-><init>(Ljava/util/Map;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, p2}, Lio/sentry/s5;->setBeforeSendReplay(Lio/sentry/s5$e;)V

    .line 139
    .line 140
    .line 141
    return-void
.end method

.method private static final updateReplayOptions$lambda$4(Ljava/util/Map;Lio/sentry/t5;Lio/sentry/c0;)Lio/sentry/t5;
    .locals 8

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "hint"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lio/sentry/c0;->f()Lio/sentry/z2;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-eqz p2, :cond_5

    .line 16
    .line 17
    invoke-virtual {p2}, Lio/sentry/z2;->a()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    if-eqz p2, :cond_5

    .line 22
    .line 23
    check-cast p2, Ljava/lang/Iterable;

    .line 24
    .line 25
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v1, 0x0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    move-object v2, v0

    .line 41
    check-cast v2, Lio/sentry/rrweb/b;

    .line 42
    .line 43
    instance-of v2, v2, Lio/sentry/rrweb/h;

    .line 44
    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move-object v0, v1

    .line 49
    :goto_0
    check-cast v0, Lio/sentry/rrweb/b;

    .line 50
    .line 51
    if-eqz v0, :cond_5

    .line 52
    .line 53
    check-cast v0, Lio/sentry/rrweb/h;

    .line 54
    .line 55
    invoke-virtual {v0}, Lio/sentry/rrweb/h;->g()Ljava/util/Map;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    const-string v0, "optionsEvent as RRWebOptionsEvent).optionsPayload"

    .line 60
    .line 61
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_3

    .line 82
    .line 83
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    check-cast v3, Ljava/util/Map$Entry;

    .line 88
    .line 89
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    check-cast v4, Ljava/lang/String;

    .line 94
    .line 95
    const-string v5, "it"

    .line 96
    .line 97
    invoke-static {v4, v5}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const/4 v5, 0x0

    .line 101
    const/4 v6, 0x2

    .line 102
    const-string v7, "mask"

    .line 103
    .line 104
    invoke-static {v4, v7, v5, v6, v1}, Lrd/n;->N(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-eqz v4, :cond_2

    .line 109
    .line 110
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {v0, v4, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_4

    .line 135
    .line 136
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    check-cast v1, Ljava/util/Map$Entry;

    .line 141
    .line 142
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    check-cast v1, Ljava/lang/String;

    .line 147
    .line 148
    invoke-interface {p2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_4
    invoke-interface {p2, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 153
    .line 154
    .line 155
    :cond_5
    return-object p1
.end method


# virtual methods
.method public final getAutoPerformanceTracingEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/sentry/flutter/SentryFlutter;->autoPerformanceTracingEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setAutoPerformanceTracingEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/flutter/SentryFlutter;->autoPerformanceTracingEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public final updateOptions(Lio/sentry/android/core/SentryAndroidOptions;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/android/core/SentryAndroidOptions;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "options"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "data"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lio/sentry/flutter/SentryFlutter$updateOptions$1;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$1;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "dsn"

    .line 17
    .line 18
    invoke-static {p2, v1, v0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lid/l;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lio/sentry/flutter/SentryFlutter$updateOptions$2;

    .line 22
    .line 23
    invoke-direct {v0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$2;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 24
    .line 25
    .line 26
    const-string v1, "debug"

    .line 27
    .line 28
    invoke-static {p2, v1, v0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lid/l;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Lio/sentry/flutter/SentryFlutter$updateOptions$3;

    .line 32
    .line 33
    invoke-direct {v0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$3;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 34
    .line 35
    .line 36
    const-string v1, "environment"

    .line 37
    .line 38
    invoke-static {p2, v1, v0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lid/l;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Lio/sentry/flutter/SentryFlutter$updateOptions$4;

    .line 42
    .line 43
    invoke-direct {v0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$4;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 44
    .line 45
    .line 46
    const-string v1, "release"

    .line 47
    .line 48
    invoke-static {p2, v1, v0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lid/l;)V

    .line 49
    .line 50
    .line 51
    new-instance v0, Lio/sentry/flutter/SentryFlutter$updateOptions$5;

    .line 52
    .line 53
    invoke-direct {v0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$5;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 54
    .line 55
    .line 56
    const-string v1, "dist"

    .line 57
    .line 58
    invoke-static {p2, v1, v0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lid/l;)V

    .line 59
    .line 60
    .line 61
    new-instance v0, Lio/sentry/flutter/SentryFlutter$updateOptions$6;

    .line 62
    .line 63
    invoke-direct {v0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$6;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 64
    .line 65
    .line 66
    const-string v1, "enableAutoSessionTracking"

    .line 67
    .line 68
    invoke-static {p2, v1, v0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lid/l;)V

    .line 69
    .line 70
    .line 71
    new-instance v0, Lio/sentry/flutter/SentryFlutter$updateOptions$7;

    .line 72
    .line 73
    invoke-direct {v0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$7;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 74
    .line 75
    .line 76
    const-string v1, "autoSessionTrackingIntervalMillis"

    .line 77
    .line 78
    invoke-static {p2, v1, v0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lid/l;)V

    .line 79
    .line 80
    .line 81
    new-instance v0, Lio/sentry/flutter/SentryFlutter$updateOptions$8;

    .line 82
    .line 83
    invoke-direct {v0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$8;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 84
    .line 85
    .line 86
    const-string v1, "anrTimeoutIntervalMillis"

    .line 87
    .line 88
    invoke-static {p2, v1, v0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lid/l;)V

    .line 89
    .line 90
    .line 91
    new-instance v0, Lio/sentry/flutter/SentryFlutter$updateOptions$9;

    .line 92
    .line 93
    invoke-direct {v0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$9;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 94
    .line 95
    .line 96
    const-string v1, "attachThreads"

    .line 97
    .line 98
    invoke-static {p2, v1, v0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lid/l;)V

    .line 99
    .line 100
    .line 101
    new-instance v0, Lio/sentry/flutter/SentryFlutter$updateOptions$10;

    .line 102
    .line 103
    invoke-direct {v0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$10;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 104
    .line 105
    .line 106
    const-string v1, "attachStacktrace"

    .line 107
    .line 108
    invoke-static {p2, v1, v0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lid/l;)V

    .line 109
    .line 110
    .line 111
    new-instance v0, Lio/sentry/flutter/SentryFlutter$updateOptions$11;

    .line 112
    .line 113
    invoke-direct {v0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$11;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 114
    .line 115
    .line 116
    const-string v1, "enableAutoNativeBreadcrumbs"

    .line 117
    .line 118
    invoke-static {p2, v1, v0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lid/l;)V

    .line 119
    .line 120
    .line 121
    new-instance v0, Lio/sentry/flutter/SentryFlutter$updateOptions$12;

    .line 122
    .line 123
    invoke-direct {v0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$12;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 124
    .line 125
    .line 126
    const-string v1, "maxBreadcrumbs"

    .line 127
    .line 128
    invoke-static {p2, v1, v0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lid/l;)V

    .line 129
    .line 130
    .line 131
    new-instance v0, Lio/sentry/flutter/SentryFlutter$updateOptions$13;

    .line 132
    .line 133
    invoke-direct {v0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$13;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 134
    .line 135
    .line 136
    const-string v1, "maxCacheItems"

    .line 137
    .line 138
    invoke-static {p2, v1, v0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lid/l;)V

    .line 139
    .line 140
    .line 141
    new-instance v0, Lio/sentry/flutter/SentryFlutter$updateOptions$14;

    .line 142
    .line 143
    invoke-direct {v0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$14;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 144
    .line 145
    .line 146
    const-string v1, "diagnosticLevel"

    .line 147
    .line 148
    invoke-static {p2, v1, v0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lid/l;)V

    .line 149
    .line 150
    .line 151
    new-instance v0, Lio/sentry/flutter/SentryFlutter$updateOptions$15;

    .line 152
    .line 153
    invoke-direct {v0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$15;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 154
    .line 155
    .line 156
    const-string v1, "anrEnabled"

    .line 157
    .line 158
    invoke-static {p2, v1, v0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lid/l;)V

    .line 159
    .line 160
    .line 161
    new-instance v0, Lio/sentry/flutter/SentryFlutter$updateOptions$16;

    .line 162
    .line 163
    invoke-direct {v0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$16;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 164
    .line 165
    .line 166
    const-string v1, "sendDefaultPii"

    .line 167
    .line 168
    invoke-static {p2, v1, v0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lid/l;)V

    .line 169
    .line 170
    .line 171
    new-instance v0, Lio/sentry/flutter/SentryFlutter$updateOptions$17;

    .line 172
    .line 173
    invoke-direct {v0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$17;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 174
    .line 175
    .line 176
    const-string v1, "enableNdkScopeSync"

    .line 177
    .line 178
    invoke-static {p2, v1, v0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lid/l;)V

    .line 179
    .line 180
    .line 181
    new-instance v0, Lio/sentry/flutter/SentryFlutter$updateOptions$18;

    .line 182
    .line 183
    invoke-direct {v0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$18;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 184
    .line 185
    .line 186
    const-string v1, "proguardUuid"

    .line 187
    .line 188
    invoke-static {p2, v1, v0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lid/l;)V

    .line 189
    .line 190
    .line 191
    new-instance v0, Lio/sentry/flutter/SentryFlutter$updateOptions$19;

    .line 192
    .line 193
    invoke-direct {v0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$19;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 194
    .line 195
    .line 196
    const-string v1, "enableSpotlight"

    .line 197
    .line 198
    invoke-static {p2, v1, v0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lid/l;)V

    .line 199
    .line 200
    .line 201
    new-instance v0, Lio/sentry/flutter/SentryFlutter$updateOptions$20;

    .line 202
    .line 203
    invoke-direct {v0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$20;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 204
    .line 205
    .line 206
    const-string v1, "spotlightUrl"

    .line 207
    .line 208
    invoke-static {p2, v1, v0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lid/l;)V

    .line 209
    .line 210
    .line 211
    const-string v0, "enableNativeCrashHandling"

    .line 212
    .line 213
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    instance-of v1, v0, Ljava/lang/Boolean;

    .line 218
    .line 219
    if-eqz v1, :cond_0

    .line 220
    .line 221
    check-cast v0, Ljava/lang/Boolean;

    .line 222
    .line 223
    goto :goto_0

    .line 224
    :cond_0
    const/4 v0, 0x0

    .line 225
    :goto_0
    if-eqz v0, :cond_1

    .line 226
    .line 227
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    goto :goto_1

    .line 232
    :cond_1
    const/4 v0, 0x1

    .line 233
    :goto_1
    if-nez v0, :cond_2

    .line 234
    .line 235
    const/4 v0, 0x0

    .line 236
    invoke-virtual {p1, v0}, Lio/sentry/s5;->setEnableUncaughtExceptionHandler(Z)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setAnrEnabled(Z)V

    .line 240
    .line 241
    .line 242
    :cond_2
    new-instance v0, Lio/sentry/flutter/SentryFlutter$updateOptions$21;

    .line 243
    .line 244
    invoke-direct {v0, p0}, Lio/sentry/flutter/SentryFlutter$updateOptions$21;-><init>(Lio/sentry/flutter/SentryFlutter;)V

    .line 245
    .line 246
    .line 247
    const-string v1, "enableAutoPerformanceTracing"

    .line 248
    .line 249
    invoke-static {p2, v1, v0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lid/l;)V

    .line 250
    .line 251
    .line 252
    new-instance v0, Lio/sentry/flutter/SentryFlutter$updateOptions$22;

    .line 253
    .line 254
    invoke-direct {v0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$22;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 255
    .line 256
    .line 257
    const-string v1, "sendClientReports"

    .line 258
    .line 259
    invoke-static {p2, v1, v0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lid/l;)V

    .line 260
    .line 261
    .line 262
    new-instance v0, Lio/sentry/flutter/SentryFlutter$updateOptions$23;

    .line 263
    .line 264
    invoke-direct {v0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$23;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 265
    .line 266
    .line 267
    const-string v1, "maxAttachmentSize"

    .line 268
    .line 269
    invoke-static {p2, v1, v0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lid/l;)V

    .line 270
    .line 271
    .line 272
    new-instance v0, Lkotlin/jvm/internal/c0;

    .line 273
    .line 274
    invoke-direct {v0}, Lkotlin/jvm/internal/c0;-><init>()V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p1}, Lio/sentry/s5;->getSdkVersion()Lio/sentry/protocol/p;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    iput-object v1, v0, Lkotlin/jvm/internal/c0;->a:Ljava/lang/Object;

    .line 282
    .line 283
    const-string v2, "sentry.java.android.flutter"

    .line 284
    .line 285
    if-nez v1, :cond_3

    .line 286
    .line 287
    new-instance v1, Lio/sentry/protocol/p;

    .line 288
    .line 289
    const-string v3, "7.22.4"

    .line 290
    .line 291
    invoke-direct {v1, v2, v3}, Lio/sentry/protocol/p;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    iput-object v1, v0, Lkotlin/jvm/internal/c0;->a:Ljava/lang/Object;

    .line 295
    .line 296
    goto :goto_2

    .line 297
    :cond_3
    invoke-virtual {v1, v2}, Lio/sentry/protocol/p;->i(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    :goto_2
    iget-object v1, v0, Lkotlin/jvm/internal/c0;->a:Ljava/lang/Object;

    .line 301
    .line 302
    check-cast v1, Lio/sentry/protocol/p;

    .line 303
    .line 304
    invoke-virtual {p1, v1}, Lio/sentry/s5;->setSdkVersion(Lio/sentry/protocol/p;)V

    .line 305
    .line 306
    .line 307
    const-string v1, "sentry.java.android.flutter/7.22.4"

    .line 308
    .line 309
    invoke-virtual {p1, v1}, Lio/sentry/s5;->setSentryClientName(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    const-string v1, "sentry.native.android.flutter"

    .line 313
    .line 314
    invoke-virtual {p1, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setNativeSdkName(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    new-instance v1, Lio/sentry/flutter/SentryFlutter$updateOptions$24;

    .line 318
    .line 319
    invoke-direct {v1, v0}, Lio/sentry/flutter/SentryFlutter$updateOptions$24;-><init>(Lkotlin/jvm/internal/c0;)V

    .line 320
    .line 321
    .line 322
    const-string v0, "sdk"

    .line 323
    .line 324
    invoke-static {p2, v0, v1}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lid/l;)V

    .line 325
    .line 326
    .line 327
    new-instance v0, Lio/sentry/flutter/BeforeSendCallbackImpl;

    .line 328
    .line 329
    invoke-direct {v0}, Lio/sentry/flutter/BeforeSendCallbackImpl;-><init>()V

    .line 330
    .line 331
    .line 332
    invoke-virtual {p1, v0}, Lio/sentry/s5;->setBeforeSend(Lio/sentry/s5$d;)V

    .line 333
    .line 334
    .line 335
    new-instance v0, Lio/sentry/flutter/SentryFlutter$updateOptions$25;

    .line 336
    .line 337
    invoke-direct {v0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$25;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 338
    .line 339
    .line 340
    const-string v1, "connectionTimeoutMillis"

    .line 341
    .line 342
    invoke-static {p2, v1, v0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lid/l;)V

    .line 343
    .line 344
    .line 345
    new-instance v0, Lio/sentry/flutter/SentryFlutter$updateOptions$26;

    .line 346
    .line 347
    invoke-direct {v0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$26;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 348
    .line 349
    .line 350
    const-string v1, "readTimeoutMillis"

    .line 351
    .line 352
    invoke-static {p2, v1, v0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lid/l;)V

    .line 353
    .line 354
    .line 355
    new-instance v0, Lio/sentry/flutter/SentryFlutter$updateOptions$27;

    .line 356
    .line 357
    invoke-direct {v0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$27;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 358
    .line 359
    .line 360
    const-string v1, "proxy"

    .line 361
    .line 362
    invoke-static {p2, v1, v0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lid/l;)V

    .line 363
    .line 364
    .line 365
    new-instance v0, Lio/sentry/flutter/SentryFlutter$updateOptions$28;

    .line 366
    .line 367
    invoke-direct {v0, p0, p1, p2}, Lio/sentry/flutter/SentryFlutter$updateOptions$28;-><init>(Lio/sentry/flutter/SentryFlutter;Lio/sentry/android/core/SentryAndroidOptions;Ljava/util/Map;)V

    .line 368
    .line 369
    .line 370
    const-string p1, "replay"

    .line 371
    .line 372
    invoke-static {p2, p1, v0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lid/l;)V

    .line 373
    .line 374
    .line 375
    return-void
.end method
