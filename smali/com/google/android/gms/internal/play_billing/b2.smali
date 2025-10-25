.class public abstract Lcom/google/android/gms/internal/play_billing/b2;
.super Lcom/google/android/gms/internal/play_billing/o0;
.source "SourceFile"


# static fields
.field private static final zzb:Ljava/util/Map;


# instance fields
.field protected zzc:Lcom/google/android/gms/internal/play_billing/w3;

.field private zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/play_billing/b2;->zzb:Ljava/util/Map;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/o0;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/play_billing/b2;->zzd:I

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/w3;->c()Lcom/google/android/gms/internal/play_billing/w3;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/b2;->zzc:Lcom/google/android/gms/internal/play_billing/w3;

    .line 12
    .line 13
    return-void
.end method

.method private final A(Lcom/google/android/gms/internal/play_billing/q3;)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/n3;->a()Lcom/google/android/gms/internal/play_billing/n3;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/play_billing/n3;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/q3;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/play_billing/q3;->c(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method private static e(Lcom/google/android/gms/internal/play_billing/b2;[BIILcom/google/android/gms/internal/play_billing/q1;)Lcom/google/android/gms/internal/play_billing/b2;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/b2;->m()Lcom/google/android/gms/internal/play_billing/b2;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/n3;->a()Lcom/google/android/gms/internal/play_billing/n3;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/play_billing/n3;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/q3;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const/4 v3, 0x0

    .line 18
    new-instance v5, Lcom/google/android/gms/internal/play_billing/r0;

    .line 19
    .line 20
    invoke-direct {v5, p4}, Lcom/google/android/gms/internal/play_billing/r0;-><init>(Lcom/google/android/gms/internal/play_billing/q1;)V

    .line 21
    .line 22
    .line 23
    move-object v0, p2

    .line 24
    move-object v1, p0

    .line 25
    move-object v2, p1

    .line 26
    move v4, p3

    .line 27
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/q3;->g(Ljava/lang/Object;[BIILcom/google/android/gms/internal/play_billing/r0;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/play_billing/q3;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/play_billing/l2; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/gms/internal/play_billing/u3; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    return-object p0

    .line 34
    :catch_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/l2;->g()Lcom/google/android/gms/internal/play_billing/l2;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/play_billing/l2;->f(Lcom/google/android/gms/internal/play_billing/f3;)Lcom/google/android/gms/internal/play_billing/l2;

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :catch_1
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    instance-of p2, p2, Lcom/google/android/gms/internal/play_billing/l2;

    .line 48
    .line 49
    if-eqz p2, :cond_0

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    check-cast p0, Lcom/google/android/gms/internal/play_billing/l2;

    .line 56
    .line 57
    throw p0

    .line 58
    :cond_0
    new-instance p2, Lcom/google/android/gms/internal/play_billing/l2;

    .line 59
    .line 60
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/play_billing/l2;-><init>(Ljava/io/IOException;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/play_billing/l2;->f(Lcom/google/android/gms/internal/play_billing/f3;)Lcom/google/android/gms/internal/play_billing/l2;

    .line 64
    .line 65
    .line 66
    throw p2

    .line 67
    :catch_2
    move-exception p1

    .line 68
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/u3;->a()Lcom/google/android/gms/internal/play_billing/l2;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/play_billing/l2;->f(Lcom/google/android/gms/internal/play_billing/f3;)Lcom/google/android/gms/internal/play_billing/l2;

    .line 73
    .line 74
    .line 75
    throw p1

    .line 76
    :catch_3
    move-exception p1

    .line 77
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/play_billing/l2;->f(Lcom/google/android/gms/internal/play_billing/f3;)Lcom/google/android/gms/internal/play_billing/l2;

    .line 78
    .line 79
    .line 80
    throw p1
.end method

.method static j(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/b2;
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/b2;->zzb:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lcom/google/android/gms/internal/play_billing/b2;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-static {v1, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/google/android/gms/internal/play_billing/b2;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    const-string v1, "Class initialization cannot fail."

    .line 34
    .line 35
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    throw v0

    .line 39
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 40
    .line 41
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/f4;->j(Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lcom/google/android/gms/internal/play_billing/b2;

    .line 46
    .line 47
    const/4 v2, 0x6

    .line 48
    const/4 v3, 0x0

    .line 49
    invoke-virtual {v1, v2, v3, v3}, Lcom/google/android/gms/internal/play_billing/b2;->z(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lcom/google/android/gms/internal/play_billing/b2;

    .line 54
    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 64
    .line 65
    .line 66
    throw p0

    .line 67
    :cond_2
    :goto_1
    return-object v1
.end method

.method protected static n(Lcom/google/android/gms/internal/play_billing/b2;[BLcom/google/android/gms/internal/play_billing/q1;)Lcom/google/android/gms/internal/play_billing/b2;
    .locals 2

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p0, p1, v1, v0, p2}, Lcom/google/android/gms/internal/play_billing/b2;->e(Lcom/google/android/gms/internal/play_billing/b2;[BIILcom/google/android/gms/internal/play_billing/q1;)Lcom/google/android/gms/internal/play_billing/b2;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/b2;->x()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/play_billing/u3;

    .line 17
    .line 18
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/play_billing/u3;-><init>(Lcom/google/android/gms/internal/play_billing/f3;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/u3;->a()Lcom/google/android/gms/internal/play_billing/l2;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/play_billing/l2;->f(Lcom/google/android/gms/internal/play_billing/f3;)Lcom/google/android/gms/internal/play_billing/l2;

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_1
    :goto_0
    return-object p0
.end method

.method protected static o()Lcom/google/android/gms/internal/play_billing/g2;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/c2;->i()Lcom/google/android/gms/internal/play_billing/c2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected static p()Lcom/google/android/gms/internal/play_billing/i2;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/o3;->g()Lcom/google/android/gms/internal/play_billing/o3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected static q(Lcom/google/android/gms/internal/play_billing/i2;)Lcom/google/android/gms/internal/play_billing/i2;
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/16 v0, 0xa

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    add-int/2addr v0, v0

    .line 11
    :goto_0
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/play_billing/i2;->j(I)Lcom/google/android/gms/internal/play_billing/i2;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method static varargs r(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    instance-of p1, p0, Ljava/lang/RuntimeException;

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    instance-of p1, p0, Ljava/lang/Error;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    check-cast p0, Ljava/lang/Error;

    .line 20
    .line 21
    throw p0

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 23
    .line 24
    const-string p2, "Unexpected exception thrown by generated accessor method."

    .line 25
    .line 26
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    .line 31
    .line 32
    throw p0

    .line 33
    :catch_1
    move-exception p0

    .line 34
    new-instance p1, Ljava/lang/RuntimeException;

    .line 35
    .line 36
    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    .line 37
    .line 38
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    throw p1
.end method

.method protected static s(Lcom/google/android/gms/internal/play_billing/f3;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/p3;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/p3;-><init>(Lcom/google/android/gms/internal/play_billing/f3;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method protected static v(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/b2;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/b2;->u()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/android/gms/internal/play_billing/b2;->zzb:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/play_billing/m1;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/n3;->a()Lcom/google/android/gms/internal/play_billing/n3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/n3;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/q3;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/n1;->K(Lcom/google/android/gms/internal/play_billing/m1;)Lcom/google/android/gms/internal/play_billing/n1;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/play_billing/q3;->e(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/m4;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method final b(Lcom/google/android/gms/internal/play_billing/q3;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/b2;->y()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "serialized size must be non-negative, was "

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/play_billing/q3;->c(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-ltz p1, :cond_0

    .line 14
    .line 15
    return p1

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0

    .line 37
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/b2;->zzd:I

    .line 38
    .line 39
    const v2, 0x7fffffff

    .line 40
    .line 41
    .line 42
    and-int/2addr v0, v2

    .line 43
    if-ne v0, v2, :cond_3

    .line 44
    .line 45
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/play_billing/q3;->c(Ljava/lang/Object;)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-ltz p1, :cond_2

    .line 50
    .line 51
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/b2;->zzd:I

    .line 52
    .line 53
    const/high16 v1, -0x80000000

    .line 54
    .line 55
    and-int/2addr v0, v1

    .line 56
    or-int/2addr v0, p1

    .line 57
    iput v0, p0, Lcom/google/android/gms/internal/play_billing/b2;->zzd:I

    .line 58
    .line 59
    return p1

    .line 60
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 61
    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw v0

    .line 81
    :cond_3
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    return v0

    .line 9
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eq v1, v2, :cond_2

    .line 18
    .line 19
    return v0

    .line 20
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/n3;->a()Lcom/google/android/gms/internal/play_billing/n3;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/play_billing/n3;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/q3;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast p1, Lcom/google/android/gms/internal/play_billing/b2;

    .line 33
    .line 34
    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/play_billing/q3;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    return p1
.end method

.method final f()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/n3;->a()Lcom/google/android/gms/internal/play_billing/n3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/n3;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/q3;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/play_billing/q3;->d(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method protected final g()Lcom/google/android/gms/internal/play_billing/y1;
    .locals 2

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/play_billing/b2;->z(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/play_billing/y1;

    .line 8
    .line 9
    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/b2;->y()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/o0;->zza:I

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/b2;->f()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lcom/google/android/gms/internal/play_billing/o0;->zza:I

    .line 16
    .line 17
    :cond_0
    return v0

    .line 18
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/b2;->f()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    return v0
.end method

.method public final synthetic i()Lcom/google/android/gms/internal/play_billing/f3;
    .locals 2

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/play_billing/b2;->z(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/play_billing/b2;

    .line 8
    .line 9
    return-object v0
.end method

.method public final k()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/b2;->y()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "serialized size must be non-negative, was "

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/play_billing/b2;->A(Lcom/google/android/gms/internal/play_billing/q3;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-ltz v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v2

    .line 38
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/b2;->zzd:I

    .line 39
    .line 40
    const v3, 0x7fffffff

    .line 41
    .line 42
    .line 43
    and-int/2addr v0, v3

    .line 44
    if-eq v0, v3, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/play_billing/b2;->A(Lcom/google/android/gms/internal/play_billing/q3;)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-ltz v0, :cond_3

    .line 52
    .line 53
    iget v1, p0, Lcom/google/android/gms/internal/play_billing/b2;->zzd:I

    .line 54
    .line 55
    const/high16 v2, -0x80000000

    .line 56
    .line 57
    and-int/2addr v1, v2

    .line 58
    or-int/2addr v1, v0

    .line 59
    iput v1, p0, Lcom/google/android/gms/internal/play_billing/b2;->zzd:I

    .line 60
    .line 61
    :goto_0
    return v0

    .line 62
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 63
    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v2
.end method

.method public final synthetic l()Lcom/google/android/gms/internal/play_billing/e3;
    .locals 2

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/play_billing/b2;->z(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/play_billing/y1;

    .line 8
    .line 9
    return-object v0
.end method

.method final m()Lcom/google/android/gms/internal/play_billing/b2;
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/play_billing/b2;->z(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/play_billing/b2;

    .line 8
    .line 9
    return-object v0
.end method

.method protected final t()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/n3;->a()Lcom/google/android/gms/internal/play_billing/n3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/n3;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/q3;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/play_billing/q3;->a(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/b2;->u()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/play_billing/h3;->a(Lcom/google/android/gms/internal/play_billing/f3;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method final u()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/b2;->zzd:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/b2;->zzd:I

    return-void
.end method

.method final w(I)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/google/android/gms/internal/play_billing/b2;->zzd:I

    const/high16 v0, -0x80000000

    and-int/2addr p1, v0

    const v0, 0x7fffffff

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/b2;->zzd:I

    return-void
.end method

.method public final x()Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/play_billing/b2;->z(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    check-cast v2, Ljava/lang/Byte;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ne v2, v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    if-nez v2, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    :goto_0
    return v0

    .line 20
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/n3;->a()Lcom/google/android/gms/internal/play_billing/n3;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/play_billing/n3;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/q3;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-interface {v2, p0}, Lcom/google/android/gms/internal/play_billing/q3;->b(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eq v0, v2, :cond_2

    .line 37
    .line 38
    move-object v0, v1

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    move-object v0, p0

    .line 41
    :goto_1
    const/4 v3, 0x2

    .line 42
    invoke-virtual {p0, v3, v0, v1}, Lcom/google/android/gms/internal/play_billing/b2;->z(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    return v2
.end method

.method final y()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/b2;->zzd:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract z(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method
