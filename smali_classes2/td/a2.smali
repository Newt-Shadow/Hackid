.class public abstract Ltd/a2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lyd/f0;

.field public static final b:Lyd/f0;

.field private static final c:Lyd/f0;

.field private static final d:Lyd/f0;

.field private static final e:Lyd/f0;

.field private static final f:Ltd/c1;

.field private static final g:Ltd/c1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lyd/f0;

    .line 2
    .line 3
    const-string v1, "COMPLETING_ALREADY"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lyd/f0;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Ltd/a2;->a:Lyd/f0;

    .line 9
    .line 10
    new-instance v0, Lyd/f0;

    .line 11
    .line 12
    const-string v1, "COMPLETING_WAITING_CHILDREN"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lyd/f0;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Ltd/a2;->b:Lyd/f0;

    .line 18
    .line 19
    new-instance v0, Lyd/f0;

    .line 20
    .line 21
    const-string v1, "COMPLETING_RETRY"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lyd/f0;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Ltd/a2;->c:Lyd/f0;

    .line 27
    .line 28
    new-instance v0, Lyd/f0;

    .line 29
    .line 30
    const-string v1, "TOO_LATE_TO_CANCEL"

    .line 31
    .line 32
    invoke-direct {v0, v1}, Lyd/f0;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Ltd/a2;->d:Lyd/f0;

    .line 36
    .line 37
    new-instance v0, Lyd/f0;

    .line 38
    .line 39
    const-string v1, "SEALED"

    .line 40
    .line 41
    invoke-direct {v0, v1}, Lyd/f0;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sput-object v0, Ltd/a2;->e:Lyd/f0;

    .line 45
    .line 46
    new-instance v0, Ltd/c1;

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    invoke-direct {v0, v1}, Ltd/c1;-><init>(Z)V

    .line 50
    .line 51
    .line 52
    sput-object v0, Ltd/a2;->f:Ltd/c1;

    .line 53
    .line 54
    new-instance v0, Ltd/c1;

    .line 55
    .line 56
    const/4 v1, 0x1

    .line 57
    invoke-direct {v0, v1}, Ltd/c1;-><init>(Z)V

    .line 58
    .line 59
    .line 60
    sput-object v0, Ltd/a2;->g:Ltd/c1;

    .line 61
    .line 62
    return-void
.end method

.method public static final synthetic a()Lyd/f0;
    .locals 1

    .line 1
    sget-object v0, Ltd/a2;->a:Lyd/f0;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic b()Lyd/f0;
    .locals 1

    .line 1
    sget-object v0, Ltd/a2;->c:Lyd/f0;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic c()Ltd/c1;
    .locals 1

    .line 1
    sget-object v0, Ltd/a2;->g:Ltd/c1;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic d()Ltd/c1;
    .locals 1

    .line 1
    sget-object v0, Ltd/a2;->f:Ltd/c1;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic e()Lyd/f0;
    .locals 1

    .line 1
    sget-object v0, Ltd/a2;->e:Lyd/f0;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic f()Lyd/f0;
    .locals 1

    .line 1
    sget-object v0, Ltd/a2;->d:Lyd/f0;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p0, Ltd/p1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ltd/q1;

    .line 6
    .line 7
    check-cast p0, Ltd/p1;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Ltd/q1;-><init>(Ltd/p1;)V

    .line 10
    .line 11
    .line 12
    move-object p0, v0

    .line 13
    :cond_0
    return-object p0
.end method

.method public static final h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p0, Ltd/q1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, Ltd/q1;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    if-eqz v0, :cond_2

    .line 11
    .line 12
    iget-object v0, v0, Ltd/q1;->a:Ltd/p1;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move-object p0, v0

    .line 18
    :cond_2
    :goto_1
    return-object p0
.end method
