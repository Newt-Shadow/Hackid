.class public abstract Lmf/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static volatile a:I

.field static final b:Lof/o;

.field static final c:Lof/i;

.field static d:Z

.field static volatile e:Lpf/b;

.field private static final f:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lof/o;

    .line 2
    .line 3
    invoke-direct {v0}, Lof/o;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lmf/e;->b:Lof/o;

    .line 7
    .line 8
    new-instance v0, Lof/i;

    .line 9
    .line 10
    invoke-direct {v0}, Lof/i;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lmf/e;->c:Lof/i;

    .line 14
    .line 15
    const-string v0, "slf4j.detectLoggerNameMismatch"

    .line 16
    .line 17
    invoke-static {v0}, Lof/q;->d(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    sput-boolean v0, Lmf/e;->d:Z

    .line 22
    .line 23
    const-string v0, "2.0"

    .line 24
    .line 25
    filled-new-array {v0}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lmf/e;->f:[Ljava/lang/String;

    .line 30
    .line 31
    return-void
.end method

.method private static A(Ljava/util/List;Ljava/util/Iterator;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lpf/b;

    .line 6
    .line 7
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/ServiceConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v0, "A service provider failed to instantiate:\n"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0}, Lof/l;->b(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method

.method private static final B()V
    .locals 6

    .line 1
    :try_start_0
    sget-object v0, Lmf/e;->e:Lpf/b;

    .line 2
    .line 3
    invoke-interface {v0}, Lpf/b;->c()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lmf/e;->f:[Ljava/lang/String;

    .line 8
    .line 9
    array-length v2, v1

    .line 10
    const/4 v3, 0x0

    .line 11
    move v4, v3

    .line 12
    :goto_0
    if-ge v3, v2, :cond_1

    .line 13
    .line 14
    aget-object v5, v1, v3

    .line 15
    .line 16
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    if-eqz v5, :cond_0

    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    if-nez v4, :cond_2

    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v2, "The requested version "

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v0, " by your slf4j provider is not compatible with "

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    sget-object v0, Lmf/e;->f:[Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v0}, Lof/l;->i(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string v0, "See https://www.slf4j.org/codes.html#version_mismatch for further details."

    .line 67
    .line 68
    invoke-static {v0}, Lof/l;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :catchall_0
    move-exception v0

    .line 73
    const-string v1, "Unexpected problem occurred during version sanity check"

    .line 74
    .line 75
    invoke-static {v1, v0}, Lof/l;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic a(Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;
    .locals 0

    .line 1
    invoke-static {p0}, Lmf/e;->q(Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object p0

    return-object p0
.end method

.method private static final b()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lmf/e;->i()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lmf/e;->z(Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lpf/b;

    .line 22
    .line 23
    sput-object v1, Lmf/e;->e:Lpf/b;

    .line 24
    .line 25
    invoke-static {}, Lmf/e;->c()V

    .line 26
    .line 27
    .line 28
    sget-object v1, Lmf/e;->e:Lpf/b;

    .line 29
    .line 30
    invoke-interface {v1}, Lpf/b;->initialize()V

    .line 31
    .line 32
    .line 33
    const/4 v1, 0x3

    .line 34
    sput v1, Lmf/e;->a:I

    .line 35
    .line 36
    invoke-static {v0}, Lmf/e;->x(Ljava/util/List;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v0, 0x4

    .line 41
    sput v0, Lmf/e;->a:I

    .line 42
    .line 43
    const-string v0, "No SLF4J providers were found."

    .line 44
    .line 45
    invoke-static {v0}, Lof/l;->i(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v0, "Defaulting to no-operation (NOP) logger implementation"

    .line 49
    .line 50
    invoke-static {v0}, Lof/l;->i(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string v0, "See https://www.slf4j.org/codes.html#noProviders for further details."

    .line 54
    .line 55
    invoke-static {v0}, Lof/l;->i(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {}, Lmf/e;->h()Ljava/util/Set;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v0}, Lmf/e;->y(Ljava/util/Set;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    invoke-static {}, Lmf/e;->u()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    invoke-static {v0}, Lmf/e;->g(Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 74
    .line 75
    const-string v2, "Unexpected initialization failure"

    .line 76
    .line 77
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    throw v1
.end method

.method private static c()V
    .locals 1

    .line 1
    sget-object v0, Lmf/e;->e:Lpf/b;

    .line 2
    .line 3
    invoke-interface {v0}, Lpf/b;->a()Lpf/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lmf/f;->a(Lpf/a;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private static d(Lnf/d;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lnf/d;->c()Lof/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lof/m;->C()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Lmf/e;->e(I)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lnf/d;->c()Lof/m;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Lof/m;->D()Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-static {}, Lmf/e;->f()V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method private static e(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "A number ("

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p0, ") of logging calls during the initialization phase have been intercepted and are"

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Lof/l;->i(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string p0, "now being replayed. These are subject to the filtering rules of the underlying logging system."

    .line 27
    .line 28
    invoke-static {p0}, Lof/l;->i(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string p0, "See also https://www.slf4j.org/codes.html#replay"

    .line 32
    .line 33
    invoke-static {p0}, Lof/l;->i(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private static f()V
    .locals 1

    .line 1
    const-string v0, "The following set of substitute loggers may have been accessed"

    .line 2
    .line 3
    invoke-static {v0}, Lof/l;->i(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "during the initialization phase. Logging calls during this"

    .line 7
    .line 8
    invoke-static {v0}, Lof/l;->i(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "phase were not honored. However, subsequent logging calls to these"

    .line 12
    .line 13
    invoke-static {v0}, Lof/l;->i(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "loggers will work as normally expected."

    .line 17
    .line 18
    invoke-static {v0}, Lof/l;->i(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "See also https://www.slf4j.org/codes.html#substituteLogger"

    .line 22
    .line 23
    invoke-static {v0}, Lof/l;->i(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method static g(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    sput v0, Lmf/e;->a:I

    .line 3
    .line 4
    const-string v0, "Failed to instantiate SLF4J LoggerFactory"

    .line 5
    .line 6
    invoke-static {v0, p0}, Lof/l;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method static h()Ljava/util/Set;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-class v1, Lmf/e;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 9
    .line 10
    .line 11
    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    const-string v2, "org/slf4j/impl/StaticLoggerBinder.class"

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    :try_start_1
    invoke-static {v2}, Ljava/lang/ClassLoader;->getSystemResources(Ljava/lang/String;)Ljava/util/Enumeration;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/net/URL;

    .line 36
    .line 37
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception v1

    .line 42
    const-string v2, "Error getting resources from path"

    .line 43
    .line 44
    invoke-static {v2, v1}, Lof/l;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-object v0
.end method

.method static i()Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Lmf/e;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Lmf/e;->r(Ljava/lang/ClassLoader;)Lpf/b;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_0
    invoke-static {v1}, Lmf/e;->o(Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    invoke-static {v0, v1}, Lmf/e;->A(Ljava/util/List;Ljava/util/Iterator;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return-object v0
.end method

.method private static j()V
    .locals 4

    .line 1
    sget-object v0, Lmf/e;->b:Lof/o;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Lof/o;->d()Lof/n;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lof/n;->e()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lof/o;->d()Lof/n;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lof/n;->d()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lof/m;

    .line 34
    .line 35
    invoke-virtual {v2}, Lof/m;->getName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-static {v3}, Lmf/e;->m(Ljava/lang/String;)Lmf/c;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v2, v3}, Lof/m;->G(Lmf/c;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    monitor-exit v0

    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception v1

    .line 50
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw v1
.end method

.method public static k()Lmf/a;
    .locals 1

    .line 1
    invoke-static {}, Lmf/e;->n()Lpf/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lpf/b;->b()Lmf/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static l(Ljava/lang/Class;)Lmf/c;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lmf/e;->m(Ljava/lang/String;)Lmf/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-boolean v1, Lmf/e;->d:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lof/q;->a()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-static {p0, v1}, Lmf/e;->s(Ljava/lang/Class;Ljava/lang/Class;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    invoke-interface {v0}, Lmf/c;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    filled-new-array {p0, v1}, [Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string v1, "Detected logger name mismatch. Given name: \"%s\"; computed name: \"%s\"."

    .line 38
    .line 39
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {p0}, Lof/l;->i(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string p0, "See https://www.slf4j.org/codes.html#loggerNameMismatch for an explanation"

    .line 47
    .line 48
    invoke-static {p0}, Lof/l;->i(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-object v0
.end method

.method public static m(Ljava/lang/String;)Lmf/c;
    .locals 1

    .line 1
    invoke-static {}, Lmf/e;->k()Lmf/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p0}, Lmf/a;->a(Ljava/lang/String;)Lmf/c;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method static n()Lpf/b;
    .locals 3

    .line 1
    sget v0, Lmf/e;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    const-class v0, Lmf/e;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    sget v2, Lmf/e;->a:I

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    sput v1, Lmf/e;->a:I

    .line 14
    .line 15
    invoke-static {}, Lmf/e;->t()V

    .line 16
    .line 17
    .line 18
    :cond_0
    monitor-exit v0

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw v1

    .line 23
    :cond_1
    :goto_0
    sget v0, Lmf/e;->a:I

    .line 24
    .line 25
    if-eq v0, v1, :cond_5

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    if-eq v0, v1, :cond_4

    .line 29
    .line 30
    const/4 v1, 0x3

    .line 31
    if-eq v0, v1, :cond_3

    .line 32
    .line 33
    const/4 v1, 0x4

    .line 34
    if-ne v0, v1, :cond_2

    .line 35
    .line 36
    sget-object v0, Lmf/e;->c:Lof/i;

    .line 37
    .line 38
    return-object v0

    .line 39
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 40
    .line 41
    const-string v1, "Unreachable code"

    .line 42
    .line 43
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v0

    .line 47
    :cond_3
    sget-object v0, Lmf/e;->e:Lpf/b;

    .line 48
    .line 49
    return-object v0

    .line 50
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string v1, "org.slf4j.LoggerFactory in failed state. Original exception was thrown EARLIER. See also https://www.slf4j.org/codes.html#unsuccessfulInit"

    .line 53
    .line 54
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v0

    .line 58
    :cond_5
    sget-object v0, Lmf/e;->b:Lof/o;

    .line 59
    .line 60
    return-object v0
.end method

.method private static o(Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-class v0, Lpf/b;

    .line 8
    .line 9
    invoke-static {v0, p0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Lmf/d;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lmf/d;-><init>(Ljava/lang/ClassLoader;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ljava/util/ServiceLoader;

    .line 24
    .line 25
    :goto_0
    return-object p0
.end method

.method private static p(Ljava/util/List;)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x1

    .line 6
    if-le p0, v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method private static synthetic q(Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;
    .locals 1

    .line 1
    const-class v0, Lpf/b;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method static r(Ljava/lang/ClassLoader;)Lpf/b;
    .locals 7

    .line 1
    const-string v0, "slf4j.provider"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :try_start_0
    const-string v3, "Attempting to load provider \"%s\" specified via \"%s\" system property"

    .line 18
    .line 19
    const/4 v4, 0x2

    .line 20
    new-array v4, v4, [Ljava/lang/Object;

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    aput-object v1, v4, v5

    .line 24
    .line 25
    const/4 v6, 0x1

    .line 26
    aput-object v0, v4, v6

    .line 27
    .line 28
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lof/l;->f(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    new-array v0, v5, [Ljava/lang/Class;

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    new-array v0, v5, [Ljava/lang/Object;

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    check-cast p0, Lpf/b;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    return-object p0

    .line 54
    :catch_0
    move-exception p0

    .line 55
    const-string v0, "Specified SLF4JServiceProvider (%s) does not implement SLF4JServiceProvider interface"

    .line 56
    .line 57
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v0, p0}, Lof/l;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    return-object v2

    .line 69
    :catch_1
    move-exception p0

    .line 70
    goto :goto_0

    .line 71
    :catch_2
    move-exception p0

    .line 72
    goto :goto_0

    .line 73
    :catch_3
    move-exception p0

    .line 74
    goto :goto_0

    .line 75
    :catch_4
    move-exception p0

    .line 76
    goto :goto_0

    .line 77
    :catch_5
    move-exception p0

    .line 78
    :goto_0
    const-string v0, "Failed to instantiate the specified SLF4JServiceProvider (%s)"

    .line 79
    .line 80
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v0, p0}, Lof/l;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    :cond_1
    :goto_1
    return-object v2
.end method

.method private static s(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    xor-int/lit8 p0, p0, 0x1

    .line 6
    .line 7
    return p0
.end method

.method private static final t()V
    .locals 2

    .line 1
    invoke-static {}, Lmf/e;->b()V

    .line 2
    .line 3
    .line 4
    sget v0, Lmf/e;->a:I

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lmf/e;->B()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private static u()V
    .locals 1

    .line 1
    invoke-static {}, Lmf/e;->j()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lmf/e;->v()V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lmf/e;->b:Lof/o;

    .line 8
    .line 9
    invoke-virtual {v0}, Lof/o;->d()Lof/n;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lof/n;->b()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private static v()V
    .locals 8

    .line 1
    sget-object v0, Lmf/e;->b:Lof/o;

    .line 2
    .line 3
    invoke-virtual {v0}, Lof/o;->d()Lof/n;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lof/n;->c()Ljava/util/concurrent/LinkedBlockingQueue;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    new-instance v2, Ljava/util/ArrayList;

    .line 16
    .line 17
    const/16 v3, 0x80

    .line 18
    .line 19
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    :goto_0
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->drainTo(Ljava/util/Collection;I)I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-nez v5, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-eqz v6, :cond_2

    .line 39
    .line 40
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    check-cast v6, Lnf/d;

    .line 45
    .line 46
    invoke-static {v6}, Lmf/e;->w(Lnf/d;)V

    .line 47
    .line 48
    .line 49
    add-int/lit8 v7, v4, 0x1

    .line 50
    .line 51
    if-nez v4, :cond_1

    .line 52
    .line 53
    invoke-static {v6, v1}, Lmf/e;->d(Lnf/d;I)V

    .line 54
    .line 55
    .line 56
    :cond_1
    move v4, v7

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 59
    .line 60
    .line 61
    goto :goto_0
.end method

.method private static w(Lnf/d;)V
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lnf/d;->c()Lof/m;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lof/m;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0}, Lof/m;->E()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_4

    .line 17
    .line 18
    invoke-virtual {v0}, Lof/m;->D()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {v0}, Lof/m;->C()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0}, Lnf/d;->b()Lnf/b;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Lof/m;->s(Lnf/b;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    invoke-virtual {v0, p0}, Lof/m;->F(Lnf/c;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-static {v1}, Lof/l;->i(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_3
    :goto_0
    return-void

    .line 49
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    const-string v0, "Delegate logger cannot be null at this state."

    .line 52
    .line 53
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p0
.end method

.method private static x(Ljava/util/List;)V
    .locals 4

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-static {p0}, Lmf/e;->p(Ljava/util/List;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, "]"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v3, "Actual provider is of type ["

    .line 22
    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {p0}, Lof/l;->f(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Lpf/b;

    .line 49
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v2, "Connected with provider of type ["

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-static {p0}, Lof/l;->a(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :goto_0
    return-void

    .line 82
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 83
    .line 84
    const-string v0, "No providers were found which is impossible after successful initialization."

    .line 85
    .line 86
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p0
.end method

.method private static y(Ljava/util/Set;)V
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, "Class path contains SLF4J bindings targeting slf4j-api versions 1.7.x or earlier."

    .line 9
    .line 10
    invoke-static {v0}, Lof/l;->i(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/net/URL;

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v2, "Ignoring binding found at ["

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v0, "]"

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0}, Lof/l;->i(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const-string p0, "See https://www.slf4j.org/codes.html#ignoredBindings for an explanation."

    .line 56
    .line 57
    invoke-static {p0}, Lof/l;->i(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method private static z(Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-static {p0}, Lmf/e;->p(Ljava/util/List;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const-string v0, "Class path contains multiple SLF4J providers."

    .line 8
    .line 9
    invoke-static {v0}, Lof/l;->i(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lpf/b;

    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v2, "Found provider ["

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v0, "]"

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0}, Lof/l;->i(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const-string p0, "See https://www.slf4j.org/codes.html#multiple_bindings for an explanation."

    .line 55
    .line 56
    invoke-static {p0}, Lof/l;->i(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void
.end method
