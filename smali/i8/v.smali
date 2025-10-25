.class Li8/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Lo0/f$a;

.field private static final c:Lo0/f$a;

.field private static final d:Lo0/f$a;


# instance fields
.field private final a:La8/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "fire-global"

    .line 2
    .line 3
    invoke-static {v0}, Lo0/h;->f(Ljava/lang/String;)Lo0/f$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Li8/v;->b:Lo0/f$a;

    .line 8
    .line 9
    const-string v0, "fire-count"

    .line 10
    .line 11
    invoke-static {v0}, Lo0/h;->f(Ljava/lang/String;)Lo0/f$a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Li8/v;->c:Lo0/f$a;

    .line 16
    .line 17
    const-string v0, "last-used-date"

    .line 18
    .line 19
    invoke-static {v0}, Lo0/h;->g(Ljava/lang/String;)Lo0/f$a;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Li8/v;->d:Lo0/f$a;

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, La8/b;

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "FirebaseHeartBeat"

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-direct {v0, p1, p2}, La8/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Li8/v;->a:La8/b;

    .line 27
    .line 28
    return-void
.end method

.method public static synthetic a(Li8/v;Lo0/c;)Lxc/t;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Li8/v;->k(Lo0/c;)Lxc/t;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(JLo0/c;)Lxc/t;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Li8/v;->n(JLo0/c;)Lxc/t;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Li8/v;Ljava/lang/String;Ljava/lang/String;Lo0/f$a;Lo0/c;)Lxc/t;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Li8/v;->m(Ljava/lang/String;Ljava/lang/String;Lo0/f$a;Lo0/c;)Lxc/t;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Li8/v;Ljava/lang/String;Lo0/c;)Lxc/t;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Li8/v;->l(Ljava/lang/String;Lo0/c;)Lxc/t;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized e(Lo0/c;)J
    .locals 11

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Li8/v;->c:Lo0/f$a;

    .line 3
    .line 4
    const-wide/16 v1, 0x0

    .line 5
    .line 6
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {p1, v0, v1}, La8/c;->a(Lo0/f;Lo0/f$a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Long;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    const-string v2, ""

    .line 21
    .line 22
    new-instance v3, Ljava/util/HashSet;

    .line 23
    .line 24
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lo0/c;->a()Ljava/util/Map;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    const/4 v5, 0x0

    .line 40
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-eqz v6, :cond_3

    .line 45
    .line 46
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    check-cast v6, Ljava/util/Map$Entry;

    .line 51
    .line 52
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    instance-of v7, v7, Ljava/util/Set;

    .line 57
    .line 58
    if-eqz v7, :cond_0

    .line 59
    .line 60
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    check-cast v7, Ljava/util/Set;

    .line 65
    .line 66
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    if-eqz v9, :cond_0

    .line 75
    .line 76
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    check-cast v9, Ljava/lang/String;

    .line 81
    .line 82
    if-eqz v5, :cond_2

    .line 83
    .line 84
    invoke-virtual {v5, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v10

    .line 88
    if-lez v10, :cond_1

    .line 89
    .line 90
    :cond_2
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    check-cast v2, Lo0/f$a;

    .line 95
    .line 96
    invoke-virtual {v2}, Lo0/f$a;->a()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    move-object v3, v7

    .line 101
    move-object v5, v9

    .line 102
    goto :goto_0

    .line 103
    :cond_3
    new-instance v4, Ljava/util/HashSet;

    .line 104
    .line 105
    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 106
    .line 107
    .line 108
    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    invoke-static {v2}, Lo0/h;->h(Ljava/lang/String;)Lo0/f$a;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {p1, v2, v4}, Lo0/c;->j(Lo0/f$a;Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    sget-object v2, Li8/v;->c:Lo0/f$a;

    .line 119
    .line 120
    const-wide/16 v3, 0x1

    .line 121
    .line 122
    sub-long/2addr v0, v3

    .line 123
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {p1, v2, v3}, Lo0/c;->j(Lo0/f$a;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    .line 129
    .line 130
    monitor-exit p0

    .line 131
    return-wide v0

    .line 132
    :catchall_0
    move-exception p1

    .line 133
    monitor-exit p0

    .line 134
    throw p1
.end method

.method private declared-synchronized h(J)Ljava/lang/String;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x1a

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/util/Date;

    .line 9
    .line 10
    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Li8/k;->a(Ljava/util/Date;)Ljava/time/Instant;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {}, Li8/l;->a()Ljava/time/ZoneOffset;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-static {p1, p2}, Li8/m;->a(Ljava/time/Instant;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Li8/n;->a(Ljava/time/OffsetDateTime;)Ljava/time/LocalDateTime;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {}, Li8/o;->a()Ljava/time/format/DateTimeFormatter;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-static {p1, p2}, Li8/p;->a(Ljava/time/LocalDateTime;Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit p0

    .line 38
    return-object p1

    .line 39
    :cond_0
    :try_start_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 40
    .line 41
    const-string v1, "yyyy-MM-dd"

    .line 42
    .line 43
    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 44
    .line 45
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 46
    .line 47
    .line 48
    new-instance v1, Ljava/util/Date;

    .line 49
    .line 50
    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    monitor-exit p0

    .line 58
    return-object p1

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    monitor-exit p0

    .line 61
    throw p1
.end method

.method private declared-synchronized i(Lo0/c;Ljava/lang/String;)Lo0/f$a;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lo0/c;->a()Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/util/Map$Entry;

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    instance-of v1, v1, Ljava/util/Set;

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Ljava/util/Set;

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_1

    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Lo0/f$a;

    .line 67
    .line 68
    invoke-virtual {p1}, Lo0/f$a;->a()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-static {p1}, Lo0/h;->h(Ljava/lang/String;)Lo0/f$a;

    .line 73
    .line 74
    .line 75
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    .line 77
    return-object p1

    .line 78
    :cond_2
    monitor-exit p0

    .line 79
    const/4 p1, 0x0

    .line 80
    return-object p1

    .line 81
    :catchall_0
    move-exception p1

    .line 82
    monitor-exit p0

    .line 83
    throw p1
.end method

.method private synthetic k(Lo0/c;)Lxc/t;
    .locals 9

    .line 1
    invoke-virtual {p1}, Lo0/c;->a()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-wide/16 v1, 0x0

    .line 14
    .line 15
    move-wide v3, v1

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    if-eqz v5, :cond_2

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    check-cast v5, Ljava/util/Map$Entry;

    .line 27
    .line 28
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    instance-of v6, v6, Ljava/util/Set;

    .line 33
    .line 34
    if-eqz v6, :cond_0

    .line 35
    .line 36
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    check-cast v6, Lo0/f$a;

    .line 41
    .line 42
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    check-cast v5, Ljava/util/Set;

    .line 47
    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 49
    .line 50
    .line 51
    move-result-wide v7

    .line 52
    invoke-direct {p0, v7, v8}, Li8/v;->h(J)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-eqz v5, :cond_1

    .line 61
    .line 62
    invoke-static {v7}, Li8/q;->a(Ljava/lang/Object;)Ljava/util/Set;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {p1, v6, v5}, Lo0/c;->j(Lo0/f$a;Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    const-wide/16 v5, 0x1

    .line 70
    .line 71
    add-long/2addr v3, v5

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p1, v6}, Lo0/c;->i(Lo0/f$a;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    cmp-long v0, v3, v1

    .line 78
    .line 79
    if-nez v0, :cond_3

    .line 80
    .line 81
    sget-object v0, Li8/v;->c:Lo0/f$a;

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Lo0/c;->i(Lo0/f$a;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    sget-object v0, Li8/v;->c:Lo0/f$a;

    .line 88
    .line 89
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {p1, v0, v1}, Lo0/c;->j(Lo0/f$a;Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :goto_1
    const/4 p1, 0x0

    .line 97
    return-object p1
.end method

.method private synthetic l(Ljava/lang/String;Lo0/c;)Lxc/t;
    .locals 1

    .line 1
    sget-object v0, Li8/v;->d:Lo0/f$a;

    .line 2
    .line 3
    invoke-virtual {p2, v0, p1}, Lo0/c;->j(Lo0/f$a;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2, p1}, Li8/v;->p(Lo0/c;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1
.end method

.method private synthetic m(Ljava/lang/String;Ljava/lang/String;Lo0/f$a;Lo0/c;)Lxc/t;
    .locals 11

    .line 1
    sget-object v0, Li8/v;->d:Lo0/f$a;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-static {p4, v0, v1}, La8/c;->a(Lo0/f;Lo0/f$a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    invoke-direct {p0, p4, p1}, Li8/v;->i(Lo0/c;Ljava/lang/String;)Lo0/f$a;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    return-object v2

    .line 25
    :cond_0
    invoke-virtual {v0}, Lo0/f$a;->a()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    return-object v2

    .line 36
    :cond_1
    invoke-direct {p0, p4, p3, p1}, Li8/v;->u(Lo0/c;Lo0/f$a;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-object v2

    .line 40
    :cond_2
    sget-object p2, Li8/v;->c:Lo0/f$a;

    .line 41
    .line 42
    const-wide/16 v3, 0x0

    .line 43
    .line 44
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {p4, p2, v1}, La8/c;->a(Lo0/f;Lo0/f$a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Ljava/lang/Long;

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 55
    .line 56
    .line 57
    move-result-wide v3

    .line 58
    const-wide/16 v5, 0x1

    .line 59
    .line 60
    add-long v7, v3, v5

    .line 61
    .line 62
    const-wide/16 v9, 0x1e

    .line 63
    .line 64
    cmp-long v1, v7, v9

    .line 65
    .line 66
    if-nez v1, :cond_3

    .line 67
    .line 68
    invoke-direct {p0, p4}, Li8/v;->e(Lo0/c;)J

    .line 69
    .line 70
    .line 71
    move-result-wide v3

    .line 72
    :cond_3
    new-instance v1, Ljava/util/HashSet;

    .line 73
    .line 74
    new-instance v7, Ljava/util/HashSet;

    .line 75
    .line 76
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-static {p4, p3, v7}, La8/c;->a(Lo0/f;Lo0/f$a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    check-cast v7, Ljava/util/Collection;

    .line 84
    .line 85
    invoke-direct {v1, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 86
    .line 87
    .line 88
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    add-long/2addr v3, v5

    .line 92
    invoke-virtual {p4, p3, v1}, Lo0/c;->j(Lo0/f$a;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    invoke-virtual {p4, p2, p3}, Lo0/c;->j(Lo0/f$a;Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p4, v0, p1}, Lo0/c;->j(Lo0/f$a;Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    return-object v2
.end method

.method private static synthetic n(JLo0/c;)Lxc/t;
    .locals 1

    .line 1
    sget-object v0, Li8/v;->b:Lo0/f$a;

    .line 2
    .line 3
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p2, v0, p0}, Lo0/c;->j(Lo0/f$a;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method private declared-synchronized p(Lo0/c;Ljava/lang/String;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0, p1, p2}, Li8/v;->i(Lo0/c;Ljava/lang/String;)Lo0/f$a;

    .line 3
    .line 4
    .line 5
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/HashSet;

    .line 11
    .line 12
    new-instance v2, Ljava/util/HashSet;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0, v2}, La8/c;->a(Lo0/f;Lo0/f$a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Ljava/util/Collection;

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lo0/c;->i(Lo0/f$a;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p1, v0, v1}, Lo0/c;->j(Lo0/f$a;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .line 41
    .line 42
    :goto_0
    monitor-exit p0

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    monitor-exit p0

    .line 46
    throw p1
.end method

.method private declared-synchronized u(Lo0/c;Lo0/f$a;Ljava/lang/String;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0, p1, p3}, Li8/v;->p(Lo0/c;Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    new-instance v0, Ljava/util/HashSet;

    .line 6
    .line 7
    new-instance v1, Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {p1, p2, v1}, La8/c;->a(Lo0/f;Lo0/f$a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Ljava/util/Collection;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2, v0}, Lo0/c;->j(Lo0/f$a;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    monitor-exit p0

    .line 31
    throw p1
.end method


# virtual methods
.method declared-synchronized f()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Li8/v;->a:La8/b;

    .line 3
    .line 4
    new-instance v1, Li8/s;

    .line 5
    .line 6
    invoke-direct {v1, p0}, Li8/s;-><init>(Li8/v;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, La8/b;->e(Lid/l;)Lo0/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    monitor-exit p0

    .line 16
    throw v0
.end method

.method declared-synchronized g()Ljava/util/List;
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-direct {p0, v1, v2}, Li8/v;->h(J)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Li8/v;->a:La8/b;

    .line 16
    .line 17
    invoke-virtual {v2}, La8/b;->f()Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Ljava/util/Map$Entry;

    .line 40
    .line 41
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    instance-of v4, v4, Ljava/util/Set;

    .line 46
    .line 47
    if-eqz v4, :cond_0

    .line 48
    .line 49
    new-instance v4, Ljava/util/HashSet;

    .line 50
    .line 51
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    check-cast v5, Ljava/util/Set;

    .line 56
    .line 57
    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 58
    .line 59
    .line 60
    invoke-interface {v4, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-nez v5, :cond_0

    .line 68
    .line 69
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Lo0/f$a;

    .line 74
    .line 75
    invoke-virtual {v3}, Lo0/f$a;->a()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    new-instance v5, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 82
    .line 83
    .line 84
    invoke-static {v3, v5}, Li8/w;->a(Ljava/lang/String;Ljava/util/List;)Li8/w;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 93
    .line 94
    .line 95
    move-result-wide v1

    .line 96
    invoke-virtual {p0, v1, v2}, Li8/v;->t(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .line 98
    .line 99
    monitor-exit p0

    .line 100
    return-object v0

    .line 101
    :catchall_0
    move-exception v0

    .line 102
    monitor-exit p0

    .line 103
    throw v0
.end method

.method declared-synchronized j(JJ)Z
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0, p1, p2}, Li8/v;->h(J)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-direct {p0, p3, p4}, Li8/v;->h(J)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    .line 15
    return p1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    .line 18
    throw p1
.end method

.method declared-synchronized o()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 3
    .line 4
    .line 5
    move-result-wide v0

    .line 6
    invoke-direct {p0, v0, v1}, Li8/v;->h(J)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Li8/v;->a:La8/b;

    .line 11
    .line 12
    new-instance v2, Li8/u;

    .line 13
    .line 14
    invoke-direct {v2, p0, v0}, Li8/u;-><init>(Li8/v;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, La8/b;->e(Lid/l;)Lo0/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    monitor-exit p0

    .line 24
    throw v0
.end method

.method declared-synchronized q(J)Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Li8/v;->b:Lo0/f$a;

    .line 3
    .line 4
    invoke-virtual {p0, v0, p1, p2}, Li8/v;->r(Lo0/f$a;J)Z

    .line 5
    .line 6
    .line 7
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return p1

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p0

    .line 12
    throw p1
.end method

.method declared-synchronized r(Lo0/f$a;J)Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Li8/v;->a:La8/b;

    .line 3
    .line 4
    const-wide/16 v1, -0x1

    .line 5
    .line 6
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, p1, v1}, La8/b;->h(Lo0/f$a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Long;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    invoke-virtual {p0, v0, v1, p2, p3}, Li8/v;->j(JJ)Z

    .line 21
    .line 22
    .line 23
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    monitor-exit p0

    .line 27
    const/4 p1, 0x0

    .line 28
    return p1

    .line 29
    :cond_0
    :try_start_1
    iget-object v0, p0, Li8/v;->a:La8/b;

    .line 30
    .line 31
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {v0, p1, p2}, La8/b;->i(Lo0/f$a;Ljava/lang/Object;)Lo0/f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .line 37
    .line 38
    monitor-exit p0

    .line 39
    const/4 p1, 0x1

    .line 40
    return p1

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    monitor-exit p0

    .line 43
    throw p1
.end method

.method declared-synchronized s(JLjava/lang/String;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0, p1, p2}, Li8/v;->h(J)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-static {p3}, Lo0/h;->h(Ljava/lang/String;)Lo0/f$a;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    iget-object v0, p0, Li8/v;->a:La8/b;

    .line 11
    .line 12
    new-instance v1, Li8/t;

    .line 13
    .line 14
    invoke-direct {v1, p0, p1, p3, p2}, Li8/t;-><init>(Li8/v;Ljava/lang/String;Ljava/lang/String;Lo0/f$a;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, La8/b;->e(Lid/l;)Lo0/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    monitor-exit p0

    .line 24
    throw p1
.end method

.method declared-synchronized t(J)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Li8/v;->a:La8/b;

    .line 3
    .line 4
    new-instance v1, Li8/r;

    .line 5
    .line 6
    invoke-direct {v1, p1, p2}, Li8/r;-><init>(J)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, La8/b;->e(Lid/l;)Lo0/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    monitor-exit p0

    .line 16
    throw p1
.end method
