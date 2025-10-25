.class public final Ls6/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls6/v$b;,
        Ls6/v$d;,
        Ls6/v$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentMap;

.field private b:Ls6/v$c;

.field private final c:Ljava/lang/Class;

.field private final d:Lc7/a;

.field private final e:Z


# direct methods
.method private constructor <init>(Ljava/util/concurrent/ConcurrentMap;Ls6/v$c;Lc7/a;Ljava/lang/Class;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Ls6/v;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 4
    iput-object p2, p0, Ls6/v;->b:Ls6/v$c;

    .line 5
    iput-object p4, p0, Ls6/v;->c:Ljava/lang/Class;

    .line 6
    iput-object p3, p0, Ls6/v;->d:Lc7/a;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Ls6/v;->e:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/ConcurrentMap;Ls6/v$c;Lc7/a;Ljava/lang/Class;Ls6/v$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Ls6/v;-><init>(Ljava/util/concurrent/ConcurrentMap;Ls6/v$c;Lc7/a;Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/Object;Ljava/lang/Object;Le7/c0$c;Ljava/util/concurrent/ConcurrentMap;)Ls6/v$c;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Ls6/v;->b(Ljava/lang/Object;Ljava/lang/Object;Le7/c0$c;Ljava/util/concurrent/ConcurrentMap;)Ls6/v$c;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static b(Ljava/lang/Object;Ljava/lang/Object;Le7/c0$c;Ljava/util/concurrent/ConcurrentMap;)Ls6/v$c;
    .locals 14

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    invoke-virtual/range {p2 .. p2}, Le7/c0$c;->a0()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual/range {p2 .. p2}, Le7/c0$c;->b0()Le7/i0;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    sget-object v3, Le7/i0;->e:Le7/i0;

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    if-ne v2, v3, :cond_0

    .line 19
    .line 20
    move-object v1, v4

    .line 21
    :cond_0
    invoke-static {}, Lcom/google/crypto/tink/internal/i;->a()Lcom/google/crypto/tink/internal/i;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual/range {p2 .. p2}, Le7/c0$c;->Z()Le7/y;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3}, Le7/y;->a0()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual/range {p2 .. p2}, Le7/c0$c;->Z()Le7/y;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-virtual {v5}, Le7/y;->b0()Lcom/google/crypto/tink/shaded/protobuf/h;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-virtual/range {p2 .. p2}, Le7/c0$c;->Z()Le7/y;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    invoke-virtual {v6}, Le7/y;->Z()Le7/y$c;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-virtual/range {p2 .. p2}, Le7/c0$c;->b0()Le7/i0;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-static {v3, v5, v6, v7, v1}, Lcom/google/crypto/tink/internal/o;->b(Ljava/lang/String;Lcom/google/crypto/tink/shaded/protobuf/h;Le7/y$c;Le7/i0;Ljava/lang/Integer;)Lcom/google/crypto/tink/internal/o;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {}, Ls6/f;->a()Ls6/y;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v2, v1, v3}, Lcom/google/crypto/tink/internal/i;->d(Lcom/google/crypto/tink/internal/o;Ls6/y;)Ls6/g;

    .line 62
    .line 63
    .line 64
    move-result-object v13

    .line 65
    new-instance v1, Ls6/v$c;

    .line 66
    .line 67
    invoke-static/range {p2 .. p2}, Ls6/d;->a(Le7/c0$c;)[B

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    invoke-virtual/range {p2 .. p2}, Le7/c0$c;->c0()Le7/z;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    invoke-virtual/range {p2 .. p2}, Le7/c0$c;->b0()Le7/i0;

    .line 76
    .line 77
    .line 78
    move-result-object v10

    .line 79
    invoke-virtual/range {p2 .. p2}, Le7/c0$c;->a0()I

    .line 80
    .line 81
    .line 82
    move-result v11

    .line 83
    invoke-virtual/range {p2 .. p2}, Le7/c0$c;->Z()Le7/y;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v2}, Le7/y;->a0()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v12

    .line 91
    move-object v5, v1

    .line 92
    move-object v6, p0

    .line 93
    move-object v7, p1

    .line 94
    invoke-direct/range {v5 .. v13}, Ls6/v$c;-><init>(Ljava/lang/Object;Ljava/lang/Object;[BLe7/z;Le7/i0;ILjava/lang/String;Ls6/g;)V

    .line 95
    .line 96
    .line 97
    new-instance v2, Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    new-instance v3, Ls6/v$d;

    .line 106
    .line 107
    invoke-virtual {v1}, Ls6/v$c;->b()[B

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    invoke-direct {v3, v5, v4}, Ls6/v$d;-><init>([BLs6/v$a;)V

    .line 112
    .line 113
    .line 114
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    check-cast v2, Ljava/util/List;

    .line 123
    .line 124
    if-eqz v2, :cond_1

    .line 125
    .line 126
    new-instance v4, Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 132
    .line 133
    .line 134
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    :cond_1
    return-object v1
.end method

.method public static j(Ljava/lang/Class;)Ls6/v$b;
    .locals 2

    .line 1
    new-instance v0, Ls6/v$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Ls6/v$b;-><init>(Ljava/lang/Class;Ls6/v$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method


# virtual methods
.method public c()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Ls6/v;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public d()Lc7/a;
    .locals 1

    .line 1
    iget-object v0, p0, Ls6/v;->d:Lc7/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Ls6/v$c;
    .locals 1

    .line 1
    iget-object v0, p0, Ls6/v;->b:Ls6/v$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public f([B)Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Ls6/v;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    new-instance v1, Ls6/v$d;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p1, v2}, Ls6/v$d;-><init>([BLs6/v$a;)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Ljava/util/List;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :goto_0
    return-object p1
.end method

.method public g()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Ls6/v;->c:Ljava/lang/Class;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Ls6/d;->a:[B

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ls6/v;->f([B)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ls6/v;->d:Lc7/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc7/a;->b()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    xor-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    return v0
.end method
