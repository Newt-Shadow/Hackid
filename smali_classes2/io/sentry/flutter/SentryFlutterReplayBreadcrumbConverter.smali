.class public final Lio/sentry/flutter/SentryFlutterReplayBreadcrumbConverter;
.super Lio/sentry/android/replay/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/flutter/SentryFlutterReplayBreadcrumbConverter$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/sentry/flutter/SentryFlutterReplayBreadcrumbConverter$Companion;

.field private static final supportedNetworkData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lio/sentry/flutter/SentryFlutterReplayBreadcrumbConverter$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lio/sentry/flutter/SentryFlutterReplayBreadcrumbConverter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lio/sentry/flutter/SentryFlutterReplayBreadcrumbConverter;->Companion:Lio/sentry/flutter/SentryFlutterReplayBreadcrumbConverter$Companion;

    .line 8
    .line 9
    const-string v0, "status_code"

    .line 10
    .line 11
    const-string v1, "statusCode"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "method"

    .line 18
    .line 19
    invoke-static {v1, v1}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "response_body_size"

    .line 24
    .line 25
    const-string v3, "responseBodySize"

    .line 26
    .line 27
    invoke-static {v2, v3}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const-string v3, "request_body_size"

    .line 32
    .line 33
    const-string v4, "requestBodySize"

    .line 34
    .line 35
    invoke-static {v3, v4}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    filled-new-array {v0, v1, v2, v3}, [Lxc/k;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Lyc/e0;->h([Lxc/k;)Ljava/util/Map;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lio/sentry/flutter/SentryFlutterReplayBreadcrumbConverter;->supportedNetworkData:Ljava/util/Map;

    .line 48
    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/sentry/android/replay/a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final convertNetworkBreadcrumb(Lio/sentry/e;)Lio/sentry/rrweb/b;
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lio/sentry/android/replay/a;->convert(Lio/sentry/e;)Lio/sentry/rrweb/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    invoke-virtual {p1}, Lio/sentry/e;->i()Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "start_timestamp"

    .line 12
    .line 13
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    invoke-virtual {p1}, Lio/sentry/e;->i()Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v3, "end_timestamp"

    .line 24
    .line 25
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_3

    .line 30
    .line 31
    new-instance v0, Lio/sentry/rrweb/i;

    .line 32
    .line 33
    invoke-direct {v0}, Lio/sentry/rrweb/i;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v1, "resource.http"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lio/sentry/rrweb/i;->s(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lio/sentry/e;->l()Ljava/util/Date;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    .line 46
    .line 47
    .line 48
    move-result-wide v4

    .line 49
    invoke-virtual {v0, v4, v5}, Lio/sentry/rrweb/b;->f(J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lio/sentry/e;->i()Ljava/util/Map;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const-string v4, "url"

    .line 57
    .line 58
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const-string v4, "null cannot be cast to non-null type kotlin.String"

    .line 63
    .line 64
    invoke-static {v1, v4}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    check-cast v1, Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lio/sentry/rrweb/i;->q(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lio/sentry/e;->i()Ljava/util/Map;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const-string v2, "null cannot be cast to non-null type kotlin.Long"

    .line 81
    .line 82
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    check-cast v1, Ljava/lang/Long;

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 88
    .line 89
    .line 90
    move-result-wide v4

    .line 91
    invoke-direct {p0, v4, v5}, Lio/sentry/flutter/SentryFlutterReplayBreadcrumbConverter;->doubleTimestamp(J)D

    .line 92
    .line 93
    .line 94
    move-result-wide v4

    .line 95
    invoke-virtual {v0, v4, v5}, Lio/sentry/rrweb/i;->u(D)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Lio/sentry/e;->i()Ljava/util/Map;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    check-cast v1, Ljava/lang/Long;

    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 112
    .line 113
    .line 114
    move-result-wide v1

    .line 115
    invoke-direct {p0, v1, v2}, Lio/sentry/flutter/SentryFlutterReplayBreadcrumbConverter;->doubleTimestamp(J)D

    .line 116
    .line 117
    .line 118
    move-result-wide v1

    .line 119
    invoke-virtual {v0, v1, v2}, Lio/sentry/rrweb/i;->r(D)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Lio/sentry/e;->i()Ljava/util/Map;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    const-string v1, "breadcrumb.data"

    .line 127
    .line 128
    invoke-static {p1, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 132
    .line 133
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 134
    .line 135
    .line 136
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-eqz v2, :cond_1

    .line 149
    .line 150
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    check-cast v2, Ljava/util/Map$Entry;

    .line 155
    .line 156
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    check-cast v3, Ljava/lang/String;

    .line 161
    .line 162
    sget-object v4, Lio/sentry/flutter/SentryFlutterReplayBreadcrumbConverter;->supportedNetworkData:Ljava/util/Map;

    .line 163
    .line 164
    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    if-eqz v3, :cond_0

    .line 169
    .line 170
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    invoke-virtual {v1, v3, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    goto :goto_0

    .line 182
    :cond_1
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 183
    .line 184
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    invoke-static {v2}, Lyc/e0;->b(I)I

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    invoke-direct {p1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 193
    .line 194
    .line 195
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    if-eqz v2, :cond_2

    .line 208
    .line 209
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    check-cast v2, Ljava/util/Map$Entry;

    .line 214
    .line 215
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    check-cast v3, Ljava/lang/String;

    .line 220
    .line 221
    sget-object v4, Lio/sentry/flutter/SentryFlutterReplayBreadcrumbConverter;->supportedNetworkData:Ljava/util/Map;

    .line 222
    .line 223
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    check-cast v3, Ljava/lang/String;

    .line 228
    .line 229
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    goto :goto_1

    .line 237
    :cond_2
    invoke-virtual {v0, p1}, Lio/sentry/rrweb/i;->o(Ljava/util/Map;)V

    .line 238
    .line 239
    .line 240
    :cond_3
    return-object v0
.end method

.method private final doubleTimestamp(J)D
    .locals 2

    .line 1
    long-to-double p1, p1

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v0

    return-wide p1
.end method

.method private final doubleTimestamp(Ljava/util/Date;)D
    .locals 2

    .line 2
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/sentry/flutter/SentryFlutterReplayBreadcrumbConverter;->doubleTimestamp(J)D

    move-result-wide v0

    return-wide v0
.end method

.method private final getTouchPathMessage(Ljava/lang/Object;)Ljava/lang/String;
    .locals 8

    .line 1
    instance-of v0, p1, Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    check-cast p1, Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_3

    .line 14
    .line 15
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x1

    .line 30
    sub-int/2addr v1, v2

    .line 31
    :goto_0
    const/4 v3, -0x1

    .line 32
    if-ge v3, v1, :cond_8

    .line 33
    .line 34
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    instance-of v4, v3, Ljava/util/Map;

    .line 39
    .line 40
    if-nez v4, :cond_1

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_1
    check-cast v3, Ljava/util/Map;

    .line 44
    .line 45
    const-string v4, "element"

    .line 46
    .line 47
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    if-nez v4, :cond_2

    .line 52
    .line 53
    const-string v4, "?"

    .line 54
    .line 55
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v4, "label"

    .line 59
    .line 60
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    if-nez v4, :cond_3

    .line 65
    .line 66
    const-string v4, "name"

    .line 67
    .line 68
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    :cond_3
    instance-of v3, v4, Ljava/lang/String;

    .line 73
    .line 74
    if-eqz v3, :cond_6

    .line 75
    .line 76
    move-object v3, v4

    .line 77
    check-cast v3, Ljava/lang/CharSequence;

    .line 78
    .line 79
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    const/4 v5, 0x0

    .line 84
    if-lez v3, :cond_4

    .line 85
    .line 86
    move v3, v2

    .line 87
    goto :goto_1

    .line 88
    :cond_4
    move v3, v5

    .line 89
    :goto_1
    if-eqz v3, :cond_6

    .line 90
    .line 91
    move-object v3, v4

    .line 92
    check-cast v3, Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    const/16 v7, 0x14

    .line 99
    .line 100
    if-le v6, v7, :cond_5

    .line 101
    .line 102
    new-instance v4, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    const/16 v6, 0x11

    .line 108
    .line 109
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    const-string v5, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 114
    .line 115
    invoke-static {v3, v5}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v3, "..."

    .line 122
    .line 123
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    :cond_5
    const-string v3, "("

    .line 131
    .line 132
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    check-cast v4, Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v3, ")"

    .line 141
    .line 142
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    :cond_6
    if-lez v1, :cond_7

    .line 146
    .line 147
    const-string v3, " > "

    .line 148
    .line 149
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    :cond_7
    :goto_2
    add-int/lit8 v1, v1, -0x1

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    return-object p1

    .line 160
    :cond_9
    :goto_3
    const/4 p1, 0x0

    .line 161
    return-object p1
.end method

.method private final newRRWebBreadcrumb(Lio/sentry/e;)Lio/sentry/rrweb/a;
    .locals 3

    .line 1
    new-instance v0, Lio/sentry/rrweb/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/sentry/rrweb/a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lio/sentry/e;->h()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lio/sentry/rrweb/a;->t(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lio/sentry/e;->j()Lio/sentry/j5;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lio/sentry/rrweb/a;->w(Lio/sentry/j5;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lio/sentry/e;->i()Ljava/util/Map;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lio/sentry/rrweb/a;->u(Ljava/util/Map;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lio/sentry/e;->l()Ljava/util/Date;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    invoke-virtual {v0, v1, v2}, Lio/sentry/rrweb/b;->f(J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lio/sentry/e;->l()Ljava/util/Date;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string v1, "breadcrumb.timestamp"

    .line 43
    .line 44
    invoke-static {p1, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, p1}, Lio/sentry/flutter/SentryFlutterReplayBreadcrumbConverter;->doubleTimestamp(Ljava/util/Date;)D

    .line 48
    .line 49
    .line 50
    move-result-wide v1

    .line 51
    invoke-virtual {v0, v1, v2}, Lio/sentry/rrweb/a;->r(D)V

    .line 52
    .line 53
    .line 54
    const-string p1, "default"

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Lio/sentry/rrweb/a;->s(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-object v0
.end method


# virtual methods
.method public convert(Lio/sentry/e;)Lio/sentry/rrweb/b;
    .locals 4

    .line 1
    const-string v0, "breadcrumb"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lio/sentry/e;->h()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_4

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const-string v3, "navigation"

    .line 18
    .line 19
    sparse-switch v2, :sswitch_data_0

    .line 20
    .line 21
    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :sswitch_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p1}, Lio/sentry/e;->i()Ljava/util/Map;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v2, "to"

    .line 36
    .line 37
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    invoke-virtual {p1}, Lio/sentry/e;->i()Ljava/util/Map;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    instance-of v0, v0, Ljava/lang/String;

    .line 52
    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    invoke-direct {p0, p1}, Lio/sentry/flutter/SentryFlutterReplayBreadcrumbConverter;->newRRWebBreadcrumb(Lio/sentry/e;)Lio/sentry/rrweb/a;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    goto :goto_1

    .line 60
    :sswitch_1
    const-string v2, "http"

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    invoke-direct {p0, p1}, Lio/sentry/flutter/SentryFlutterReplayBreadcrumbConverter;->convertNetworkBreadcrumb(Lio/sentry/e;)Lio/sentry/rrweb/b;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    goto :goto_2

    .line 74
    :sswitch_2
    const-string v2, "sentry.transaction"

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_4

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :sswitch_3
    const-string v2, "sentry.event"

    .line 84
    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_4

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :sswitch_4
    const-string v2, "ui.click"

    .line 93
    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_2

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_2
    invoke-direct {p0, p1}, Lio/sentry/flutter/SentryFlutterReplayBreadcrumbConverter;->newRRWebBreadcrumb(Lio/sentry/e;)Lio/sentry/rrweb/a;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    const-string v0, "ui.tap"

    .line 106
    .line 107
    invoke-virtual {v1, v0}, Lio/sentry/rrweb/a;->t(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Lio/sentry/e;->i()Ljava/util/Map;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    const-string v0, "path"

    .line 115
    .line 116
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-direct {p0, p1}, Lio/sentry/flutter/SentryFlutterReplayBreadcrumbConverter;->getTouchPathMessage(Ljava/lang/Object;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {v1, p1}, Lio/sentry/rrweb/a;->x(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :goto_0
    invoke-super {p0, p1}, Lio/sentry/android/replay/a;->convert(Lio/sentry/e;)Lio/sentry/rrweb/b;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    instance-of v0, p1, Lio/sentry/rrweb/a;

    .line 133
    .line 134
    if-eqz v0, :cond_3

    .line 135
    .line 136
    move-object v0, p1

    .line 137
    check-cast v0, Lio/sentry/rrweb/a;

    .line 138
    .line 139
    invoke-virtual {v0}, Lio/sentry/rrweb/a;->n()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-static {v0, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_3

    .line 148
    .line 149
    return-object v1

    .line 150
    :cond_3
    :goto_1
    move-object v1, p1

    .line 151
    :cond_4
    :goto_2
    return-object v1

    .line 152
    nop

    .line 153
    :sswitch_data_0
    .sparse-switch
        -0x7f837e52 -> :sswitch_4
        -0xf09ec35 -> :sswitch_3
        -0x91af4b1 -> :sswitch_2
        0x310888 -> :sswitch_1
        0x6f060a14 -> :sswitch_0
    .end sparse-switch
.end method
