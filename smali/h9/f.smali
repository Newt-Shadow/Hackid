.class public abstract Lh9/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field static final b:Ljava/util/Set;

.field static final c:Ljava/util/Set;

.field private static final d:Ljava/util/Set;

.field static final e:Ljava/util/Set;

.field static final f:Ljava/util/Set;

.field static final g:Ljava/util/Set;

.field static final h:Ljava/util/Set;

.field private static final i:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const-string v0, ","

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lh9/f;->a:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    sget-object v0, Ld9/a;->l:Ld9/a;

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lh9/f;->e:Ljava/util/Set;

    .line 16
    .line 17
    sget-object v1, Ld9/a;->f:Ld9/a;

    .line 18
    .line 19
    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sput-object v1, Lh9/f;->f:Ljava/util/Set;

    .line 24
    .line 25
    sget-object v2, Ld9/a;->a:Ld9/a;

    .line 26
    .line 27
    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    sput-object v2, Lh9/f;->g:Ljava/util/Set;

    .line 32
    .line 33
    sget-object v3, Ld9/a;->k:Ld9/a;

    .line 34
    .line 35
    invoke-static {v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    sput-object v3, Lh9/f;->h:Ljava/util/Set;

    .line 40
    .line 41
    sget-object v4, Ld9/a;->o:Ld9/a;

    .line 42
    .line 43
    sget-object v5, Ld9/a;->p:Ld9/a;

    .line 44
    .line 45
    sget-object v6, Ld9/a;->h:Ld9/a;

    .line 46
    .line 47
    sget-object v7, Ld9/a;->g:Ld9/a;

    .line 48
    .line 49
    sget-object v8, Ld9/a;->m:Ld9/a;

    .line 50
    .line 51
    sget-object v9, Ld9/a;->n:Ld9/a;

    .line 52
    .line 53
    filled-new-array {v5, v6, v7, v8, v9}, [Ld9/a;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-static {v4, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    sput-object v4, Lh9/f;->b:Ljava/util/Set;

    .line 62
    .line 63
    sget-object v5, Ld9/a;->c:Ld9/a;

    .line 64
    .line 65
    sget-object v6, Ld9/a;->d:Ld9/a;

    .line 66
    .line 67
    sget-object v7, Ld9/a;->e:Ld9/a;

    .line 68
    .line 69
    sget-object v8, Ld9/a;->i:Ld9/a;

    .line 70
    .line 71
    sget-object v9, Ld9/a;->b:Ld9/a;

    .line 72
    .line 73
    invoke-static {v5, v6, v7, v8, v9}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    sput-object v5, Lh9/f;->c:Ljava/util/Set;

    .line 78
    .line 79
    invoke-static {v4}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    sput-object v6, Lh9/f;->d:Ljava/util/Set;

    .line 84
    .line 85
    invoke-interface {v6, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 86
    .line 87
    .line 88
    new-instance v5, Ljava/util/HashMap;

    .line 89
    .line 90
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 91
    .line 92
    .line 93
    sput-object v5, Lh9/f;->i:Ljava/util/Map;

    .line 94
    .line 95
    const-string v7, "ONE_D_MODE"

    .line 96
    .line 97
    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    const-string v6, "PRODUCT_MODE"

    .line 101
    .line 102
    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    const-string v4, "QR_CODE_MODE"

    .line 106
    .line 107
    invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    const-string v0, "DATA_MATRIX_MODE"

    .line 111
    .line 112
    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    const-string v0, "AZTEC_MODE"

    .line 116
    .line 117
    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    const-string v0, "PDF417_MODE"

    .line 121
    .line 122
    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method public static a(Landroid/content/Intent;)Ljava/util/Set;
    .locals 2

    .line 1
    const-string v0, "SCAN_FORMATS"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v1, Lh9/f;->a:Ljava/util/regex/Pattern;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    const-string v1, "SCAN_MODE"

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {v0, p0}, Lh9/f;->b(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method private static b(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/util/Set;
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    const-class v0, Ld9/a;

    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v1}, Ld9/a;->valueOf(Ljava/lang/String;)Ld9/a;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-object v0

    .line 34
    :catch_0
    :cond_1
    if-eqz p1, :cond_2

    .line 35
    .line 36
    sget-object p0, Lh9/f;->i:Ljava/util/Map;

    .line 37
    .line 38
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    check-cast p0, Ljava/util/Set;

    .line 43
    .line 44
    return-object p0

    .line 45
    :cond_2
    const/4 p0, 0x0

    .line 46
    return-object p0
.end method
