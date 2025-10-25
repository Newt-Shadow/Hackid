.class public abstract Ln0/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ln0/i;->a:Ljava/util/Set;

    .line 7
    .line 8
    return-void
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)Lm0/a;
    .locals 10

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "sharedPreferencesName"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "keysToMigrate"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Ln0/i;->a:Ljava/util/Set;

    .line 17
    .line 18
    if-ne p2, v0, :cond_0

    .line 19
    .line 20
    new-instance v0, Lm0/a;

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    invoke-static {p2}, Ln0/i;->e(Ljava/util/Set;)Lid/Function2;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    invoke-static {}, Ln0/i;->d()Lid/p;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    const/4 v8, 0x4

    .line 32
    const/4 v9, 0x0

    .line 33
    move-object v1, v0

    .line 34
    move-object v2, p0

    .line 35
    move-object v3, p1

    .line 36
    move-object v4, v5

    .line 37
    move-object v5, v6

    .line 38
    move-object v6, v7

    .line 39
    move v7, v8

    .line 40
    move-object v8, v9

    .line 41
    invoke-direct/range {v1 .. v8}, Lm0/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lid/Function2;Lid/p;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    new-instance v6, Lm0/a;

    .line 46
    .line 47
    invoke-static {p2}, Ln0/i;->e(Ljava/util/Set;)Lid/Function2;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-static {}, Ln0/i;->d()Lid/p;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    move-object v0, v6

    .line 56
    move-object v1, p0

    .line 57
    move-object v2, p1

    .line 58
    move-object v3, p2

    .line 59
    move-object v4, v5

    .line 60
    move-object v5, v7

    .line 61
    invoke-direct/range {v0 .. v5}, Lm0/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lid/Function2;Lid/p;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    return-object v0
.end method

.method public static synthetic b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;ILjava/lang/Object;)Lm0/a;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x4

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    sget-object p2, Ln0/i;->a:Ljava/util/Set;

    .line 6
    .line 7
    :cond_0
    invoke-static {p0, p1, p2}, Ln0/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)Lm0/a;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static final c()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Ln0/i;->a:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final d()Lid/p;
    .locals 2

    .line 1
    new-instance v0, Ln0/i$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ln0/i$a;-><init>(Lad/e;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method private static final e(Ljava/util/Set;)Lid/Function2;
    .locals 2

    .line 1
    new-instance v0, Ln0/i$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Ln0/i$b;-><init>(Ljava/util/Set;Lad/e;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method
