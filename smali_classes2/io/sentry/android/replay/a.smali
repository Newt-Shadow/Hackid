.class public Lio/sentry/android/replay/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/x2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/replay/a$b;
    }
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Lio/sentry/android/replay/a$b;

.field private static final snakecasePattern$delegate:Lxc/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxc/d;"
        }
    .end annotation
.end field

.field private static final supportedNetworkData:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private lastConnectivityState:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/sentry/android/replay/a$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lio/sentry/android/replay/a$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lio/sentry/android/replay/a;->Companion:Lio/sentry/android/replay/a$b;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Lio/sentry/android/replay/a;->$stable:I

    .line 12
    .line 13
    sget-object v0, Lxc/h;->c:Lxc/h;

    .line 14
    .line 15
    sget-object v1, Lio/sentry/android/replay/a$a;->e:Lio/sentry/android/replay/a$a;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lxc/e;->b(Lxc/h;Lid/a;)Lxc/d;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lio/sentry/android/replay/a;->snakecasePattern$delegate:Lxc/d;

    .line 22
    .line 23
    new-instance v0, Ljava/util/HashSet;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v1, "status_code"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    const-string v1, "method"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    const-string v1, "response_content_length"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    const-string v1, "request_content_length"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    const-string v1, "http.response_content_length"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    const-string v1, "http.request_content_length"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    sput-object v0, Lio/sentry/android/replay/a;->supportedNetworkData:Ljava/util/HashSet;

    .line 59
    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Lio/sentry/e;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Lio/sentry/e;->i()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "url"

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v1, v0, Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    check-cast v0, Ljava/lang/String;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x1

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v0, v1

    .line 31
    goto :goto_2

    .line 32
    :cond_2
    :goto_1
    move v0, v2

    .line 33
    :goto_2
    if-nez v0, :cond_3

    .line 34
    .line 35
    invoke-virtual {p1}, Lio/sentry/e;->i()Ljava/util/Map;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v3, "data"

    .line 40
    .line 41
    invoke-static {v0, v3}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string v4, "http.start_timestamp"

    .line 45
    .line 46
    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    invoke-virtual {p1}, Lio/sentry/e;->i()Ljava/util/Map;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {p1, v3}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string v0, "http.end_timestamp"

    .line 60
    .line 61
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    move v1, v2

    .line 68
    :cond_3
    return v1
.end method

.method public static final synthetic access$getSnakecasePattern$delegate$cp()Lxc/d;
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/android/replay/a;->snakecasePattern$delegate:Lxc/d;

    .line 2
    .line 3
    return-object v0
.end method

.method private final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lio/sentry/android/replay/a;->Companion:Lio/sentry/android/replay/a$b;

    .line 2
    .line 3
    invoke-static {v0}, Lio/sentry/android/replay/a$b;->a(Lio/sentry/android/replay/a$b;)Lrd/l;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lio/sentry/android/replay/a$c;->e:Lio/sentry/android/replay/a$c;

    .line 8
    .line 9
    invoke-virtual {v0, p1, v1}, Lrd/l;->e(Ljava/lang/CharSequence;Lid/l;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method private final c(Lio/sentry/e;)Lio/sentry/rrweb/i;
    .locals 10

    .line 1
    invoke-virtual {p1}, Lio/sentry/e;->i()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "http.start_timestamp"

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lio/sentry/e;->i()Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "http.end_timestamp"

    .line 16
    .line 17
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Lio/sentry/rrweb/i;

    .line 22
    .line 23
    invoke-direct {v2}, Lio/sentry/rrweb/i;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lio/sentry/e;->l()Ljava/util/Date;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    .line 31
    .line 32
    .line 33
    move-result-wide v3

    .line 34
    invoke-virtual {v2, v3, v4}, Lio/sentry/rrweb/b;->f(J)V

    .line 35
    .line 36
    .line 37
    const-string v3, "resource.http"

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Lio/sentry/rrweb/i;->s(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lio/sentry/e;->i()Ljava/util/Map;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const-string v4, "url"

    .line 47
    .line 48
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const-string v4, "null cannot be cast to non-null type kotlin.String"

    .line 53
    .line 54
    invoke-static {v3, v4}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    check-cast v3, Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Lio/sentry/rrweb/i;->q(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    instance-of v3, v0, Ljava/lang/Double;

    .line 63
    .line 64
    const-string v4, "null cannot be cast to non-null type kotlin.Long"

    .line 65
    .line 66
    const-wide v5, 0x408f400000000000L    # 1000.0

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    if-eqz v3, :cond_0

    .line 72
    .line 73
    check-cast v0, Ljava/lang/Number;

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 76
    .line 77
    .line 78
    move-result-wide v7

    .line 79
    goto :goto_0

    .line 80
    :cond_0
    invoke-static {v0, v4}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    check-cast v0, Ljava/lang/Long;

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 86
    .line 87
    .line 88
    move-result-wide v7

    .line 89
    long-to-double v7, v7

    .line 90
    :goto_0
    div-double/2addr v7, v5

    .line 91
    invoke-virtual {v2, v7, v8}, Lio/sentry/rrweb/i;->u(D)V

    .line 92
    .line 93
    .line 94
    instance-of v0, v1, Ljava/lang/Double;

    .line 95
    .line 96
    if-eqz v0, :cond_1

    .line 97
    .line 98
    check-cast v1, Ljava/lang/Number;

    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    .line 101
    .line 102
    .line 103
    move-result-wide v0

    .line 104
    goto :goto_1

    .line 105
    :cond_1
    invoke-static {v1, v4}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    check-cast v1, Ljava/lang/Long;

    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 111
    .line 112
    .line 113
    move-result-wide v0

    .line 114
    long-to-double v0, v0

    .line 115
    :goto_1
    div-double/2addr v0, v5

    .line 116
    invoke-virtual {v2, v0, v1}, Lio/sentry/rrweb/i;->r(D)V

    .line 117
    .line 118
    .line 119
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 120
    .line 121
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Lio/sentry/e;->i()Ljava/util/Map;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    const-string v1, "breadcrumb.data"

    .line 129
    .line 130
    invoke-static {p1, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-eqz v1, :cond_3

    .line 146
    .line 147
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    check-cast v1, Ljava/util/Map$Entry;

    .line 152
    .line 153
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    move-object v4, v3

    .line 158
    check-cast v4, Ljava/lang/String;

    .line 159
    .line 160
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    sget-object v3, Lio/sentry/android/replay/a;->supportedNetworkData:Ljava/util/HashSet;

    .line 165
    .line 166
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    if-eqz v3, :cond_2

    .line 171
    .line 172
    const-string v3, "key"

    .line 173
    .line 174
    invoke-static {v4, v3}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    const-string v5, "content_length"

    .line 178
    .line 179
    const-string v6, "body_size"

    .line 180
    .line 181
    const/4 v7, 0x0

    .line 182
    const/4 v8, 0x4

    .line 183
    const/4 v9, 0x0

    .line 184
    invoke-static/range {v4 .. v9}, Lrd/n;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    const-string v4, "."

    .line 189
    .line 190
    const/4 v5, 0x2

    .line 191
    const/4 v6, 0x0

    .line 192
    invoke-static {v3, v4, v6, v5, v6}, Lrd/n;->G0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    invoke-direct {p0, v3}, Lio/sentry/android/replay/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_3
    invoke-virtual {v2, v0}, Lio/sentry/rrweb/i;->o(Ljava/util/Map;)V

    .line 205
    .line 206
    .line 207
    return-object v2
.end method


# virtual methods
.method public convert(Lio/sentry/e;)Lio/sentry/rrweb/b;
    .locals 9

    .line 1
    const-string v0, "breadcrumb"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lio/sentry/e;->h()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "http"

    .line 16
    .line 17
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-direct {p0, p1}, Lio/sentry/android/replay/a;->a(Lio/sentry/e;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-direct {p0, p1}, Lio/sentry/android/replay/a;->c(Lio/sentry/e;)Lio/sentry/rrweb/i;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    :cond_0
    return-object v2

    .line 35
    :cond_1
    invoke-virtual {p1}, Lio/sentry/e;->m()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v3, "navigation"

    .line 40
    .line 41
    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    const/4 v4, 0x0

    .line 46
    const/4 v5, 0x1

    .line 47
    const-string v6, "state"

    .line 48
    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    invoke-virtual {p1}, Lio/sentry/e;->h()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string v7, "app.lifecycle"

    .line 56
    .line 57
    invoke-static {v1, v7}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v3, "app."

    .line 69
    .line 70
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lio/sentry/e;->i()Ljava/util/Map;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    :goto_0
    move-object v1, v2

    .line 89
    move-object v6, v1

    .line 90
    goto/16 :goto_d

    .line 91
    .line 92
    :cond_2
    invoke-virtual {p1}, Lio/sentry/e;->m()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_5

    .line 101
    .line 102
    invoke-virtual {p1}, Lio/sentry/e;->h()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    const-string v7, "device.orientation"

    .line 107
    .line 108
    invoke-static {v1, v7}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_5

    .line 113
    .line 114
    invoke-virtual {p1}, Lio/sentry/e;->h()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-static {v3}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Lio/sentry/e;->i()Ljava/util/Map;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    const-string v6, "position"

    .line 126
    .line 127
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    const-string v7, "landscape"

    .line 132
    .line 133
    invoke-static {v1, v7}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v7

    .line 137
    if-nez v7, :cond_4

    .line 138
    .line 139
    const-string v7, "portrait"

    .line 140
    .line 141
    invoke-static {v1, v7}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v7

    .line 145
    if-eqz v7, :cond_3

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_3
    return-object v2

    .line 149
    :cond_4
    :goto_1
    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_5
    invoke-virtual {p1}, Lio/sentry/e;->m()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    const-string v7, "breadcrumb.data"

    .line 162
    .line 163
    if-eqz v1, :cond_a

    .line 164
    .line 165
    invoke-virtual {p1}, Lio/sentry/e;->i()Ljava/util/Map;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    const-string v6, "resumed"

    .line 174
    .line 175
    invoke-static {v1, v6}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    const-string v6, "to"

    .line 180
    .line 181
    if-eqz v1, :cond_7

    .line 182
    .line 183
    invoke-virtual {p1}, Lio/sentry/e;->i()Ljava/util/Map;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    const-string v7, "screen"

    .line 188
    .line 189
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    instance-of v7, v1, Ljava/lang/String;

    .line 194
    .line 195
    if-eqz v7, :cond_6

    .line 196
    .line 197
    check-cast v1, Ljava/lang/String;

    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_6
    move-object v1, v2

    .line 201
    :goto_2
    if-eqz v1, :cond_8

    .line 202
    .line 203
    const/16 v7, 0x2e

    .line 204
    .line 205
    const/4 v8, 0x2

    .line 206
    invoke-static {v1, v7, v2, v8, v2}, Lrd/n;->I0(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    goto :goto_3

    .line 211
    :cond_7
    invoke-virtual {p1}, Lio/sentry/e;->i()Ljava/util/Map;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-static {v1, v7}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    if-eqz v1, :cond_8

    .line 223
    .line 224
    invoke-virtual {p1}, Lio/sentry/e;->i()Ljava/util/Map;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    instance-of v7, v1, Ljava/lang/String;

    .line 233
    .line 234
    if-eqz v7, :cond_8

    .line 235
    .line 236
    check-cast v1, Ljava/lang/String;

    .line 237
    .line 238
    goto :goto_3

    .line 239
    :cond_8
    move-object v1, v2

    .line 240
    :goto_3
    if-nez v1, :cond_9

    .line 241
    .line 242
    return-object v2

    .line 243
    :cond_9
    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    goto/16 :goto_0

    .line 247
    .line 248
    :cond_a
    invoke-virtual {p1}, Lio/sentry/e;->h()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    const-string v3, "ui.click"

    .line 253
    .line 254
    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v1

    .line 258
    if-eqz v1, :cond_e

    .line 259
    .line 260
    invoke-virtual {p1}, Lio/sentry/e;->i()Ljava/util/Map;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    const-string v3, "view.id"

    .line 265
    .line 266
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    if-nez v1, :cond_b

    .line 271
    .line 272
    invoke-virtual {p1}, Lio/sentry/e;->i()Ljava/util/Map;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    const-string v3, "view.tag"

    .line 277
    .line 278
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    if-nez v1, :cond_b

    .line 283
    .line 284
    invoke-virtual {p1}, Lio/sentry/e;->i()Ljava/util/Map;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    const-string v3, "view.class"

    .line 289
    .line 290
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    :cond_b
    instance-of v3, v1, Ljava/lang/String;

    .line 295
    .line 296
    if-eqz v3, :cond_c

    .line 297
    .line 298
    check-cast v1, Ljava/lang/String;

    .line 299
    .line 300
    goto :goto_4

    .line 301
    :cond_c
    move-object v1, v2

    .line 302
    :goto_4
    if-nez v1, :cond_d

    .line 303
    .line 304
    return-object v2

    .line 305
    :cond_d
    invoke-virtual {p1}, Lio/sentry/e;->i()Ljava/util/Map;

    .line 306
    .line 307
    .line 308
    move-result-object v3

    .line 309
    invoke-static {v3, v7}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 313
    .line 314
    .line 315
    const-string v3, "ui.tap"

    .line 316
    .line 317
    move-object v6, v2

    .line 318
    goto/16 :goto_d

    .line 319
    .line 320
    :cond_e
    invoke-virtual {p1}, Lio/sentry/e;->m()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    const-string v3, "system"

    .line 325
    .line 326
    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result v1

    .line 330
    const-string v3, "action"

    .line 331
    .line 332
    if-eqz v1, :cond_16

    .line 333
    .line 334
    invoke-virtual {p1}, Lio/sentry/e;->h()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    const-string v8, "network.event"

    .line 339
    .line 340
    invoke-static {v1, v8}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    move-result v1

    .line 344
    if-eqz v1, :cond_16

    .line 345
    .line 346
    invoke-virtual {p1}, Lio/sentry/e;->i()Ljava/util/Map;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    const-string v3, "NETWORK_LOST"

    .line 355
    .line 356
    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result v1

    .line 360
    if-eqz v1, :cond_f

    .line 361
    .line 362
    const-string v1, "offline"

    .line 363
    .line 364
    goto :goto_8

    .line 365
    :cond_f
    invoke-virtual {p1}, Lio/sentry/e;->i()Ljava/util/Map;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    invoke-static {v1, v7}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    const-string v3, "network_type"

    .line 373
    .line 374
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    move-result v1

    .line 378
    if-eqz v1, :cond_15

    .line 379
    .line 380
    invoke-virtual {p1}, Lio/sentry/e;->i()Ljava/util/Map;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    instance-of v7, v1, Ljava/lang/String;

    .line 389
    .line 390
    if-eqz v7, :cond_10

    .line 391
    .line 392
    check-cast v1, Ljava/lang/String;

    .line 393
    .line 394
    goto :goto_5

    .line 395
    :cond_10
    move-object v1, v2

    .line 396
    :goto_5
    if-eqz v1, :cond_12

    .line 397
    .line 398
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 399
    .line 400
    .line 401
    move-result v1

    .line 402
    if-nez v1, :cond_11

    .line 403
    .line 404
    goto :goto_6

    .line 405
    :cond_11
    move v1, v4

    .line 406
    goto :goto_7

    .line 407
    :cond_12
    :goto_6
    move v1, v5

    .line 408
    :goto_7
    if-nez v1, :cond_15

    .line 409
    .line 410
    invoke-virtual {p1}, Lio/sentry/e;->i()Ljava/util/Map;

    .line 411
    .line 412
    .line 413
    move-result-object v1

    .line 414
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    :goto_8
    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    iget-object v1, p0, Lio/sentry/android/replay/a;->lastConnectivityState:Ljava/lang/String;

    .line 422
    .line 423
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v3

    .line 427
    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    move-result v1

    .line 431
    if-eqz v1, :cond_13

    .line 432
    .line 433
    return-object v2

    .line 434
    :cond_13
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    instance-of v3, v1, Ljava/lang/String;

    .line 439
    .line 440
    if-eqz v3, :cond_14

    .line 441
    .line 442
    check-cast v1, Ljava/lang/String;

    .line 443
    .line 444
    goto :goto_9

    .line 445
    :cond_14
    move-object v1, v2

    .line 446
    :goto_9
    iput-object v1, p0, Lio/sentry/android/replay/a;->lastConnectivityState:Ljava/lang/String;

    .line 447
    .line 448
    const-string v3, "device.connectivity"

    .line 449
    .line 450
    goto/16 :goto_0

    .line 451
    .line 452
    :cond_15
    return-object v2

    .line 453
    :cond_16
    invoke-virtual {p1}, Lio/sentry/e;->i()Ljava/util/Map;

    .line 454
    .line 455
    .line 456
    move-result-object v1

    .line 457
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object v1

    .line 461
    const-string v3, "BATTERY_CHANGED"

    .line 462
    .line 463
    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    move-result v1

    .line 467
    if-eqz v1, :cond_1b

    .line 468
    .line 469
    invoke-virtual {p1}, Lio/sentry/e;->i()Ljava/util/Map;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    invoke-static {v1, v7}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 477
    .line 478
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 479
    .line 480
    .line 481
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 482
    .line 483
    .line 484
    move-result-object v1

    .line 485
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 486
    .line 487
    .line 488
    move-result-object v1

    .line 489
    :cond_17
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 490
    .line 491
    .line 492
    move-result v6

    .line 493
    if-eqz v6, :cond_1a

    .line 494
    .line 495
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object v6

    .line 499
    check-cast v6, Ljava/util/Map$Entry;

    .line 500
    .line 501
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object v7

    .line 505
    check-cast v7, Ljava/lang/String;

    .line 506
    .line 507
    const-string v8, "level"

    .line 508
    .line 509
    invoke-static {v7, v8}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 510
    .line 511
    .line 512
    move-result v8

    .line 513
    if-nez v8, :cond_19

    .line 514
    .line 515
    const-string v8, "charging"

    .line 516
    .line 517
    invoke-static {v7, v8}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 518
    .line 519
    .line 520
    move-result v7

    .line 521
    if-eqz v7, :cond_18

    .line 522
    .line 523
    goto :goto_b

    .line 524
    :cond_18
    move v7, v4

    .line 525
    goto :goto_c

    .line 526
    :cond_19
    :goto_b
    move v7, v5

    .line 527
    :goto_c
    if-eqz v7, :cond_17

    .line 528
    .line 529
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v7

    .line 533
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    move-result-object v6

    .line 537
    invoke-virtual {v3, v7, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    .line 539
    .line 540
    goto :goto_a

    .line 541
    :cond_1a
    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 542
    .line 543
    .line 544
    const-string v3, "device.battery"

    .line 545
    .line 546
    goto/16 :goto_0

    .line 547
    .line 548
    :cond_1b
    invoke-virtual {p1}, Lio/sentry/e;->h()Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v3

    .line 552
    invoke-virtual {p1}, Lio/sentry/e;->k()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v1

    .line 556
    invoke-virtual {p1}, Lio/sentry/e;->j()Lio/sentry/j5;

    .line 557
    .line 558
    .line 559
    move-result-object v6

    .line 560
    invoke-virtual {p1}, Lio/sentry/e;->i()Ljava/util/Map;

    .line 561
    .line 562
    .line 563
    move-result-object v8

    .line 564
    invoke-static {v8, v7}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 565
    .line 566
    .line 567
    invoke-interface {v0, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 568
    .line 569
    .line 570
    :goto_d
    if-eqz v3, :cond_1c

    .line 571
    .line 572
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 573
    .line 574
    .line 575
    move-result v7

    .line 576
    if-nez v7, :cond_1d

    .line 577
    .line 578
    :cond_1c
    move v4, v5

    .line 579
    :cond_1d
    if-nez v4, :cond_1e

    .line 580
    .line 581
    new-instance v2, Lio/sentry/rrweb/a;

    .line 582
    .line 583
    invoke-direct {v2}, Lio/sentry/rrweb/a;-><init>()V

    .line 584
    .line 585
    .line 586
    invoke-virtual {p1}, Lio/sentry/e;->l()Ljava/util/Date;

    .line 587
    .line 588
    .line 589
    move-result-object v4

    .line 590
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    .line 591
    .line 592
    .line 593
    move-result-wide v4

    .line 594
    invoke-virtual {v2, v4, v5}, Lio/sentry/rrweb/b;->f(J)V

    .line 595
    .line 596
    .line 597
    invoke-virtual {p1}, Lio/sentry/e;->l()Ljava/util/Date;

    .line 598
    .line 599
    .line 600
    move-result-object p1

    .line 601
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 602
    .line 603
    .line 604
    move-result-wide v4

    .line 605
    long-to-double v4, v4

    .line 606
    const-wide v7, 0x408f400000000000L    # 1000.0

    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    div-double/2addr v4, v7

    .line 612
    invoke-virtual {v2, v4, v5}, Lio/sentry/rrweb/a;->r(D)V

    .line 613
    .line 614
    .line 615
    const-string p1, "default"

    .line 616
    .line 617
    invoke-virtual {v2, p1}, Lio/sentry/rrweb/a;->s(Ljava/lang/String;)V

    .line 618
    .line 619
    .line 620
    invoke-virtual {v2, v3}, Lio/sentry/rrweb/a;->t(Ljava/lang/String;)V

    .line 621
    .line 622
    .line 623
    invoke-virtual {v2, v1}, Lio/sentry/rrweb/a;->x(Ljava/lang/String;)V

    .line 624
    .line 625
    .line 626
    invoke-virtual {v2, v6}, Lio/sentry/rrweb/a;->w(Lio/sentry/j5;)V

    .line 627
    .line 628
    .line 629
    invoke-virtual {v2, v0}, Lio/sentry/rrweb/a;->u(Ljava/util/Map;)V

    .line 630
    .line 631
    .line 632
    :cond_1e
    return-object v2
.end method
