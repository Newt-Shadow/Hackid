.class public final Llb/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llb/c$a;
    }
.end annotation


# static fields
.field private static final d:Llb/c$a;


# instance fields
.field private final a:Leb/d;

.field private final b:Lxc/d;

.field private final c:Lne/w;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Llb/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llb/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Llb/c;->d:Llb/c$a;

    return-void
.end method

.method public constructor <init>(Leb/d;)V
    .locals 2

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Llb/c;->a:Leb/d;

    .line 10
    .line 11
    sget-object v0, Llb/c$f;->e:Llb/c$f;

    .line 12
    .line 13
    invoke-static {v0}, Lxc/e;->a(Lid/a;)Lxc/d;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Llb/c;->b:Lxc/d;

    .line 18
    .line 19
    new-instance v0, Lne/w$a;

    .line 20
    .line 21
    invoke-direct {v0}, Lne/w$a;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Leb/d;->x()Ljava/net/Proxy;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lne/w$a;->G(Ljava/net/Proxy;)Lne/w$a;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Llb/b;

    .line 33
    .line 34
    invoke-direct {v1, p1}, Llb/b;-><init>(Leb/d;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lne/w$a;->a(Lne/u;)Lne/w$a;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lne/w$a;->b()Lne/w;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Llb/c;->c:Lne/w;

    .line 46
    .line 47
    return-void
.end method

.method public static final synthetic a(Llb/c;)Leb/d;
    .locals 0

    .line 1
    iget-object p0, p0, Llb/c;->a:Leb/d;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic b(Llb/c;)Lne/v;
    .locals 0

    .line 1
    invoke-direct {p0}, Llb/c;->f()Lne/v;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c(Llb/c;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Llb/c;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final f()Lne/v;
    .locals 1

    .line 1
    iget-object v0, p0, Llb/c;->b:Lxc/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lxc/d;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lne/v;

    .line 8
    .line 9
    return-object v0
.end method

.method private final g()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Llb/c;->a:Leb/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Leb/d;->l()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x0

    .line 9
    const-string v3, "/"

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-static {v0, v3, v4, v1, v2}, Lrd/n;->w(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Llb/c;->a:Leb/d;

    .line 19
    .line 20
    invoke-virtual {v0}, Leb/d;->l()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Llb/c;->a:Leb/d;

    .line 25
    .line 26
    invoke-virtual {v1}, Leb/d;->l()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    add-int/lit8 v1, v1, -0x1

    .line 35
    .line 36
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 41
    .line 42
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Llb/c;->a:Leb/d;

    .line 47
    .line 48
    invoke-virtual {v0}, Leb/d;->l()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :goto_0
    return-object v0
.end method

.method private final h(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Llb/c;->a:Leb/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Leb/d;->g()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Llb/c;->a:Leb/d;

    .line 10
    .line 11
    invoke-virtual {v0}, Leb/d;->E()Llb/b0;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Llb/b0;->c(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Llb/c;->a:Leb/d;

    .line 22
    .line 23
    invoke-virtual {v0}, Leb/d;->o()Llb/i;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v2, "Request "

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p2, "}: "

    .line 41
    .line 42
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-interface {v0, p1}, Llb/i;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    :catchall_0
    :cond_0
    return-void
.end method

.method private final i(Lne/a0;)Lne/a0;
    .locals 5

    .line 1
    iget-object v0, p0, Llb/c;->a:Leb/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Leb/d;->g()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p1}, Lne/a0;->a()Lne/b0;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    invoke-virtual {v0}, Lne/b0;->e()Lne/v;

    .line 17
    .line 18
    .line 19
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :try_start_1
    invoke-virtual {v0}, Lne/b0;->g()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    :try_start_2
    iget-object v2, p0, Llb/c;->a:Leb/d;

    .line 25
    .line 26
    invoke-virtual {v2}, Leb/d;->o()Llb/i;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v4, "Response "

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lne/a0;->H()Lne/y;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v4}, Lne/y;->i()Lne/t;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v4, ": "

    .line 52
    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-interface {v2, v3}, Llb/i;->a(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    sget-object v2, Lne/b0;->b:Lne/b0$b;

    .line 67
    .line 68
    sget-object v3, Lrd/d;->b:Ljava/nio/charset/Charset;

    .line 69
    .line 70
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const-string v3, "this as java.lang.String).getBytes(charset)"

    .line 75
    .line 76
    invoke-static {v0, v3}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v0, v1}, Lne/b0$b;->b([BLne/v;)Lne/b0;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {p1}, Lne/a0;->w()Lne/a0$a;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v1, v0}, Lne/a0$a;->b(Lne/b0;)Lne/a0$a;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lne/a0$a;->c()Lne/a0;

    .line 92
    .line 93
    .line 94
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    :catchall_0
    :cond_1
    return-object p1
.end method

.method private final j(Ljava/lang/String;Lid/l;)Lne/y;
    .locals 2

    .line 1
    new-instance v0, Llb/c$e;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Llb/c$e;-><init>(Llb/c;Lid/l;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Lne/y$a;

    .line 7
    .line 8
    invoke-direct {p2}, Lne/y$a;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, p1}, Lne/y$a;->m(Ljava/lang/String;)Lne/y$a;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p2, p0, Llb/c;->a:Leb/d;

    .line 16
    .line 17
    invoke-virtual {p2}, Leb/d;->K()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const-string v1, "User-Agent"

    .line 22
    .line 23
    invoke-virtual {p1, v1, p2}, Lne/y$a;->d(Ljava/lang/String;Ljava/lang/String;)Lne/y$a;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1, v0}, Lne/y$a;->g(Lne/z;)Lne/y$a;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lne/y$a;->a()Lne/y;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method


# virtual methods
.method public final d(Ljava/util/List;)V
    .locals 7

    .line 1
    const-string v0, "events"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/posthog/internal/PostHogBatchEvent;

    .line 7
    .line 8
    iget-object v1, p0, Llb/c;->a:Leb/d;

    .line 9
    .line 10
    invoke-virtual {v1}, Leb/d;->b()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x4

    .line 16
    const/4 v6, 0x0

    .line 17
    move-object v1, v0

    .line 18
    move-object v3, p1

    .line 19
    invoke-direct/range {v1 .. v6}, Lcom/posthog/internal/PostHogBatchEvent;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 20
    .line 21
    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Llb/c;->g()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, "/batch"

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    new-instance v1, Llb/c$b;

    .line 44
    .line 45
    invoke-direct {v1, v0, p0, p1}, Llb/c$b;-><init>(Lcom/posthog/internal/PostHogBatchEvent;Llb/c;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, p1, v1}, Llb/c;->j(Ljava/lang/String;Lid/l;)Lne/y;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-object v0, p0, Llb/c;->c:Lne/w;

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Lne/w;->w(Lne/y;)Lne/e;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-interface {p1}, Lne/e;->execute()Lne/a0;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    :try_start_0
    invoke-direct {p0, p1}, Llb/c;->i(Lne/a0;)Lne/a0;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lne/a0;->s()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_0

    .line 71
    .line 72
    sget-object v0, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    const/4 v0, 0x0

    .line 75
    invoke-static {p1, v0}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_0
    :try_start_1
    new-instance v1, Llb/e;

    .line 80
    .line 81
    invoke-virtual {v0}, Lne/a0;->f()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    invoke-virtual {v0}, Lne/a0;->u()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v0}, Lne/a0;->a()Lne/b0;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-direct {v1, v2, v3, v0}, Llb/e;-><init>(ILjava/lang/String;Lne/b0;)V

    .line 94
    .line 95
    .line 96
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :catchall_0
    move-exception v0

    .line 98
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 99
    :catchall_1
    move-exception v1

    .line 100
    invoke-static {p1, v0}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 101
    .line 102
    .line 103
    throw v1
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/posthog/internal/PostHogFlagsResponse;
    .locals 3

    .line 1
    const-string v0, "distinctId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/posthog/internal/PostHogFlagsRequest;

    .line 7
    .line 8
    iget-object v1, p0, Llb/c;->a:Leb/d;

    .line 9
    .line 10
    invoke-virtual {v1}, Leb/d;->b()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1, p1, p2, p3}, Lcom/posthog/internal/PostHogFlagsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 15
    .line 16
    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Llb/c;->g()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p2, "/flags/?v=2&config=true"

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-direct {p0, v0, p1}, Llb/c;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance p2, Llb/c$d;

    .line 42
    .line 43
    invoke-direct {p2, p0, v0}, Llb/c$d;-><init>(Llb/c;Lcom/posthog/internal/PostHogFlagsRequest;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, p1, p2}, Llb/c;->j(Ljava/lang/String;Lid/l;)Lne/y;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iget-object p2, p0, Llb/c;->c:Lne/w;

    .line 51
    .line 52
    invoke-virtual {p2, p1}, Lne/w;->w(Lne/y;)Lne/e;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-interface {p1}, Lne/e;->execute()Lne/a0;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    :try_start_0
    invoke-direct {p0, p1}, Llb/c;->i(Lne/a0;)Lne/a0;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-virtual {p2}, Lne/a0;->s()Z

    .line 65
    .line 66
    .line 67
    move-result p3

    .line 68
    if-eqz p3, :cond_2

    .line 69
    .line 70
    invoke-virtual {p2}, Lne/a0;->a()Lne/b0;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    const/4 p3, 0x0

    .line 75
    if-eqz p2, :cond_1

    .line 76
    .line 77
    iget-object v0, p0, Llb/c;->a:Leb/d;

    .line 78
    .line 79
    invoke-virtual {v0}, Leb/d;->E()Llb/b0;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {p2}, Lne/b0;->a()Ljava/io/Reader;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    instance-of v1, p2, Ljava/io/BufferedReader;

    .line 88
    .line 89
    if-eqz v1, :cond_0

    .line 90
    .line 91
    check-cast p2, Ljava/io/BufferedReader;

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_0
    new-instance v1, Ljava/io/BufferedReader;

    .line 95
    .line 96
    const/16 v2, 0x2000

    .line 97
    .line 98
    invoke-direct {v1, p2, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 99
    .line 100
    .line 101
    move-object p2, v1

    .line 102
    :goto_0
    invoke-virtual {v0}, Llb/b0;->b()Lcom/google/gson/Gson;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    new-instance v1, Llb/c$c;

    .line 107
    .line 108
    invoke-direct {v1}, Llb/c$c;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Lcom/google/gson/reflect/a;->d()Ljava/lang/reflect/Type;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v0, p2, v1}, Lcom/google/gson/Gson;->k(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    check-cast p2, Lcom/posthog/internal/PostHogFlagsResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    .line 121
    invoke-static {p1, p3}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 122
    .line 123
    .line 124
    return-object p2

    .line 125
    :cond_1
    invoke-static {p1, p3}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 126
    .line 127
    .line 128
    return-object p3

    .line 129
    :cond_2
    :try_start_1
    new-instance p3, Llb/e;

    .line 130
    .line 131
    invoke-virtual {p2}, Lne/a0;->f()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    invoke-virtual {p2}, Lne/a0;->u()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {p2}, Lne/a0;->a()Lne/b0;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    invoke-direct {p3, v0, v1, p2}, Llb/e;-><init>(ILjava/lang/String;Lne/b0;)V

    .line 144
    .line 145
    .line 146
    throw p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    :catchall_0
    move-exception p2

    .line 148
    :try_start_2
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 149
    :catchall_1
    move-exception p3

    .line 150
    invoke-static {p1, p2}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 151
    .line 152
    .line 153
    throw p3
.end method

.method public final k()Lcom/posthog/internal/PostHogRemoteConfigResponse;
    .locals 6

    .line 1
    invoke-direct {p0}, Llb/c;->g()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "https://us.i.posthog.com"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const-string v0, "https://us-assets.i.posthog.com"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v1, "https://eu.i.posthog.com"

    .line 17
    .line 18
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    const-string v0, "https://eu-assets.i.posthog.com"

    .line 25
    .line 26
    :cond_1
    :goto_0
    new-instance v1, Lne/y$a;

    .line 27
    .line 28
    invoke-direct {v1}, Lne/y$a;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v0, "/array/"

    .line 40
    .line 41
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Llb/c;->a:Leb/d;

    .line 45
    .line 46
    invoke-virtual {v0}, Leb/d;->b()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v0, "/config"

    .line 54
    .line 55
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v1, v0}, Lne/y$a;->m(Ljava/lang/String;)Lne/y$a;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v1, p0, Llb/c;->a:Leb/d;

    .line 67
    .line 68
    invoke-virtual {v1}, Leb/d;->K()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const-string v2, "User-Agent"

    .line 73
    .line 74
    invoke-virtual {v0, v2, v1}, Lne/y$a;->d(Ljava/lang/String;Ljava/lang/String;)Lne/y$a;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const-string v1, "Content-Type"

    .line 79
    .line 80
    const-string v2, "application/json; charset=utf-8"

    .line 81
    .line 82
    invoke-virtual {v0, v1, v2}, Lne/y$a;->d(Ljava/lang/String;Ljava/lang/String;)Lne/y$a;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lne/y$a;->b()Lne/y$a;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lne/y$a;->a()Lne/y;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iget-object v1, p0, Llb/c;->c:Lne/w;

    .line 95
    .line 96
    invoke-virtual {v1, v0}, Lne/w;->w(Lne/y;)Lne/e;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-interface {v0}, Lne/e;->execute()Lne/a0;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    :try_start_0
    invoke-direct {p0, v0}, Llb/c;->i(Lne/a0;)Lne/a0;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v1}, Lne/a0;->s()Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_4

    .line 113
    .line 114
    invoke-virtual {v1}, Lne/a0;->a()Lne/b0;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    const/4 v2, 0x0

    .line 119
    if-eqz v1, :cond_3

    .line 120
    .line 121
    iget-object v3, p0, Llb/c;->a:Leb/d;

    .line 122
    .line 123
    invoke-virtual {v3}, Leb/d;->E()Llb/b0;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {v1}, Lne/b0;->a()Ljava/io/Reader;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    instance-of v4, v1, Ljava/io/BufferedReader;

    .line 132
    .line 133
    if-eqz v4, :cond_2

    .line 134
    .line 135
    check-cast v1, Ljava/io/BufferedReader;

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_2
    new-instance v4, Ljava/io/BufferedReader;

    .line 139
    .line 140
    const/16 v5, 0x2000

    .line 141
    .line 142
    invoke-direct {v4, v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 143
    .line 144
    .line 145
    move-object v1, v4

    .line 146
    :goto_1
    invoke-virtual {v3}, Llb/b0;->b()Lcom/google/gson/Gson;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    new-instance v4, Llb/c$g;

    .line 151
    .line 152
    invoke-direct {v4}, Llb/c$g;-><init>()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v4}, Lcom/google/gson/reflect/a;->d()Ljava/lang/reflect/Type;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    invoke-virtual {v3, v1, v4}, Lcom/google/gson/Gson;->k(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    check-cast v1, Lcom/posthog/internal/PostHogRemoteConfigResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    .line 165
    invoke-static {v0, v2}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 166
    .line 167
    .line 168
    return-object v1

    .line 169
    :cond_3
    invoke-static {v0, v2}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 170
    .line 171
    .line 172
    return-object v2

    .line 173
    :cond_4
    :try_start_1
    new-instance v2, Llb/e;

    .line 174
    .line 175
    invoke-virtual {v1}, Lne/a0;->f()I

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    invoke-virtual {v1}, Lne/a0;->u()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    invoke-virtual {v1}, Lne/a0;->a()Lne/b0;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-direct {v2, v3, v4, v1}, Llb/e;-><init>(ILjava/lang/String;Lne/b0;)V

    .line 188
    .line 189
    .line 190
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    :catchall_0
    move-exception v1

    .line 192
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 193
    :catchall_1
    move-exception v2

    .line 194
    invoke-static {v0, v1}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 195
    .line 196
    .line 197
    throw v2
.end method

.method public final l(Ljava/util/List;)V
    .locals 4

    .line 1
    const-string v0, "events"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Ljava/lang/Iterable;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/posthog/PostHogEvent;

    .line 24
    .line 25
    iget-object v2, p0, Llb/c;->a:Leb/d;

    .line 26
    .line 27
    invoke-virtual {v2}, Leb/d;->b()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Lcom/posthog/PostHogEvent;->setApiKey(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Llb/c;->g()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Llb/c;->a:Leb/d;

    .line 48
    .line 49
    invoke-virtual {v1}, Leb/d;->G()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-direct {p0, p1, v0}, Llb/c;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    new-instance v1, Llb/c$h;

    .line 64
    .line 65
    invoke-direct {v1, p0, p1}, Llb/c$h;-><init>(Llb/c;Ljava/util/List;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {p0, v0, v1}, Llb/c;->j(Ljava/lang/String;Lid/l;)Lne/y;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iget-object v0, p0, Llb/c;->c:Lne/w;

    .line 73
    .line 74
    invoke-virtual {v0, p1}, Lne/w;->w(Lne/y;)Lne/e;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-interface {p1}, Lne/e;->execute()Lne/a0;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    :try_start_0
    invoke-direct {p0, p1}, Llb/c;->i(Lne/a0;)Lne/a0;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lne/a0;->s()Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_1

    .line 91
    .line 92
    sget-object v0, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .line 94
    const/4 v0, 0x0

    .line 95
    invoke-static {p1, v0}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_1
    :try_start_1
    new-instance v1, Llb/e;

    .line 100
    .line 101
    invoke-virtual {v0}, Lne/a0;->f()I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    invoke-virtual {v0}, Lne/a0;->u()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v0}, Lne/a0;->a()Lne/b0;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-direct {v1, v2, v3, v0}, Llb/e;-><init>(ILjava/lang/String;Lne/b0;)V

    .line 114
    .line 115
    .line 116
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    :catchall_0
    move-exception v0

    .line 118
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 119
    :catchall_1
    move-exception v1

    .line 120
    invoke-static {p1, v0}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    throw v1
.end method
