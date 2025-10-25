.class public final Lm0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj0/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm0/a$c;
    }
.end annotation


# instance fields
.field private final a:Lid/Function2;

.field private final b:Lid/p;

.field private final c:Landroid/content/Context;

.field private final d:Ljava/lang/String;

.field private final e:Lxc/d;

.field private final f:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lid/Function2;Lid/p;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sharedPreferencesName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keysToMigrate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shouldRunMigration"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "migrate"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v2, Lm0/a$b;

    invoke-direct {v2, p1, p2}, Lm0/a$b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v1, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    move-object v7, p2

    .line 14
    invoke-direct/range {v1 .. v7}, Lm0/a;-><init>(Lid/a;Ljava/util/Set;Lid/Function2;Lid/p;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lid/Function2;Lid/p;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 10
    invoke-static {}, Lm0/b;->a()Ljava/util/Set;

    move-result-object p3

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    .line 11
    new-instance p4, Lm0/a$a;

    const/4 p3, 0x0

    invoke-direct {p4, p3}, Lm0/a$a;-><init>(Lad/e;)V

    :cond_1
    move-object v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    .line 12
    invoke-direct/range {v0 .. v5}, Lm0/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lid/Function2;Lid/p;)V

    return-void
.end method

.method private constructor <init>(Lid/a;Ljava/util/Set;Lid/Function2;Lid/p;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lm0/a;->a:Lid/Function2;

    .line 3
    iput-object p4, p0, Lm0/a;->b:Lid/p;

    .line 4
    iput-object p5, p0, Lm0/a;->c:Landroid/content/Context;

    .line 5
    iput-object p6, p0, Lm0/a;->d:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lxc/e;->a(Lid/a;)Lxc/d;

    move-result-object p1

    iput-object p1, p0, Lm0/a;->e:Lxc/d;

    .line 7
    invoke-static {}, Lm0/b;->a()Ljava/util/Set;

    move-result-object p1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p2}, Lyc/m;->n0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 9
    :goto_0
    iput-object p1, p0, Lm0/a;->f:Ljava/util/Set;

    return-void
.end method

.method private final d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lm0/a$c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final e()Landroid/content/SharedPreferences;
    .locals 1

    .line 1
    iget-object v0, p0, Lm0/a;->e:Lxc/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lxc/d;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/SharedPreferences;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lad/e;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p2, Lm0/a$d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lm0/a$d;

    .line 7
    .line 8
    iget v1, v0, Lm0/a$d;->d:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lm0/a$d;->d:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lm0/a$d;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lm0/a$d;-><init>(Lm0/a;Lad/e;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lm0/a$d;->b:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lm0/a$d;->d:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object p1, v0, Lm0/a$d;->a:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Lm0/a;

    .line 41
    .line 42
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_2
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iget-object p2, p0, Lm0/a;->a:Lid/Function2;

    .line 58
    .line 59
    iput-object p0, v0, Lm0/a$d;->a:Ljava/lang/Object;

    .line 60
    .line 61
    iput v3, v0, Lm0/a$d;->d:I

    .line 62
    .line 63
    invoke-interface {p2, p1, v0}, Lid/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    if-ne p2, v1, :cond_3

    .line 68
    .line 69
    return-object v1

    .line 70
    :cond_3
    move-object p1, p0

    .line 71
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    .line 72
    .line 73
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    const/4 v0, 0x0

    .line 78
    if-nez p2, :cond_4

    .line 79
    .line 80
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    return-object p1

    .line 85
    :cond_4
    iget-object p2, p1, Lm0/a;->f:Ljava/util/Set;

    .line 86
    .line 87
    if-nez p2, :cond_6

    .line 88
    .line 89
    invoke-direct {p1}, Lm0/a;->e()Landroid/content/SharedPreferences;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    const-string p2, "sharedPrefs.all"

    .line 98
    .line 99
    invoke-static {p1, p2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-nez p1, :cond_5

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_5
    :goto_2
    move v3, v0

    .line 110
    goto :goto_3

    .line 111
    :cond_6
    invoke-direct {p1}, Lm0/a;->e()Landroid/content/SharedPreferences;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    instance-of v1, p2, Ljava/util/Collection;

    .line 116
    .line 117
    if-eqz v1, :cond_7

    .line 118
    .line 119
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_7

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_7
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    :cond_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_5

    .line 135
    .line 136
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    check-cast v1, Ljava/lang/String;

    .line 141
    .line 142
    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_8

    .line 147
    .line 148
    :goto_3
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    return-object p1
.end method

.method public b(Lad/e;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-direct {p0}, Lm0/a;->e()Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lm0/a;->f:Ljava/util/Set;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 14
    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/String;

    .line 32
    .line 33
    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    :goto_1
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_4

    .line 42
    .line 43
    invoke-direct {p0}, Lm0/a;->e()Landroid/content/SharedPreferences;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    iget-object p1, p0, Lm0/a;->c:Landroid/content/Context;

    .line 58
    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    iget-object v0, p0, Lm0/a;->d:Ljava/lang/String;

    .line 62
    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    invoke-direct {p0, p1, v0}, Lm0/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_2
    iget-object p1, p0, Lm0/a;->f:Ljava/util/Set;

    .line 69
    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 73
    .line 74
    .line 75
    :cond_3
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 76
    .line 77
    return-object p1

    .line 78
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 79
    .line 80
    const-string v0, "Unable to delete migrated keys from SharedPreferences."

    .line 81
    .line 82
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p1
.end method

.method public c(Ljava/lang/Object;Lad/e;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lm0/a;->b:Lid/p;

    .line 2
    .line 3
    new-instance v1, Lm0/c;

    .line 4
    .line 5
    invoke-direct {p0}, Lm0/a;->e()Landroid/content/SharedPreferences;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v3, p0, Lm0/a;->f:Ljava/util/Set;

    .line 10
    .line 11
    invoke-direct {v1, v2, v3}, Lm0/c;-><init>(Landroid/content/SharedPreferences;Ljava/util/Set;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1, p1, p2}, Lid/p;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method
