.class public abstract Lcom/google/crypto/tink/shaded/protobuf/x;
.super Lcom/google/crypto/tink/shaded/protobuf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/shaded/protobuf/x$b;,
        Lcom/google/crypto/tink/shaded/protobuf/x$c;,
        Lcom/google/crypto/tink/shaded/protobuf/x$a;,
        Lcom/google/crypto/tink/shaded/protobuf/x$d;
    }
.end annotation


# static fields
.field private static final MEMOIZED_SERIALIZED_SIZE_MASK:I = 0x7fffffff

.field private static final MUTABLE_FLAG_MASK:I = -0x80000000

.field static final UNINITIALIZED_HASH_CODE:I = 0x0

.field static final UNINITIALIZED_SERIALIZED_SIZE:I = 0x7fffffff

.field private static defaultInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/crypto/tink/shaded/protobuf/x;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private memoizedSerializedSize:I

.field protected unknownFields:Lcom/google/crypto/tink/shaded/protobuf/k1;


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
    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/x;->defaultInstanceMap:Ljava/util/Map;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/x;->memoizedSerializedSize:I

    .line 6
    .line 7
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/k1;->c()Lcom/google/crypto/tink/shaded/protobuf/k1;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/x;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/k1;

    .line 12
    .line 13
    return-void
.end method

.method static varargs A(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
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

.method protected static final C(Lcom/google/crypto/tink/shaded/protobuf/x;Z)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/x$d;->a:Lcom/google/crypto/tink/shaded/protobuf/x$d;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/x;->q(Lcom/google/crypto/tink/shaded/protobuf/x$d;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Byte;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    if-nez v0, :cond_1

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return p0

    .line 21
    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/z0;->a()Lcom/google/crypto/tink/shaded/protobuf/z0;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/z0;->d(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/d1;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/d1;->c(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/x$d;->b:Lcom/google/crypto/tink/shaded/protobuf/x$d;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    move-object v1, p0

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/4 v1, 0x0

    .line 42
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/x;->r(Lcom/google/crypto/tink/shaded/protobuf/x$d;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    :cond_3
    return v0
.end method

.method protected static G(Lcom/google/crypto/tink/shaded/protobuf/z$d;)Lcom/google/crypto/tink/shaded/protobuf/z$d;
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
    mul-int/lit8 v0, v0, 0x2

    .line 11
    .line 12
    :goto_0
    invoke-interface {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/z$d;->c(I)Lcom/google/crypto/tink/shaded/protobuf/z$d;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method protected static I(Lcom/google/crypto/tink/shaded/protobuf/o0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/b1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/b1;-><init>(Lcom/google/crypto/tink/shaded/protobuf/o0;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method protected static K(Lcom/google/crypto/tink/shaded/protobuf/x;Lcom/google/crypto/tink/shaded/protobuf/h;Lcom/google/crypto/tink/shaded/protobuf/p;)Lcom/google/crypto/tink/shaded/protobuf/x;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/x;->N(Lcom/google/crypto/tink/shaded/protobuf/x;Lcom/google/crypto/tink/shaded/protobuf/h;Lcom/google/crypto/tink/shaded/protobuf/p;)Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/x;->k(Lcom/google/crypto/tink/shaded/protobuf/x;)Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method protected static L(Lcom/google/crypto/tink/shaded/protobuf/x;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/p;)Lcom/google/crypto/tink/shaded/protobuf/x;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->f(Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/i;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/x;->O(Lcom/google/crypto/tink/shaded/protobuf/x;Lcom/google/crypto/tink/shaded/protobuf/i;Lcom/google/crypto/tink/shaded/protobuf/p;)Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/x;->k(Lcom/google/crypto/tink/shaded/protobuf/x;)Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method protected static M(Lcom/google/crypto/tink/shaded/protobuf/x;[BLcom/google/crypto/tink/shaded/protobuf/p;)Lcom/google/crypto/tink/shaded/protobuf/x;
    .locals 2

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p0, p1, v1, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/x;->P(Lcom/google/crypto/tink/shaded/protobuf/x;[BIILcom/google/crypto/tink/shaded/protobuf/p;)Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/x;->k(Lcom/google/crypto/tink/shaded/protobuf/x;)Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private static N(Lcom/google/crypto/tink/shaded/protobuf/x;Lcom/google/crypto/tink/shaded/protobuf/h;Lcom/google/crypto/tink/shaded/protobuf/p;)Lcom/google/crypto/tink/shaded/protobuf/x;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/h;->A()Lcom/google/crypto/tink/shaded/protobuf/i;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/x;->O(Lcom/google/crypto/tink/shaded/protobuf/x;Lcom/google/crypto/tink/shaded/protobuf/i;Lcom/google/crypto/tink/shaded/protobuf/p;)Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 p2, 0x0

    .line 10
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/i;->a(I)V
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/a0; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    return-object p0

    .line 14
    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/a0;->k(Lcom/google/crypto/tink/shaded/protobuf/o0;)Lcom/google/crypto/tink/shaded/protobuf/a0;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    throw p0
.end method

.method static O(Lcom/google/crypto/tink/shaded/protobuf/x;Lcom/google/crypto/tink/shaded/protobuf/i;Lcom/google/crypto/tink/shaded/protobuf/p;)Lcom/google/crypto/tink/shaded/protobuf/x;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/x;->J()Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :try_start_0
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/z0;->a()Lcom/google/crypto/tink/shaded/protobuf/z0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/z0;->d(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/d1;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/j;->O(Lcom/google/crypto/tink/shaded/protobuf/i;)Lcom/google/crypto/tink/shaded/protobuf/j;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {v0, p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/d1;->i(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/c1;Lcom/google/crypto/tink/shaded/protobuf/p;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/d1;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/a0; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/crypto/tink/shaded/protobuf/i1; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    return-object p0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    instance-of p1, p1, Lcom/google/crypto/tink/shaded/protobuf/a0;

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/a0;

    .line 38
    .line 39
    throw p0

    .line 40
    :cond_0
    throw p0

    .line 41
    :catch_1
    move-exception p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    instance-of p2, p2, Lcom/google/crypto/tink/shaded/protobuf/a0;

    .line 47
    .line 48
    if-eqz p2, :cond_1

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/a0;

    .line 55
    .line 56
    throw p0

    .line 57
    :cond_1
    new-instance p2, Lcom/google/crypto/tink/shaded/protobuf/a0;

    .line 58
    .line 59
    invoke-direct {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/a0;-><init>(Ljava/io/IOException;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, p0}, Lcom/google/crypto/tink/shaded/protobuf/a0;->k(Lcom/google/crypto/tink/shaded/protobuf/o0;)Lcom/google/crypto/tink/shaded/protobuf/a0;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    throw p0

    .line 67
    :catch_2
    move-exception p1

    .line 68
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i1;->a()Lcom/google/crypto/tink/shaded/protobuf/a0;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/a0;->k(Lcom/google/crypto/tink/shaded/protobuf/o0;)Lcom/google/crypto/tink/shaded/protobuf/a0;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    throw p0

    .line 77
    :catch_3
    move-exception p1

    .line 78
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/a0;->a()Z

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    if-eqz p2, :cond_2

    .line 83
    .line 84
    new-instance p2, Lcom/google/crypto/tink/shaded/protobuf/a0;

    .line 85
    .line 86
    invoke-direct {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/a0;-><init>(Ljava/io/IOException;)V

    .line 87
    .line 88
    .line 89
    move-object p1, p2

    .line 90
    :cond_2
    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/a0;->k(Lcom/google/crypto/tink/shaded/protobuf/o0;)Lcom/google/crypto/tink/shaded/protobuf/a0;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    throw p0
.end method

.method private static P(Lcom/google/crypto/tink/shaded/protobuf/x;[BIILcom/google/crypto/tink/shaded/protobuf/p;)Lcom/google/crypto/tink/shaded/protobuf/x;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/x;->J()Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :try_start_0
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/z0;->a()Lcom/google/crypto/tink/shaded/protobuf/z0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/z0;->d(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/d1;

    .line 10
    .line 11
    .line 12
    move-result-object v6

    .line 13
    add-int v4, p2, p3

    .line 14
    .line 15
    new-instance v5, Lcom/google/crypto/tink/shaded/protobuf/e$a;

    .line 16
    .line 17
    invoke-direct {v5, p4}, Lcom/google/crypto/tink/shaded/protobuf/e$a;-><init>(Lcom/google/crypto/tink/shaded/protobuf/p;)V

    .line 18
    .line 19
    .line 20
    move-object v0, v6

    .line 21
    move-object v1, p0

    .line 22
    move-object v2, p1

    .line 23
    move v3, p2

    .line 24
    invoke-interface/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/d1;->g(Ljava/lang/Object;[BIILcom/google/crypto/tink/shaded/protobuf/e$a;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v6, p0}, Lcom/google/crypto/tink/shaded/protobuf/d1;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/a0; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/crypto/tink/shaded/protobuf/i1; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    return-object p0

    .line 31
    :catch_0
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/a0;->m()Lcom/google/crypto/tink/shaded/protobuf/a0;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/a0;->k(Lcom/google/crypto/tink/shaded/protobuf/o0;)Lcom/google/crypto/tink/shaded/protobuf/a0;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    throw p0

    .line 40
    :catch_1
    move-exception p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    instance-of p2, p2, Lcom/google/crypto/tink/shaded/protobuf/a0;

    .line 46
    .line 47
    if-eqz p2, :cond_0

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/a0;

    .line 54
    .line 55
    throw p0

    .line 56
    :cond_0
    new-instance p2, Lcom/google/crypto/tink/shaded/protobuf/a0;

    .line 57
    .line 58
    invoke-direct {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/a0;-><init>(Ljava/io/IOException;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, p0}, Lcom/google/crypto/tink/shaded/protobuf/a0;->k(Lcom/google/crypto/tink/shaded/protobuf/o0;)Lcom/google/crypto/tink/shaded/protobuf/a0;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    throw p0

    .line 66
    :catch_2
    move-exception p1

    .line 67
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i1;->a()Lcom/google/crypto/tink/shaded/protobuf/a0;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/a0;->k(Lcom/google/crypto/tink/shaded/protobuf/o0;)Lcom/google/crypto/tink/shaded/protobuf/a0;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    throw p0

    .line 76
    :catch_3
    move-exception p1

    .line 77
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/a0;->a()Z

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    if-eqz p2, :cond_1

    .line 82
    .line 83
    new-instance p2, Lcom/google/crypto/tink/shaded/protobuf/a0;

    .line 84
    .line 85
    invoke-direct {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/a0;-><init>(Ljava/io/IOException;)V

    .line 86
    .line 87
    .line 88
    move-object p1, p2

    .line 89
    :cond_1
    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/a0;->k(Lcom/google/crypto/tink/shaded/protobuf/o0;)Lcom/google/crypto/tink/shaded/protobuf/a0;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    throw p0
.end method

.method protected static Q(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/x;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/x;->F()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/x;->defaultInstanceMap:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static k(Lcom/google/crypto/tink/shaded/protobuf/x;)Lcom/google/crypto/tink/shaded/protobuf/x;
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/x;->B()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/a;->i()Lcom/google/crypto/tink/shaded/protobuf/i1;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/i1;->a()Lcom/google/crypto/tink/shaded/protobuf/a0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/a0;->k(Lcom/google/crypto/tink/shaded/protobuf/o0;)Lcom/google/crypto/tink/shaded/protobuf/a0;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    throw p0

    .line 23
    :cond_1
    :goto_0
    return-object p0
.end method

.method private o(Lcom/google/crypto/tink/shaded/protobuf/d1;)I
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/z0;->a()Lcom/google/crypto/tink/shaded/protobuf/z0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/z0;->d(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/d1;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/d1;->e(Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    invoke-interface {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/d1;->e(Ljava/lang/Object;)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method protected static u()Lcom/google/crypto/tink/shaded/protobuf/z$d;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/a1;->i()Lcom/google/crypto/tink/shaded/protobuf/a1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method static v(Ljava/lang/Class;)Lcom/google/crypto/tink/shaded/protobuf/x;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/x;->defaultInstanceMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/x;->defaultInstanceMap:Ljava/util/Map;

    .line 24
    .line 25
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    const-string v1, "Class initialization cannot fail."

    .line 36
    .line 37
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    throw v0

    .line 41
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 42
    .line 43
    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/n1;->k(Ljava/lang/Class;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/x;->w()Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/x;->defaultInstanceMap:Ljava/util/Map;

    .line 56
    .line 57
    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    return-object v0
.end method


# virtual methods
.method public final B()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/x;->C(Lcom/google/crypto/tink/shaded/protobuf/x;Z)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    return v0
.end method

.method D()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/x;->memoizedSerializedSize:I

    .line 2
    .line 3
    const/high16 v1, -0x80000000

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method protected E()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/z0;->a()Lcom/google/crypto/tink/shaded/protobuf/z0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/z0;->d(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/d1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/d1;->b(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/x;->F()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method F()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/x;->memoizedSerializedSize:I

    .line 2
    .line 3
    const v1, 0x7fffffff

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/x;->memoizedSerializedSize:I

    .line 8
    .line 9
    return-void
.end method

.method public final H()Lcom/google/crypto/tink/shaded/protobuf/x$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/x$d;->e:Lcom/google/crypto/tink/shaded/protobuf/x$d;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/x;->q(Lcom/google/crypto/tink/shaded/protobuf/x$d;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/x$a;

    .line 8
    .line 9
    return-object v0
.end method

.method J()Lcom/google/crypto/tink/shaded/protobuf/x;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/x$d;->d:Lcom/google/crypto/tink/shaded/protobuf/x$d;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/x;->q(Lcom/google/crypto/tink/shaded/protobuf/x$d;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 8
    .line 9
    return-object v0
.end method

.method R(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/a;->memoizedHashCode:I

    .line 2
    .line 3
    return-void
.end method

.method S(I)V
    .locals 3

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/x;->memoizedSerializedSize:I

    .line 4
    .line 5
    const/high16 v1, -0x80000000

    .line 6
    .line 7
    and-int/2addr v0, v1

    .line 8
    const v1, 0x7fffffff

    .line 9
    .line 10
    .line 11
    and-int/2addr p1, v1

    .line 12
    or-int/2addr p1, v0

    .line 13
    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/x;->memoizedSerializedSize:I

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v2, "serialized size must be non-negative, was "

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0
.end method

.method public final T()Lcom/google/crypto/tink/shaded/protobuf/x$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/x$d;->e:Lcom/google/crypto/tink/shaded/protobuf/x$d;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/x;->q(Lcom/google/crypto/tink/shaded/protobuf/x$d;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/x$a;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->p(Lcom/google/crypto/tink/shaded/protobuf/x;)Lcom/google/crypto/tink/shaded/protobuf/x$a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public b()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/x;->g(Lcom/google/crypto/tink/shaded/protobuf/d1;)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    return v0
.end method

.method public d(Lcom/google/crypto/tink/shaded/protobuf/k;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/z0;->a()Lcom/google/crypto/tink/shaded/protobuf/z0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/z0;->d(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/d1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/l;->P(Lcom/google/crypto/tink/shaded/protobuf/k;)Lcom/google/crypto/tink/shaded/protobuf/l;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/d1;->h(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/q1;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
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
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/z0;->a()Lcom/google/crypto/tink/shaded/protobuf/z0;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/z0;->d(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/d1;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 29
    .line 30
    invoke-interface {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/d1;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    return p1
.end method

.method g(Lcom/google/crypto/tink/shaded/protobuf/d1;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/x;->D()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/x;->o(Lcom/google/crypto/tink/shaded/protobuf/d1;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-ltz p1, :cond_0

    .line 12
    .line 13
    return p1

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v2, "serialized size must be non-negative, was "

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/x;->y()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const v1, 0x7fffffff

    .line 42
    .line 43
    .line 44
    if-eq v0, v1, :cond_2

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/x;->y()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    return p1

    .line 51
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/x;->o(Lcom/google/crypto/tink/shaded/protobuf/d1;)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/x;->S(I)V

    .line 56
    .line 57
    .line 58
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/x;->D()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/x;->n()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/x;->z()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/x;->n()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/x;->R(I)V

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/x;->x()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    return v0
.end method

.method j()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/x$d;->c:Lcom/google/crypto/tink/shaded/protobuf/x$d;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/x;->q(Lcom/google/crypto/tink/shaded/protobuf/x$d;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method l()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/a;->memoizedHashCode:I

    .line 3
    .line 4
    return-void
.end method

.method m()V
    .locals 1

    .line 1
    const v0, 0x7fffffff

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/x;->S(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method n()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/z0;->a()Lcom/google/crypto/tink/shaded/protobuf/z0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/z0;->d(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/d1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/d1;->f(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method protected final p()Lcom/google/crypto/tink/shaded/protobuf/x$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/x$d;->e:Lcom/google/crypto/tink/shaded/protobuf/x$d;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/x;->q(Lcom/google/crypto/tink/shaded/protobuf/x$d;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/x$a;

    .line 8
    .line 9
    return-object v0
.end method

.method protected q(Lcom/google/crypto/tink/shaded/protobuf/x$d;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v0}, Lcom/google/crypto/tink/shaded/protobuf/x;->t(Lcom/google/crypto/tink/shaded/protobuf/x$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method protected r(Lcom/google/crypto/tink/shaded/protobuf/x$d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/x;->t(Lcom/google/crypto/tink/shaded/protobuf/x$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method protected abstract t(Lcom/google/crypto/tink/shaded/protobuf/x$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/q0;->f(Lcom/google/crypto/tink/shaded/protobuf/o0;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final w()Lcom/google/crypto/tink/shaded/protobuf/x;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/x$d;->f:Lcom/google/crypto/tink/shaded/protobuf/x$d;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/x;->q(Lcom/google/crypto/tink/shaded/protobuf/x$d;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 8
    .line 9
    return-object v0
.end method

.method x()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/a;->memoizedHashCode:I

    .line 2
    .line 3
    return v0
.end method

.method y()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/x;->memoizedSerializedSize:I

    .line 2
    .line 3
    const v1, 0x7fffffff

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    return v0
.end method

.method z()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/x;->x()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method
