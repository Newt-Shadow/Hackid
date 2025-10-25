.class public Lio/sentry/android/core/internal/threaddump/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Ljava/util/regex/Pattern;

.field private static final e:Ljava/util/regex/Pattern;

.field private static final f:Ljava/util/regex/Pattern;

.field private static final g:Ljava/util/regex/Pattern;

.field private static final h:Ljava/util/regex/Pattern;

.field private static final i:Ljava/util/regex/Pattern;

.field private static final j:Ljava/util/regex/Pattern;

.field private static final k:Ljava/util/regex/Pattern;

.field private static final l:Ljava/util/regex/Pattern;

.field private static final m:Ljava/util/regex/Pattern;

.field private static final n:Ljava/util/regex/Pattern;

.field private static final o:Ljava/util/regex/Pattern;

.field private static final p:Ljava/util/regex/Pattern;


# instance fields
.field private final a:Lio/sentry/s5;

.field private final b:Z

.field private final c:Lio/sentry/w5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "\"(.*)\" (.*) ?prio=(\\d+)\\s+tid=(\\d+)\\s*(.*)"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lio/sentry/android/core/internal/threaddump/c;->d:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    const-string v0, "\"(.*)\" (.*) ?sysTid=(\\d+)"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lio/sentry/android/core/internal/threaddump/c;->e:Ljava/util/regex/Pattern;

    .line 16
    .line 17
    const-string v0, " *(?:native: )?#\\d+ \\S+ [0-9a-fA-F]+\\s+(.*?)\\s+\\((.*)\\+(\\d+)\\)(?: \\(.*\\))?"

    .line 18
    .line 19
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lio/sentry/android/core/internal/threaddump/c;->f:Ljava/util/regex/Pattern;

    .line 24
    .line 25
    const-string v0, " *(?:native: )?#\\d+ \\S+ [0-9a-fA-F]+\\s+(.*)\\s*\\(?(.*)\\)?(?: \\(.*\\))?"

    .line 26
    .line 27
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lio/sentry/android/core/internal/threaddump/c;->g:Ljava/util/regex/Pattern;

    .line 32
    .line 33
    const-string v0, " *at (?:(.+)\\.)?([^.]+)\\.([^.]+)\\((.*):([\\d-]+)\\)"

    .line 34
    .line 35
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lio/sentry/android/core/internal/threaddump/c;->h:Ljava/util/regex/Pattern;

    .line 40
    .line 41
    const-string v0, " *at (?:(.+)\\.)?([^.]+)\\.([^.]+)\\(Native method\\)"

    .line 42
    .line 43
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lio/sentry/android/core/internal/threaddump/c;->i:Ljava/util/regex/Pattern;

    .line 48
    .line 49
    const-string v0, " *- locked \\<([0x0-9a-fA-F]{1,16})\\> \\(a (?:(.+)\\.)?([^.]+)\\)"

    .line 50
    .line 51
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lio/sentry/android/core/internal/threaddump/c;->j:Ljava/util/regex/Pattern;

    .line 56
    .line 57
    const-string v0, " *- sleeping on \\<([0x0-9a-fA-F]{1,16})\\> \\(a (?:(.+)\\.)?([^.]+)\\)"

    .line 58
    .line 59
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sput-object v0, Lio/sentry/android/core/internal/threaddump/c;->k:Ljava/util/regex/Pattern;

    .line 64
    .line 65
    const-string v0, " *- waiting on \\<([0x0-9a-fA-F]{1,16})\\> \\(a (?:(.+)\\.)?([^.]+)\\)"

    .line 66
    .line 67
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Lio/sentry/android/core/internal/threaddump/c;->l:Ljava/util/regex/Pattern;

    .line 72
    .line 73
    const-string v0, " *- waiting to lock \\<([0x0-9a-fA-F]{1,16})\\> \\(a (?:(.+)\\.)?([^.]+)\\)"

    .line 74
    .line 75
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    sput-object v0, Lio/sentry/android/core/internal/threaddump/c;->m:Ljava/util/regex/Pattern;

    .line 80
    .line 81
    const-string v0, " *- waiting to lock \\<([0x0-9a-fA-F]{1,16})\\> \\(a (?:(.+)\\.)?([^.]+)\\)(?: held by thread (\\d+))"

    .line 82
    .line 83
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    sput-object v0, Lio/sentry/android/core/internal/threaddump/c;->n:Ljava/util/regex/Pattern;

    .line 88
    .line 89
    const-string v0, " *- waiting to lock an unknown object"

    .line 90
    .line 91
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    sput-object v0, Lio/sentry/android/core/internal/threaddump/c;->o:Ljava/util/regex/Pattern;

    .line 96
    .line 97
    const-string v0, "\\s+"

    .line 98
    .line 99
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    sput-object v0, Lio/sentry/android/core/internal/threaddump/c;->p:Ljava/util/regex/Pattern;

    .line 104
    .line 105
    return-void
.end method

.method public constructor <init>(Lio/sentry/s5;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/android/core/internal/threaddump/c;->a:Lio/sentry/s5;

    .line 5
    .line 6
    iput-boolean p2, p0, Lio/sentry/android/core/internal/threaddump/c;->b:Z

    .line 7
    .line 8
    new-instance p2, Lio/sentry/w5;

    .line 9
    .line 10
    invoke-direct {p2, p1}, Lio/sentry/w5;-><init>(Lio/sentry/s5;)V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lio/sentry/android/core/internal/threaddump/c;->c:Lio/sentry/w5;

    .line 14
    .line 15
    return-void
.end method

.method private a(Lio/sentry/protocol/x;Lio/sentry/k5;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lio/sentry/protocol/x;->k()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p2}, Lio/sentry/k5;->f()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lio/sentry/k5;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1}, Lio/sentry/k5;->g()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {p2}, Lio/sentry/k5;->g()I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    invoke-virtual {v1, p2}, Lio/sentry/k5;->l(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p2}, Lio/sentry/k5;->f()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    new-instance v2, Lio/sentry/k5;

    .line 45
    .line 46
    invoke-direct {v2, p2}, Lio/sentry/k5;-><init>(Lio/sentry/k5;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    :goto_0
    invoke-virtual {p1, v0}, Lio/sentry/protocol/x;->t(Ljava/util/Map;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method private b(Ljava/util/regex/Matcher;ILjava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :cond_1
    :goto_0
    return-object p3
.end method

.method private c(Ljava/util/regex/Matcher;ILjava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 15
    .line 16
    .line 17
    move-result-wide p1

    .line 18
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :cond_1
    :goto_0
    return-object p3
.end method

.method private d(Ljava/util/regex/Matcher;ILjava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-ltz p2, :cond_1

    .line 27
    .line 28
    move-object p3, p1

    .line 29
    :cond_1
    :goto_0
    return-object p3
.end method

.method private e(Ljava/util/regex/Matcher;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    return p1
.end method

.method private g(Lio/sentry/android/core/internal/threaddump/b;Lio/sentry/protocol/x;)Lio/sentry/protocol/w;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    new-instance v2, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object v3, Lio/sentry/android/core/internal/threaddump/c;->f:Ljava/util/regex/Pattern;

    .line 11
    .line 12
    const-string v4, ""

    .line 13
    .line 14
    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    sget-object v5, Lio/sentry/android/core/internal/threaddump/c;->g:Ljava/util/regex/Pattern;

    .line 19
    .line 20
    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    sget-object v6, Lio/sentry/android/core/internal/threaddump/c;->h:Ljava/util/regex/Pattern;

    .line 25
    .line 26
    invoke-virtual {v6, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    sget-object v7, Lio/sentry/android/core/internal/threaddump/c;->i:Ljava/util/regex/Pattern;

    .line 31
    .line 32
    invoke-virtual {v7, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    sget-object v8, Lio/sentry/android/core/internal/threaddump/c;->j:Ljava/util/regex/Pattern;

    .line 37
    .line 38
    invoke-virtual {v8, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    sget-object v9, Lio/sentry/android/core/internal/threaddump/c;->l:Ljava/util/regex/Pattern;

    .line 43
    .line 44
    invoke-virtual {v9, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 45
    .line 46
    .line 47
    move-result-object v9

    .line 48
    sget-object v10, Lio/sentry/android/core/internal/threaddump/c;->k:Ljava/util/regex/Pattern;

    .line 49
    .line 50
    invoke-virtual {v10, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 51
    .line 52
    .line 53
    move-result-object v10

    .line 54
    sget-object v11, Lio/sentry/android/core/internal/threaddump/c;->n:Ljava/util/regex/Pattern;

    .line 55
    .line 56
    invoke-virtual {v11, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 57
    .line 58
    .line 59
    move-result-object v11

    .line 60
    sget-object v12, Lio/sentry/android/core/internal/threaddump/c;->m:Ljava/util/regex/Pattern;

    .line 61
    .line 62
    invoke-virtual {v12, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 63
    .line 64
    .line 65
    move-result-object v12

    .line 66
    sget-object v13, Lio/sentry/android/core/internal/threaddump/c;->o:Ljava/util/regex/Pattern;

    .line 67
    .line 68
    invoke-virtual {v13, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 69
    .line 70
    .line 71
    move-result-object v13

    .line 72
    sget-object v14, Lio/sentry/android/core/internal/threaddump/c;->p:Ljava/util/regex/Pattern;

    .line 73
    .line 74
    invoke-virtual {v14, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    const/4 v15, 0x0

    .line 79
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lio/sentry/android/core/internal/threaddump/b;->a()Z

    .line 80
    .line 81
    .line 82
    move-result v16

    .line 83
    if-eqz v16, :cond_e

    .line 84
    .line 85
    invoke-virtual/range {p1 .. p1}, Lio/sentry/android/core/internal/threaddump/b;->b()Lio/sentry/android/core/internal/threaddump/a;

    .line 86
    .line 87
    .line 88
    move-result-object v14

    .line 89
    if-nez v14, :cond_0

    .line 90
    .line 91
    iget-object v1, v0, Lio/sentry/android/core/internal/threaddump/c;->a:Lio/sentry/s5;

    .line 92
    .line 93
    invoke-virtual {v1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    sget-object v3, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 98
    .line 99
    const/4 v4, 0x0

    .line 100
    new-array v4, v4, [Ljava/lang/Object;

    .line 101
    .line 102
    const-string v5, "Internal error while parsing thread dump."

    .line 103
    .line 104
    invoke-interface {v1, v3, v5, v4}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    goto/16 :goto_5

    .line 108
    .line 109
    :cond_0
    iget-object v14, v14, Lio/sentry/android/core/internal/threaddump/a;->b:Ljava/lang/String;

    .line 110
    .line 111
    invoke-direct {v0, v3, v14}, Lio/sentry/android/core/internal/threaddump/c;->e(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v17

    .line 115
    move-object/from16 v18, v4

    .line 116
    .line 117
    const/4 v4, 0x1

    .line 118
    if-eqz v17, :cond_1

    .line 119
    .line 120
    new-instance v14, Lio/sentry/protocol/v;

    .line 121
    .line 122
    invoke-direct {v14}, Lio/sentry/protocol/v;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-virtual {v14, v4}, Lio/sentry/protocol/v;->z(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const/4 v4, 0x2

    .line 133
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    invoke-virtual {v14, v4}, Lio/sentry/protocol/v;->t(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    const/4 v4, 0x3

    .line 141
    const/4 v15, 0x0

    .line 142
    invoke-direct {v0, v3, v4, v15}, Lio/sentry/android/core/internal/threaddump/c;->b(Ljava/util/regex/Matcher;ILjava/lang/Integer;)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    invoke-virtual {v14, v4}, Lio/sentry/protocol/v;->v(Ljava/lang/Integer;)V

    .line 147
    .line 148
    .line 149
    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    :goto_1
    move-object/from16 v19, v3

    .line 153
    .line 154
    move-object/from16 v4, v18

    .line 155
    .line 156
    const/4 v3, 0x0

    .line 157
    const/4 v15, 0x0

    .line 158
    goto/16 :goto_4

    .line 159
    .line 160
    :cond_1
    invoke-direct {v0, v5, v14}, Lio/sentry/android/core/internal/threaddump/c;->e(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    .line 161
    .line 162
    .line 163
    move-result v17

    .line 164
    if-eqz v17, :cond_2

    .line 165
    .line 166
    new-instance v14, Lio/sentry/protocol/v;

    .line 167
    .line 168
    invoke-direct {v14}, Lio/sentry/protocol/v;-><init>()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v5, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    invoke-virtual {v14, v4}, Lio/sentry/protocol/v;->z(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    const/4 v4, 0x2

    .line 179
    invoke-virtual {v5, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    invoke-virtual {v14, v4}, Lio/sentry/protocol/v;->t(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_2
    invoke-direct {v0, v6, v14}, Lio/sentry/android/core/internal/threaddump/c;->e(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    .line 191
    .line 192
    .line 193
    move-result v17

    .line 194
    const-string v4, "%s.%s"

    .line 195
    .line 196
    move-object/from16 v19, v3

    .line 197
    .line 198
    if-eqz v17, :cond_4

    .line 199
    .line 200
    new-instance v15, Lio/sentry/protocol/v;

    .line 201
    .line 202
    invoke-direct {v15}, Lio/sentry/protocol/v;-><init>()V

    .line 203
    .line 204
    .line 205
    const/4 v14, 0x1

    .line 206
    invoke-virtual {v6, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v14

    .line 210
    const/4 v3, 0x2

    .line 211
    invoke-virtual {v6, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    filled-new-array {v14, v3}, [Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    invoke-virtual {v15, v3}, Lio/sentry/protocol/v;->x(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    const/4 v4, 0x3

    .line 227
    invoke-virtual {v6, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    invoke-virtual {v15, v4}, Lio/sentry/protocol/v;->t(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    const/4 v4, 0x4

    .line 235
    invoke-virtual {v6, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v4

    .line 239
    invoke-virtual {v15, v4}, Lio/sentry/protocol/v;->s(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    const/4 v4, 0x5

    .line 243
    const/4 v14, 0x0

    .line 244
    invoke-direct {v0, v6, v4, v14}, Lio/sentry/android/core/internal/threaddump/c;->d(Ljava/util/regex/Matcher;ILjava/lang/Integer;)Ljava/lang/Integer;

    .line 245
    .line 246
    .line 247
    move-result-object v4

    .line 248
    invoke-virtual {v15, v4}, Lio/sentry/protocol/v;->v(Ljava/lang/Integer;)V

    .line 249
    .line 250
    .line 251
    iget-object v4, v0, Lio/sentry/android/core/internal/threaddump/c;->c:Lio/sentry/w5;

    .line 252
    .line 253
    invoke-virtual {v4, v3}, Lio/sentry/w5;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    invoke-virtual {v15, v3}, Lio/sentry/protocol/v;->u(Ljava/lang/Boolean;)V

    .line 258
    .line 259
    .line 260
    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    :cond_3
    :goto_2
    move-object/from16 v4, v18

    .line 264
    .line 265
    const/4 v3, 0x0

    .line 266
    goto/16 :goto_4

    .line 267
    .line 268
    :cond_4
    invoke-direct {v0, v7, v14}, Lio/sentry/android/core/internal/threaddump/c;->e(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    .line 269
    .line 270
    .line 271
    move-result v3

    .line 272
    if-eqz v3, :cond_5

    .line 273
    .line 274
    new-instance v15, Lio/sentry/protocol/v;

    .line 275
    .line 276
    invoke-direct {v15}, Lio/sentry/protocol/v;-><init>()V

    .line 277
    .line 278
    .line 279
    const/4 v3, 0x1

    .line 280
    invoke-virtual {v7, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    const/4 v14, 0x2

    .line 285
    invoke-virtual {v7, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v14

    .line 289
    filled-new-array {v3, v14}, [Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    invoke-virtual {v15, v3}, Lio/sentry/protocol/v;->x(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    const/4 v4, 0x3

    .line 301
    invoke-virtual {v7, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    invoke-virtual {v15, v4}, Lio/sentry/protocol/v;->t(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    iget-object v4, v0, Lio/sentry/android/core/internal/threaddump/c;->c:Lio/sentry/w5;

    .line 309
    .line 310
    invoke-virtual {v4, v3}, Lio/sentry/w5;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    invoke-virtual {v15, v3}, Lio/sentry/protocol/v;->u(Ljava/lang/Boolean;)V

    .line 315
    .line 316
    .line 317
    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    goto :goto_2

    .line 321
    :cond_5
    invoke-direct {v0, v8, v14}, Lio/sentry/android/core/internal/threaddump/c;->e(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    .line 322
    .line 323
    .line 324
    move-result v3

    .line 325
    if-eqz v3, :cond_6

    .line 326
    .line 327
    if-eqz v15, :cond_3

    .line 328
    .line 329
    new-instance v3, Lio/sentry/k5;

    .line 330
    .line 331
    invoke-direct {v3}, Lio/sentry/k5;-><init>()V

    .line 332
    .line 333
    .line 334
    const/4 v4, 0x1

    .line 335
    invoke-virtual {v3, v4}, Lio/sentry/k5;->l(I)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v8, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v4

    .line 342
    invoke-virtual {v3, v4}, Lio/sentry/k5;->h(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    const/4 v4, 0x2

    .line 346
    invoke-virtual {v8, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v4

    .line 350
    invoke-virtual {v3, v4}, Lio/sentry/k5;->j(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    const/4 v4, 0x3

    .line 354
    invoke-virtual {v8, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v4

    .line 358
    invoke-virtual {v3, v4}, Lio/sentry/k5;->i(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v15, v3}, Lio/sentry/protocol/v;->w(Lio/sentry/k5;)V

    .line 362
    .line 363
    .line 364
    invoke-direct {v0, v1, v3}, Lio/sentry/android/core/internal/threaddump/c;->a(Lio/sentry/protocol/x;Lio/sentry/k5;)V

    .line 365
    .line 366
    .line 367
    goto :goto_2

    .line 368
    :cond_6
    invoke-direct {v0, v9, v14}, Lio/sentry/android/core/internal/threaddump/c;->e(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    .line 369
    .line 370
    .line 371
    move-result v3

    .line 372
    if-eqz v3, :cond_7

    .line 373
    .line 374
    if-eqz v15, :cond_3

    .line 375
    .line 376
    new-instance v3, Lio/sentry/k5;

    .line 377
    .line 378
    invoke-direct {v3}, Lio/sentry/k5;-><init>()V

    .line 379
    .line 380
    .line 381
    const/4 v4, 0x2

    .line 382
    invoke-virtual {v3, v4}, Lio/sentry/k5;->l(I)V

    .line 383
    .line 384
    .line 385
    const/4 v14, 0x1

    .line 386
    invoke-virtual {v9, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v14

    .line 390
    invoke-virtual {v3, v14}, Lio/sentry/k5;->h(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v9, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v4

    .line 397
    invoke-virtual {v3, v4}, Lio/sentry/k5;->j(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    const/4 v4, 0x3

    .line 401
    invoke-virtual {v9, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v4

    .line 405
    invoke-virtual {v3, v4}, Lio/sentry/k5;->i(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v15, v3}, Lio/sentry/protocol/v;->w(Lio/sentry/k5;)V

    .line 409
    .line 410
    .line 411
    invoke-direct {v0, v1, v3}, Lio/sentry/android/core/internal/threaddump/c;->a(Lio/sentry/protocol/x;Lio/sentry/k5;)V

    .line 412
    .line 413
    .line 414
    goto/16 :goto_2

    .line 415
    .line 416
    :cond_7
    invoke-direct {v0, v10, v14}, Lio/sentry/android/core/internal/threaddump/c;->e(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    .line 417
    .line 418
    .line 419
    move-result v3

    .line 420
    if-eqz v3, :cond_8

    .line 421
    .line 422
    if-eqz v15, :cond_3

    .line 423
    .line 424
    new-instance v3, Lio/sentry/k5;

    .line 425
    .line 426
    invoke-direct {v3}, Lio/sentry/k5;-><init>()V

    .line 427
    .line 428
    .line 429
    const/4 v4, 0x4

    .line 430
    invoke-virtual {v3, v4}, Lio/sentry/k5;->l(I)V

    .line 431
    .line 432
    .line 433
    const/4 v4, 0x1

    .line 434
    invoke-virtual {v10, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v4

    .line 438
    invoke-virtual {v3, v4}, Lio/sentry/k5;->h(Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    const/4 v4, 0x2

    .line 442
    invoke-virtual {v10, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v4

    .line 446
    invoke-virtual {v3, v4}, Lio/sentry/k5;->j(Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    const/4 v4, 0x3

    .line 450
    invoke-virtual {v10, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v4

    .line 454
    invoke-virtual {v3, v4}, Lio/sentry/k5;->i(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v15, v3}, Lio/sentry/protocol/v;->w(Lio/sentry/k5;)V

    .line 458
    .line 459
    .line 460
    invoke-direct {v0, v1, v3}, Lio/sentry/android/core/internal/threaddump/c;->a(Lio/sentry/protocol/x;Lio/sentry/k5;)V

    .line 461
    .line 462
    .line 463
    goto/16 :goto_2

    .line 464
    .line 465
    :cond_8
    invoke-direct {v0, v11, v14}, Lio/sentry/android/core/internal/threaddump/c;->e(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    .line 466
    .line 467
    .line 468
    move-result v3

    .line 469
    const/16 v4, 0x8

    .line 470
    .line 471
    if-eqz v3, :cond_9

    .line 472
    .line 473
    if-eqz v15, :cond_3

    .line 474
    .line 475
    new-instance v3, Lio/sentry/k5;

    .line 476
    .line 477
    invoke-direct {v3}, Lio/sentry/k5;-><init>()V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v3, v4}, Lio/sentry/k5;->l(I)V

    .line 481
    .line 482
    .line 483
    const/4 v4, 0x1

    .line 484
    invoke-virtual {v11, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v4

    .line 488
    invoke-virtual {v3, v4}, Lio/sentry/k5;->h(Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    const/4 v4, 0x2

    .line 492
    invoke-virtual {v11, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v4

    .line 496
    invoke-virtual {v3, v4}, Lio/sentry/k5;->j(Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    const/4 v4, 0x3

    .line 500
    invoke-virtual {v11, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v4

    .line 504
    invoke-virtual {v3, v4}, Lio/sentry/k5;->i(Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    const/4 v4, 0x4

    .line 508
    const/4 v14, 0x0

    .line 509
    invoke-direct {v0, v11, v4, v14}, Lio/sentry/android/core/internal/threaddump/c;->c(Ljava/util/regex/Matcher;ILjava/lang/Long;)Ljava/lang/Long;

    .line 510
    .line 511
    .line 512
    move-result-object v4

    .line 513
    invoke-virtual {v3, v4}, Lio/sentry/k5;->k(Ljava/lang/Long;)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v15, v3}, Lio/sentry/protocol/v;->w(Lio/sentry/k5;)V

    .line 517
    .line 518
    .line 519
    invoke-direct {v0, v1, v3}, Lio/sentry/android/core/internal/threaddump/c;->a(Lio/sentry/protocol/x;Lio/sentry/k5;)V

    .line 520
    .line 521
    .line 522
    move-object v3, v14

    .line 523
    goto :goto_3

    .line 524
    :cond_9
    const/4 v3, 0x0

    .line 525
    invoke-direct {v0, v12, v14}, Lio/sentry/android/core/internal/threaddump/c;->e(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    .line 526
    .line 527
    .line 528
    move-result v16

    .line 529
    if-eqz v16, :cond_b

    .line 530
    .line 531
    if-eqz v15, :cond_a

    .line 532
    .line 533
    new-instance v14, Lio/sentry/k5;

    .line 534
    .line 535
    invoke-direct {v14}, Lio/sentry/k5;-><init>()V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v14, v4}, Lio/sentry/k5;->l(I)V

    .line 539
    .line 540
    .line 541
    const/4 v4, 0x1

    .line 542
    invoke-virtual {v12, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v4

    .line 546
    invoke-virtual {v14, v4}, Lio/sentry/k5;->h(Ljava/lang/String;)V

    .line 547
    .line 548
    .line 549
    const/4 v4, 0x2

    .line 550
    invoke-virtual {v12, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v4

    .line 554
    invoke-virtual {v14, v4}, Lio/sentry/k5;->j(Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    const/4 v4, 0x3

    .line 558
    invoke-virtual {v12, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v4

    .line 562
    invoke-virtual {v14, v4}, Lio/sentry/k5;->i(Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    invoke-virtual {v15, v14}, Lio/sentry/protocol/v;->w(Lio/sentry/k5;)V

    .line 566
    .line 567
    .line 568
    invoke-direct {v0, v1, v14}, Lio/sentry/android/core/internal/threaddump/c;->a(Lio/sentry/protocol/x;Lio/sentry/k5;)V

    .line 569
    .line 570
    .line 571
    :cond_a
    :goto_3
    move-object/from16 v4, v18

    .line 572
    .line 573
    goto :goto_4

    .line 574
    :cond_b
    invoke-direct {v0, v13, v14}, Lio/sentry/android/core/internal/threaddump/c;->e(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    .line 575
    .line 576
    .line 577
    move-result v16

    .line 578
    if-eqz v16, :cond_c

    .line 579
    .line 580
    if-eqz v15, :cond_a

    .line 581
    .line 582
    new-instance v14, Lio/sentry/k5;

    .line 583
    .line 584
    invoke-direct {v14}, Lio/sentry/k5;-><init>()V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v14, v4}, Lio/sentry/k5;->l(I)V

    .line 588
    .line 589
    .line 590
    invoke-virtual {v15, v14}, Lio/sentry/protocol/v;->w(Lio/sentry/k5;)V

    .line 591
    .line 592
    .line 593
    invoke-direct {v0, v1, v14}, Lio/sentry/android/core/internal/threaddump/c;->a(Lio/sentry/protocol/x;Lio/sentry/k5;)V

    .line 594
    .line 595
    .line 596
    goto :goto_3

    .line 597
    :cond_c
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 598
    .line 599
    .line 600
    move-result v4

    .line 601
    if-eqz v4, :cond_e

    .line 602
    .line 603
    move-object/from16 v4, v18

    .line 604
    .line 605
    invoke-direct {v0, v4, v14}, Lio/sentry/android/core/internal/threaddump/c;->e(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    .line 606
    .line 607
    .line 608
    move-result v14

    .line 609
    if-eqz v14, :cond_d

    .line 610
    .line 611
    goto :goto_5

    .line 612
    :cond_d
    :goto_4
    move-object/from16 v3, v19

    .line 613
    .line 614
    goto/16 :goto_0

    .line 615
    .line 616
    :cond_e
    :goto_5
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 617
    .line 618
    .line 619
    new-instance v1, Lio/sentry/protocol/w;

    .line 620
    .line 621
    invoke-direct {v1, v2}, Lio/sentry/protocol/w;-><init>(Ljava/util/List;)V

    .line 622
    .line 623
    .line 624
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 625
    .line 626
    invoke-virtual {v1, v2}, Lio/sentry/protocol/w;->e(Ljava/lang/Boolean;)V

    .line 627
    .line 628
    .line 629
    return-object v1
.end method

.method private h(Lio/sentry/android/core/internal/threaddump/b;)Lio/sentry/protocol/x;
    .locals 9

    .line 1
    new-instance v0, Lio/sentry/protocol/x;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/sentry/protocol/x;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lio/sentry/android/core/internal/threaddump/c;->d:Ljava/util/regex/Pattern;

    .line 7
    .line 8
    const-string v2, ""

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    sget-object v3, Lio/sentry/android/core/internal/threaddump/c;->e:Ljava/util/regex/Pattern;

    .line 15
    .line 16
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {p1}, Lio/sentry/android/core/internal/threaddump/b;->a()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    const/4 v4, 0x0

    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    return-object v4

    .line 28
    :cond_0
    invoke-virtual {p1}, Lio/sentry/android/core/internal/threaddump/b;->b()Lio/sentry/android/core/internal/threaddump/a;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const/4 v5, 0x0

    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    iget-object p1, p0, Lio/sentry/android/core/internal/threaddump/c;->a:Lio/sentry/s5;

    .line 36
    .line 37
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    sget-object v0, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 42
    .line 43
    const-string v1, "Internal error while parsing thread dump."

    .line 44
    .line 45
    new-array v2, v5, [Ljava/lang/Object;

    .line 46
    .line 47
    invoke-interface {p1, v0, v1, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return-object v4

    .line 51
    :cond_1
    iget-object v6, v3, Lio/sentry/android/core/internal/threaddump/a;->b:Ljava/lang/String;

    .line 52
    .line 53
    invoke-direct {p0, v1, v6}, Lio/sentry/android/core/internal/threaddump/c;->e(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    const-string v7, "No thread id in the dump, skipping thread."

    .line 58
    .line 59
    const/4 v8, 0x1

    .line 60
    if-eqz v6, :cond_4

    .line 61
    .line 62
    const/4 v2, 0x4

    .line 63
    invoke-direct {p0, v1, v2, v4}, Lio/sentry/android/core/internal/threaddump/c;->c(Ljava/util/regex/Matcher;ILjava/lang/Long;)Ljava/lang/Long;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    if-nez v2, :cond_2

    .line 68
    .line 69
    iget-object p1, p0, Lio/sentry/android/core/internal/threaddump/c;->a:Lio/sentry/s5;

    .line 70
    .line 71
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    sget-object v0, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 76
    .line 77
    new-array v1, v5, [Ljava/lang/Object;

    .line 78
    .line 79
    invoke-interface {p1, v0, v7, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    return-object v4

    .line 83
    :cond_2
    invoke-virtual {v0, v2}, Lio/sentry/protocol/x;->u(Ljava/lang/Long;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v0, v2}, Lio/sentry/protocol/x;->w(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const/4 v2, 0x5

    .line 94
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    if-eqz v1, :cond_6

    .line 99
    .line 100
    const-string v2, " "

    .line 101
    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_3

    .line 107
    .line 108
    const/16 v2, 0x20

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Lio/sentry/protocol/x;->z(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_3
    invoke-virtual {v0, v1}, Lio/sentry/protocol/x;->z(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_4
    iget-object v1, v3, Lio/sentry/android/core/internal/threaddump/a;->b:Ljava/lang/String;

    .line 127
    .line 128
    invoke-direct {p0, v2, v1}, Lio/sentry/android/core/internal/threaddump/c;->e(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_6

    .line 133
    .line 134
    const/4 v1, 0x3

    .line 135
    invoke-direct {p0, v2, v1, v4}, Lio/sentry/android/core/internal/threaddump/c;->c(Ljava/util/regex/Matcher;ILjava/lang/Long;)Ljava/lang/Long;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    if-nez v1, :cond_5

    .line 140
    .line 141
    iget-object p1, p0, Lio/sentry/android/core/internal/threaddump/c;->a:Lio/sentry/s5;

    .line 142
    .line 143
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    sget-object v0, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 148
    .line 149
    new-array v1, v5, [Ljava/lang/Object;

    .line 150
    .line 151
    invoke-interface {p1, v0, v7, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    return-object v4

    .line 155
    :cond_5
    invoke-virtual {v0, v1}, Lio/sentry/protocol/x;->u(Ljava/lang/Long;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {v0, v1}, Lio/sentry/protocol/x;->w(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    :cond_6
    :goto_0
    invoke-virtual {v0}, Lio/sentry/protocol/x;->m()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    if-eqz v1, :cond_8

    .line 170
    .line 171
    const-string v2, "main"

    .line 172
    .line 173
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-virtual {v0, v2}, Lio/sentry/protocol/x;->v(Ljava/lang/Boolean;)V

    .line 182
    .line 183
    .line 184
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-virtual {v0, v2}, Lio/sentry/protocol/x;->q(Ljava/lang/Boolean;)V

    .line 189
    .line 190
    .line 191
    if-eqz v1, :cond_7

    .line 192
    .line 193
    iget-boolean v1, p0, Lio/sentry/android/core/internal/threaddump/c;->b:Z

    .line 194
    .line 195
    if-nez v1, :cond_7

    .line 196
    .line 197
    move v5, v8

    .line 198
    :cond_7
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {v0, v1}, Lio/sentry/protocol/x;->r(Ljava/lang/Boolean;)V

    .line 203
    .line 204
    .line 205
    :cond_8
    invoke-direct {p0, p1, v0}, Lio/sentry/android/core/internal/threaddump/c;->g(Lio/sentry/android/core/internal/threaddump/b;Lio/sentry/protocol/x;)Lio/sentry/protocol/w;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-virtual {v0, p1}, Lio/sentry/protocol/x;->y(Lio/sentry/protocol/w;)V

    .line 210
    .line 211
    .line 212
    return-object v0
.end method


# virtual methods
.method public f(Lio/sentry/android/core/internal/threaddump/b;)Ljava/util/List;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lio/sentry/android/core/internal/threaddump/c;->d:Ljava/util/regex/Pattern;

    .line 7
    .line 8
    const-string v2, ""

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    sget-object v3, Lio/sentry/android/core/internal/threaddump/c;->e:Ljava/util/regex/Pattern;

    .line 15
    .line 16
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lio/sentry/android/core/internal/threaddump/b;->a()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_3

    .line 25
    .line 26
    invoke-virtual {p1}, Lio/sentry/android/core/internal/threaddump/b;->b()Lio/sentry/android/core/internal/threaddump/a;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lio/sentry/android/core/internal/threaddump/c;->a:Lio/sentry/s5;

    .line 33
    .line 34
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    sget-object v1, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    new-array v2, v2, [Ljava/lang/Object;

    .line 42
    .line 43
    const-string v3, "Internal error while parsing thread dump."

    .line 44
    .line 45
    invoke-interface {p1, v1, v3, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return-object v0

    .line 49
    :cond_1
    iget-object v3, v3, Lio/sentry/android/core/internal/threaddump/a;->b:Ljava/lang/String;

    .line 50
    .line 51
    invoke-direct {p0, v1, v3}, Lio/sentry/android/core/internal/threaddump/c;->e(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-nez v4, :cond_2

    .line 56
    .line 57
    invoke-direct {p0, v2, v3}, Lio/sentry/android/core/internal/threaddump/c;->e(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_0

    .line 62
    .line 63
    :cond_2
    invoke-virtual {p1}, Lio/sentry/android/core/internal/threaddump/b;->d()V

    .line 64
    .line 65
    .line 66
    invoke-direct {p0, p1}, Lio/sentry/android/core/internal/threaddump/c;->h(Lio/sentry/android/core/internal/threaddump/b;)Lio/sentry/protocol/x;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    if-eqz v3, :cond_0

    .line 71
    .line 72
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    return-object v0
.end method
