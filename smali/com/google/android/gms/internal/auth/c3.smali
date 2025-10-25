.class final Lcom/google/android/gms/internal/auth/c3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/auth/k3;


# static fields
.field private static final n:[I

.field private static final o:Lsun/misc/Unsafe;


# instance fields
.field private final a:[I

.field private final b:[Ljava/lang/Object;

.field private final c:I

.field private final d:I

.field private final e:Lcom/google/android/gms/internal/auth/y2;

.field private final f:[I

.field private final g:I

.field private final h:I

.field private final i:Lcom/google/android/gms/internal/auth/o2;

.field private final j:Lcom/google/android/gms/internal/auth/p3;

.field private final k:Lcom/google/android/gms/internal/auth/v1;

.field private final l:Lcom/google/android/gms/internal/auth/e3;

.field private final m:Lcom/google/android/gms/internal/auth/t2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    sput-object v0, Lcom/google/android/gms/internal/auth/c3;->n:[I

    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/auth/a4;->g()Lsun/misc/Unsafe;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/google/android/gms/internal/auth/c3;->o:Lsun/misc/Unsafe;

    .line 11
    .line 12
    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/auth/y2;IZ[IIILcom/google/android/gms/internal/auth/e3;Lcom/google/android/gms/internal/auth/o2;Lcom/google/android/gms/internal/auth/p3;Lcom/google/android/gms/internal/auth/v1;Lcom/google/android/gms/internal/auth/t2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/c3;->a:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/auth/c3;->b:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/auth/c3;->c:I

    iput p4, p0, Lcom/google/android/gms/internal/auth/c3;->d:I

    iput-object p8, p0, Lcom/google/android/gms/internal/auth/c3;->f:[I

    iput p9, p0, Lcom/google/android/gms/internal/auth/c3;->g:I

    iput p10, p0, Lcom/google/android/gms/internal/auth/c3;->h:I

    iput-object p11, p0, Lcom/google/android/gms/internal/auth/c3;->l:Lcom/google/android/gms/internal/auth/e3;

    iput-object p12, p0, Lcom/google/android/gms/internal/auth/c3;->i:Lcom/google/android/gms/internal/auth/o2;

    iput-object p13, p0, Lcom/google/android/gms/internal/auth/c3;->j:Lcom/google/android/gms/internal/auth/p3;

    iput-object p14, p0, Lcom/google/android/gms/internal/auth/c3;->k:Lcom/google/android/gms/internal/auth/v1;

    iput-object p5, p0, Lcom/google/android/gms/internal/auth/c3;->e:Lcom/google/android/gms/internal/auth/y2;

    iput-object p15, p0, Lcom/google/android/gms/internal/auth/c3;->m:Lcom/google/android/gms/internal/auth/t2;

    return-void
.end method

.method private final A(I)Lcom/google/android/gms/internal/auth/k3;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/c3;->b:[Ljava/lang/Object;

    .line 2
    .line 3
    div-int/lit8 p1, p1, 0x3

    .line 4
    .line 5
    add-int/2addr p1, p1

    .line 6
    aget-object v0, v0, p1

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/gms/internal/auth/k3;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/auth/h3;->a()Lcom/google/android/gms/internal/auth/h3;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/auth/c3;->b:[Ljava/lang/Object;

    .line 18
    .line 19
    add-int/lit8 v2, p1, 0x1

    .line 20
    .line 21
    aget-object v1, v1, v2

    .line 22
    .line 23
    check-cast v1, Ljava/lang/Class;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/auth/h3;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/auth/k3;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/google/android/gms/internal/auth/c3;->b:[Ljava/lang/Object;

    .line 30
    .line 31
    aput-object v0, v1, p1

    .line 32
    .line 33
    return-object v0
.end method

.method private final B(I)Ljava/lang/Object;
    .locals 1

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/c3;->b:[Ljava/lang/Object;

    .line 4
    .line 5
    add-int/2addr p1, p1

    .line 6
    aget-object p1, v0, p1

    .line 7
    .line 8
    return-object p1
.end method

.method private final C(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/auth/c3;->A(I)Lcom/google/android/gms/internal/auth/k3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/auth/c3;->x(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const v2, 0xfffff

    .line 10
    .line 11
    .line 12
    and-int/2addr v1, v2

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/auth/c3;->l(Ljava/lang/Object;I)Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/google/android/gms/internal/auth/k3;->g()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :cond_0
    int-to-long v1, v1

    .line 25
    sget-object p2, Lcom/google/android/gms/internal/auth/c3;->o:Lsun/misc/Unsafe;

    .line 26
    .line 27
    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Lcom/google/android/gms/internal/auth/c3;->o(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    return-object p1

    .line 38
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/auth/k3;->g()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/auth/k3;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-object p2
.end method

.method private final D(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/auth/c3;->A(I)Lcom/google/android/gms/internal/auth/k3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/auth/c3;->p(Ljava/lang/Object;II)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/google/android/gms/internal/auth/k3;->g()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    sget-object p2, Lcom/google/android/gms/internal/auth/c3;->o:Lsun/misc/Unsafe;

    .line 17
    .line 18
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/auth/c3;->x(I)I

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    const v1, 0xfffff

    .line 23
    .line 24
    .line 25
    and-int/2addr p3, v1

    .line 26
    int-to-long v1, p3

    .line 27
    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Lcom/google/android/gms/internal/auth/c3;->o(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    return-object p1

    .line 38
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/auth/k3;->g()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/auth/k3;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-object p2
.end method

.method private static E(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_1

    .line 13
    .line 14
    aget-object v3, v0, v2

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    return-object v3

    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v3, "Field "

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p1, " for "

    .line 54
    .line 55
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p0, " not found. Known fields are "

    .line 62
    .line 63
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw v1
.end method

.method private static F(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/auth/c3;->o(Ljava/lang/Object;)Z

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
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string v1, "Mutating immutable message: "

    .line 15
    .line 16
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method private final G(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 5

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/auth/c3;->l(Ljava/lang/Object;I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/auth/c3;->x(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const v1, 0xfffff

    .line 13
    .line 14
    .line 15
    and-int/2addr v0, v1

    .line 16
    sget-object v1, Lcom/google/android/gms/internal/auth/c3;->o:Lsun/misc/Unsafe;

    .line 17
    .line 18
    int-to-long v2, v0

    .line 19
    invoke-virtual {v1, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_4

    .line 24
    .line 25
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/auth/c3;->A(I)Lcom/google/android/gms/internal/auth/k3;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/auth/c3;->l(Ljava/lang/Object;I)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-nez v4, :cond_2

    .line 34
    .line 35
    invoke-static {v0}, Lcom/google/android/gms/internal/auth/c3;->o(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-nez v4, :cond_1

    .line 40
    .line 41
    invoke-virtual {v1, p1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/auth/k3;->g()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-interface {p2, v4, v0}, Lcom/google/android/gms/internal/auth/k3;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/auth/c3;->I(Ljava/lang/Object;I)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    invoke-virtual {v1, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    invoke-static {p3}, Lcom/google/android/gms/internal/auth/c3;->o(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-nez v4, :cond_3

    .line 68
    .line 69
    invoke-interface {p2}, Lcom/google/android/gms/internal/auth/k3;->g()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-interface {p2, v4, p3}, Lcom/google/android/gms/internal/auth/k3;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    move-object p3, v4

    .line 80
    :cond_3
    invoke-interface {p2, p3, v0}, Lcom/google/android/gms/internal/auth/k3;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 85
    .line 86
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/c3;->a:[I

    .line 87
    .line 88
    aget p3, v0, p3

    .line 89
    .line 90
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v1, "Source subfield "

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string p3, " is present but null: "

    .line 108
    .line 109
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p1
.end method

.method private final H(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/c3;->a:[I

    .line 2
    .line 3
    aget v0, v0, p3

    .line 4
    .line 5
    invoke-direct {p0, p2, v0, p3}, Lcom/google/android/gms/internal/auth/c3;->p(Ljava/lang/Object;II)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/auth/c3;->x(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const v2, 0xfffff

    .line 17
    .line 18
    .line 19
    and-int/2addr v1, v2

    .line 20
    sget-object v2, Lcom/google/android/gms/internal/auth/c3;->o:Lsun/misc/Unsafe;

    .line 21
    .line 22
    int-to-long v3, v1

    .line 23
    invoke-virtual {v2, p2, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_4

    .line 28
    .line 29
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/auth/c3;->A(I)Lcom/google/android/gms/internal/auth/k3;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/gms/internal/auth/c3;->p(Ljava/lang/Object;II)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-nez v5, :cond_2

    .line 38
    .line 39
    invoke-static {v1}, Lcom/google/android/gms/internal/auth/c3;->o(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-nez v5, :cond_1

    .line 44
    .line 45
    invoke-virtual {v2, p1, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/auth/k3;->g()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-interface {p2, v5, v1}, Lcom/google/android/gms/internal/auth/k3;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, p1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/gms/internal/auth/c3;->b(Ljava/lang/Object;II)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_2
    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    invoke-static {p3}, Lcom/google/android/gms/internal/auth/c3;->o(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_3

    .line 72
    .line 73
    invoke-interface {p2}, Lcom/google/android/gms/internal/auth/k3;->g()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-interface {p2, v0, p3}, Lcom/google/android/gms/internal/auth/k3;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, p1, v3, v4, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    move-object p3, v0

    .line 84
    :cond_3
    invoke-interface {p2, p3, v1}, Lcom/google/android/gms/internal/auth/k3;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 89
    .line 90
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/c3;->a:[I

    .line 91
    .line 92
    aget p3, v0, p3

    .line 93
    .line 94
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v1, "Source subfield "

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string p3, " is present but null: "

    .line 112
    .line 113
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw p1
.end method

.method private final I(Ljava/lang/Object;I)V
    .locals 4

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/auth/c3;->u(I)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const v0, 0xfffff

    .line 6
    .line 7
    .line 8
    and-int/2addr v0, p2

    .line 9
    int-to-long v0, v0

    .line 10
    const-wide/32 v2, 0xfffff

    .line 11
    .line 12
    .line 13
    cmp-long v2, v0, v2

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    ushr-int/lit8 p2, p2, 0x14

    .line 19
    .line 20
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/a4;->c(Ljava/lang/Object;J)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x1

    .line 25
    shl-int p2, v3, p2

    .line 26
    .line 27
    or-int/2addr p2, v2

    .line 28
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/auth/a4;->n(Ljava/lang/Object;JI)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private final b(Ljava/lang/Object;II)V
    .locals 2

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/auth/c3;->u(I)I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    const v0, 0xfffff

    .line 6
    .line 7
    .line 8
    and-int/2addr p3, v0

    .line 9
    int-to-long v0, p3

    .line 10
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/auth/a4;->n(Ljava/lang/Object;JI)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private final i(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/auth/c3;->o:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/auth/c3;->x(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const v2, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr v1, v2

    .line 11
    int-to-long v1, v1

    .line 12
    invoke-virtual {v0, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/auth/c3;->I(Ljava/lang/Object;I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private final j(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/auth/c3;->o:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/auth/c3;->x(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const v2, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr v1, v2

    .line 11
    int-to-long v1, v1

    .line 12
    invoke-virtual {v0, p1, v1, v2, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/auth/c3;->b(Ljava/lang/Object;II)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private final k(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/auth/c3;->l(Ljava/lang/Object;I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/auth/c3;->l(Ljava/lang/Object;I)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-ne p1, p2, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    return p1
.end method

.method private final l(Ljava/lang/Object;I)Z
    .locals 7

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/auth/c3;->u(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0xfffff

    .line 6
    .line 7
    .line 8
    and-int v2, v0, v1

    .line 9
    .line 10
    int-to-long v2, v2

    .line 11
    const-wide/32 v4, 0xfffff

    .line 12
    .line 13
    .line 14
    cmp-long v4, v2, v4

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x1

    .line 18
    if-nez v4, :cond_14

    .line 19
    .line 20
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/auth/c3;->x(I)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    and-int v0, p2, v1

    .line 25
    .line 26
    invoke-static {p2}, Lcom/google/android/gms/internal/auth/c3;->w(I)I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    int-to-long v0, v0

    .line 31
    const-wide/16 v2, 0x0

    .line 32
    .line 33
    packed-switch p2, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 37
    .line 38
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :pswitch_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/a4;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    return v6

    .line 49
    :cond_0
    return v5

    .line 50
    :pswitch_1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/a4;->d(Ljava/lang/Object;J)J

    .line 51
    .line 52
    .line 53
    move-result-wide p1

    .line 54
    cmp-long p1, p1, v2

    .line 55
    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    return v6

    .line 59
    :cond_1
    return v5

    .line 60
    :pswitch_2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/a4;->c(Ljava/lang/Object;J)I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    return v6

    .line 67
    :cond_2
    return v5

    .line 68
    :pswitch_3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/a4;->d(Ljava/lang/Object;J)J

    .line 69
    .line 70
    .line 71
    move-result-wide p1

    .line 72
    cmp-long p1, p1, v2

    .line 73
    .line 74
    if-eqz p1, :cond_3

    .line 75
    .line 76
    return v6

    .line 77
    :cond_3
    return v5

    .line 78
    :pswitch_4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/a4;->c(Ljava/lang/Object;J)I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_4

    .line 83
    .line 84
    return v6

    .line 85
    :cond_4
    return v5

    .line 86
    :pswitch_5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/a4;->c(Ljava/lang/Object;J)I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_5

    .line 91
    .line 92
    return v6

    .line 93
    :cond_5
    return v5

    .line 94
    :pswitch_6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/a4;->c(Ljava/lang/Object;J)I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_6

    .line 99
    .line 100
    return v6

    .line 101
    :cond_6
    return v5

    .line 102
    :pswitch_7
    sget-object p2, Lcom/google/android/gms/internal/auth/p1;->b:Lcom/google/android/gms/internal/auth/p1;

    .line 103
    .line 104
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/a4;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/auth/p1;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-nez p1, :cond_7

    .line 113
    .line 114
    return v6

    .line 115
    :cond_7
    return v5

    .line 116
    :pswitch_8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/a4;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    if-eqz p1, :cond_8

    .line 121
    .line 122
    return v6

    .line 123
    :cond_8
    return v5

    .line 124
    :pswitch_9
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/a4;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    instance-of p2, p1, Ljava/lang/String;

    .line 129
    .line 130
    if-eqz p2, :cond_a

    .line 131
    .line 132
    check-cast p1, Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-nez p1, :cond_9

    .line 139
    .line 140
    return v6

    .line 141
    :cond_9
    return v5

    .line 142
    :cond_a
    instance-of p2, p1, Lcom/google/android/gms/internal/auth/p1;

    .line 143
    .line 144
    if-eqz p2, :cond_c

    .line 145
    .line 146
    sget-object p2, Lcom/google/android/gms/internal/auth/p1;->b:Lcom/google/android/gms/internal/auth/p1;

    .line 147
    .line 148
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/auth/p1;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    if-nez p1, :cond_b

    .line 153
    .line 154
    return v6

    .line 155
    :cond_b
    return v5

    .line 156
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 157
    .line 158
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 159
    .line 160
    .line 161
    throw p1

    .line 162
    :pswitch_a
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/a4;->t(Ljava/lang/Object;J)Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    return p1

    .line 167
    :pswitch_b
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/a4;->c(Ljava/lang/Object;J)I

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    if-eqz p1, :cond_d

    .line 172
    .line 173
    return v6

    .line 174
    :cond_d
    return v5

    .line 175
    :pswitch_c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/a4;->d(Ljava/lang/Object;J)J

    .line 176
    .line 177
    .line 178
    move-result-wide p1

    .line 179
    cmp-long p1, p1, v2

    .line 180
    .line 181
    if-eqz p1, :cond_e

    .line 182
    .line 183
    return v6

    .line 184
    :cond_e
    return v5

    .line 185
    :pswitch_d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/a4;->c(Ljava/lang/Object;J)I

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    if-eqz p1, :cond_f

    .line 190
    .line 191
    return v6

    .line 192
    :cond_f
    return v5

    .line 193
    :pswitch_e
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/a4;->d(Ljava/lang/Object;J)J

    .line 194
    .line 195
    .line 196
    move-result-wide p1

    .line 197
    cmp-long p1, p1, v2

    .line 198
    .line 199
    if-eqz p1, :cond_10

    .line 200
    .line 201
    return v6

    .line 202
    :cond_10
    return v5

    .line 203
    :pswitch_f
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/a4;->d(Ljava/lang/Object;J)J

    .line 204
    .line 205
    .line 206
    move-result-wide p1

    .line 207
    cmp-long p1, p1, v2

    .line 208
    .line 209
    if-eqz p1, :cond_11

    .line 210
    .line 211
    return v6

    .line 212
    :cond_11
    return v5

    .line 213
    :pswitch_10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/a4;->b(Ljava/lang/Object;J)F

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    if-eqz p1, :cond_12

    .line 222
    .line 223
    return v6

    .line 224
    :cond_12
    return v5

    .line 225
    :pswitch_11
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/a4;->a(Ljava/lang/Object;J)D

    .line 226
    .line 227
    .line 228
    move-result-wide p1

    .line 229
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 230
    .line 231
    .line 232
    move-result-wide p1

    .line 233
    cmp-long p1, p1, v2

    .line 234
    .line 235
    if-eqz p1, :cond_13

    .line 236
    .line 237
    return v6

    .line 238
    :cond_13
    return v5

    .line 239
    :cond_14
    ushr-int/lit8 p2, v0, 0x14

    .line 240
    .line 241
    shl-int p2, v6, p2

    .line 242
    .line 243
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/auth/a4;->c(Ljava/lang/Object;J)I

    .line 244
    .line 245
    .line 246
    move-result p1

    .line 247
    and-int/2addr p1, p2

    .line 248
    if-eqz p1, :cond_15

    .line 249
    .line 250
    return v6

    .line 251
    :cond_15
    return v5

    .line 252
    nop

    .line 253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final m(Ljava/lang/Object;IIII)Z
    .locals 1

    .line 1
    const v0, 0xfffff

    .line 2
    .line 3
    .line 4
    if-ne p3, v0, :cond_0

    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/auth/c3;->l(Ljava/lang/Object;I)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :cond_0
    and-int p1, p4, p5

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    :cond_1
    const/4 p1, 0x0

    .line 18
    return p1
.end method

.method private static n(Ljava/lang/Object;ILcom/google/android/gms/internal/auth/k3;)Z
    .locals 2

    .line 1
    const v0, 0xfffff

    .line 2
    .line 3
    .line 4
    and-int/2addr p1, v0

    .line 5
    int-to-long v0, p1

    .line 6
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/auth/a4;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/auth/k3;->f(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method private static o(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/auth/b2;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p0, Lcom/google/android/gms/internal/auth/b2;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/b2;->n()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_1
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method private final p(Ljava/lang/Object;II)Z
    .locals 2

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/auth/c3;->u(I)I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    const v0, 0xfffff

    .line 6
    .line 7
    .line 8
    and-int/2addr p3, v0

    .line 9
    int-to-long v0, p3

    .line 10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/a4;->c(Ljava/lang/Object;J)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-ne p1, p2, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    return p1

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    return p1
.end method

.method static r(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/r3;
    .locals 2

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/auth/b2;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/b2;->zzc:Lcom/google/android/gms/internal/auth/r3;

    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/auth/r3;->a()Lcom/google/android/gms/internal/auth/r3;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/auth/r3;->d()Lcom/google/android/gms/internal/auth/r3;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/gms/internal/auth/b2;->zzc:Lcom/google/android/gms/internal/auth/r3;

    .line 16
    .line 17
    :cond_0
    return-object v0
.end method

.method static s(Ljava/lang/Class;Lcom/google/android/gms/internal/auth/v2;Lcom/google/android/gms/internal/auth/e3;Lcom/google/android/gms/internal/auth/o2;Lcom/google/android/gms/internal/auth/p3;Lcom/google/android/gms/internal/auth/v1;Lcom/google/android/gms/internal/auth/t2;)Lcom/google/android/gms/internal/auth/c3;
    .locals 30

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    instance-of v1, v0, Lcom/google/android/gms/internal/auth/j3;

    .line 4
    .line 5
    if-eqz v1, :cond_36

    .line 6
    .line 7
    check-cast v0, Lcom/google/android/gms/internal/auth/j3;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/j3;->a()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const v5, 0xd800

    .line 23
    .line 24
    .line 25
    if-lt v4, v5, :cond_0

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    :goto_0
    add-int/lit8 v7, v4, 0x1

    .line 29
    .line 30
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-lt v4, v5, :cond_1

    .line 35
    .line 36
    move v4, v7

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v7, 0x1

    .line 39
    :cond_1
    add-int/lit8 v4, v7, 0x1

    .line 40
    .line 41
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    if-lt v7, v5, :cond_3

    .line 46
    .line 47
    and-int/lit16 v7, v7, 0x1fff

    .line 48
    .line 49
    const/16 v9, 0xd

    .line 50
    .line 51
    :goto_1
    add-int/lit8 v10, v4, 0x1

    .line 52
    .line 53
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-lt v4, v5, :cond_2

    .line 58
    .line 59
    and-int/lit16 v4, v4, 0x1fff

    .line 60
    .line 61
    shl-int/2addr v4, v9

    .line 62
    or-int/2addr v7, v4

    .line 63
    add-int/lit8 v9, v9, 0xd

    .line 64
    .line 65
    move v4, v10

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    shl-int/2addr v4, v9

    .line 68
    or-int/2addr v7, v4

    .line 69
    move v4, v10

    .line 70
    :cond_3
    if-nez v7, :cond_4

    .line 71
    .line 72
    sget-object v7, Lcom/google/android/gms/internal/auth/c3;->n:[I

    .line 73
    .line 74
    move v11, v3

    .line 75
    move v12, v11

    .line 76
    move v13, v12

    .line 77
    move v14, v13

    .line 78
    move/from16 v16, v14

    .line 79
    .line 80
    move/from16 v18, v16

    .line 81
    .line 82
    move-object/from16 v17, v7

    .line 83
    .line 84
    move/from16 v7, v18

    .line 85
    .line 86
    goto/16 :goto_a

    .line 87
    .line 88
    :cond_4
    add-int/lit8 v7, v4, 0x1

    .line 89
    .line 90
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-lt v4, v5, :cond_6

    .line 95
    .line 96
    and-int/lit16 v4, v4, 0x1fff

    .line 97
    .line 98
    const/16 v9, 0xd

    .line 99
    .line 100
    :goto_2
    add-int/lit8 v10, v7, 0x1

    .line 101
    .line 102
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    if-lt v7, v5, :cond_5

    .line 107
    .line 108
    and-int/lit16 v7, v7, 0x1fff

    .line 109
    .line 110
    shl-int/2addr v7, v9

    .line 111
    or-int/2addr v4, v7

    .line 112
    add-int/lit8 v9, v9, 0xd

    .line 113
    .line 114
    move v7, v10

    .line 115
    goto :goto_2

    .line 116
    :cond_5
    shl-int/2addr v7, v9

    .line 117
    or-int/2addr v4, v7

    .line 118
    move v7, v10

    .line 119
    :cond_6
    add-int/lit8 v9, v7, 0x1

    .line 120
    .line 121
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    if-lt v7, v5, :cond_8

    .line 126
    .line 127
    and-int/lit16 v7, v7, 0x1fff

    .line 128
    .line 129
    const/16 v10, 0xd

    .line 130
    .line 131
    :goto_3
    add-int/lit8 v11, v9, 0x1

    .line 132
    .line 133
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    .line 134
    .line 135
    .line 136
    move-result v9

    .line 137
    if-lt v9, v5, :cond_7

    .line 138
    .line 139
    and-int/lit16 v9, v9, 0x1fff

    .line 140
    .line 141
    shl-int/2addr v9, v10

    .line 142
    or-int/2addr v7, v9

    .line 143
    add-int/lit8 v10, v10, 0xd

    .line 144
    .line 145
    move v9, v11

    .line 146
    goto :goto_3

    .line 147
    :cond_7
    shl-int/2addr v9, v10

    .line 148
    or-int/2addr v7, v9

    .line 149
    move v9, v11

    .line 150
    :cond_8
    add-int/lit8 v10, v9, 0x1

    .line 151
    .line 152
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    .line 153
    .line 154
    .line 155
    move-result v9

    .line 156
    if-lt v9, v5, :cond_a

    .line 157
    .line 158
    and-int/lit16 v9, v9, 0x1fff

    .line 159
    .line 160
    const/16 v11, 0xd

    .line 161
    .line 162
    :goto_4
    add-int/lit8 v12, v10, 0x1

    .line 163
    .line 164
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    .line 165
    .line 166
    .line 167
    move-result v10

    .line 168
    if-lt v10, v5, :cond_9

    .line 169
    .line 170
    and-int/lit16 v10, v10, 0x1fff

    .line 171
    .line 172
    shl-int/2addr v10, v11

    .line 173
    or-int/2addr v9, v10

    .line 174
    add-int/lit8 v11, v11, 0xd

    .line 175
    .line 176
    move v10, v12

    .line 177
    goto :goto_4

    .line 178
    :cond_9
    shl-int/2addr v10, v11

    .line 179
    or-int/2addr v9, v10

    .line 180
    move v10, v12

    .line 181
    :cond_a
    add-int/lit8 v11, v10, 0x1

    .line 182
    .line 183
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    .line 184
    .line 185
    .line 186
    move-result v10

    .line 187
    if-lt v10, v5, :cond_c

    .line 188
    .line 189
    and-int/lit16 v10, v10, 0x1fff

    .line 190
    .line 191
    const/16 v12, 0xd

    .line 192
    .line 193
    :goto_5
    add-int/lit8 v13, v11, 0x1

    .line 194
    .line 195
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    .line 196
    .line 197
    .line 198
    move-result v11

    .line 199
    if-lt v11, v5, :cond_b

    .line 200
    .line 201
    and-int/lit16 v11, v11, 0x1fff

    .line 202
    .line 203
    shl-int/2addr v11, v12

    .line 204
    or-int/2addr v10, v11

    .line 205
    add-int/lit8 v12, v12, 0xd

    .line 206
    .line 207
    move v11, v13

    .line 208
    goto :goto_5

    .line 209
    :cond_b
    shl-int/2addr v11, v12

    .line 210
    or-int/2addr v10, v11

    .line 211
    move v11, v13

    .line 212
    :cond_c
    add-int/lit8 v12, v11, 0x1

    .line 213
    .line 214
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    .line 215
    .line 216
    .line 217
    move-result v11

    .line 218
    if-lt v11, v5, :cond_e

    .line 219
    .line 220
    and-int/lit16 v11, v11, 0x1fff

    .line 221
    .line 222
    const/16 v13, 0xd

    .line 223
    .line 224
    :goto_6
    add-int/lit8 v14, v12, 0x1

    .line 225
    .line 226
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    .line 227
    .line 228
    .line 229
    move-result v12

    .line 230
    if-lt v12, v5, :cond_d

    .line 231
    .line 232
    and-int/lit16 v12, v12, 0x1fff

    .line 233
    .line 234
    shl-int/2addr v12, v13

    .line 235
    or-int/2addr v11, v12

    .line 236
    add-int/lit8 v13, v13, 0xd

    .line 237
    .line 238
    move v12, v14

    .line 239
    goto :goto_6

    .line 240
    :cond_d
    shl-int/2addr v12, v13

    .line 241
    or-int/2addr v11, v12

    .line 242
    move v12, v14

    .line 243
    :cond_e
    add-int/lit8 v13, v12, 0x1

    .line 244
    .line 245
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    .line 246
    .line 247
    .line 248
    move-result v12

    .line 249
    if-lt v12, v5, :cond_10

    .line 250
    .line 251
    and-int/lit16 v12, v12, 0x1fff

    .line 252
    .line 253
    const/16 v14, 0xd

    .line 254
    .line 255
    :goto_7
    add-int/lit8 v15, v13, 0x1

    .line 256
    .line 257
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    .line 258
    .line 259
    .line 260
    move-result v13

    .line 261
    if-lt v13, v5, :cond_f

    .line 262
    .line 263
    and-int/lit16 v13, v13, 0x1fff

    .line 264
    .line 265
    shl-int/2addr v13, v14

    .line 266
    or-int/2addr v12, v13

    .line 267
    add-int/lit8 v14, v14, 0xd

    .line 268
    .line 269
    move v13, v15

    .line 270
    goto :goto_7

    .line 271
    :cond_f
    shl-int/2addr v13, v14

    .line 272
    or-int/2addr v12, v13

    .line 273
    move v13, v15

    .line 274
    :cond_10
    add-int/lit8 v14, v13, 0x1

    .line 275
    .line 276
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    .line 277
    .line 278
    .line 279
    move-result v13

    .line 280
    if-lt v13, v5, :cond_12

    .line 281
    .line 282
    and-int/lit16 v13, v13, 0x1fff

    .line 283
    .line 284
    const/16 v15, 0xd

    .line 285
    .line 286
    :goto_8
    add-int/lit8 v16, v14, 0x1

    .line 287
    .line 288
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    .line 289
    .line 290
    .line 291
    move-result v14

    .line 292
    if-lt v14, v5, :cond_11

    .line 293
    .line 294
    and-int/lit16 v14, v14, 0x1fff

    .line 295
    .line 296
    shl-int/2addr v14, v15

    .line 297
    or-int/2addr v13, v14

    .line 298
    add-int/lit8 v15, v15, 0xd

    .line 299
    .line 300
    move/from16 v14, v16

    .line 301
    .line 302
    goto :goto_8

    .line 303
    :cond_11
    shl-int/2addr v14, v15

    .line 304
    or-int/2addr v13, v14

    .line 305
    move/from16 v14, v16

    .line 306
    .line 307
    :cond_12
    add-int/lit8 v15, v14, 0x1

    .line 308
    .line 309
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    .line 310
    .line 311
    .line 312
    move-result v14

    .line 313
    if-lt v14, v5, :cond_14

    .line 314
    .line 315
    and-int/lit16 v14, v14, 0x1fff

    .line 316
    .line 317
    const/16 v16, 0xd

    .line 318
    .line 319
    :goto_9
    add-int/lit8 v17, v15, 0x1

    .line 320
    .line 321
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    .line 322
    .line 323
    .line 324
    move-result v15

    .line 325
    if-lt v15, v5, :cond_13

    .line 326
    .line 327
    and-int/lit16 v15, v15, 0x1fff

    .line 328
    .line 329
    shl-int v15, v15, v16

    .line 330
    .line 331
    or-int/2addr v14, v15

    .line 332
    add-int/lit8 v16, v16, 0xd

    .line 333
    .line 334
    move/from16 v15, v17

    .line 335
    .line 336
    goto :goto_9

    .line 337
    :cond_13
    shl-int v15, v15, v16

    .line 338
    .line 339
    or-int/2addr v14, v15

    .line 340
    move/from16 v15, v17

    .line 341
    .line 342
    :cond_14
    add-int v16, v14, v12

    .line 343
    .line 344
    add-int v13, v16, v13

    .line 345
    .line 346
    add-int v16, v4, v4

    .line 347
    .line 348
    add-int v16, v16, v7

    .line 349
    .line 350
    new-array v7, v13, [I

    .line 351
    .line 352
    move-object/from16 v17, v7

    .line 353
    .line 354
    move v13, v9

    .line 355
    move/from16 v18, v14

    .line 356
    .line 357
    move v7, v4

    .line 358
    move v14, v10

    .line 359
    move v4, v15

    .line 360
    :goto_a
    sget-object v9, Lcom/google/android/gms/internal/auth/c3;->o:Lsun/misc/Unsafe;

    .line 361
    .line 362
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/j3;->b()[Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v10

    .line 366
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/j3;->zza()Lcom/google/android/gms/internal/auth/y2;

    .line 367
    .line 368
    .line 369
    move-result-object v15

    .line 370
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 371
    .line 372
    .line 373
    move-result-object v15

    .line 374
    add-int v19, v18, v12

    .line 375
    .line 376
    add-int v12, v11, v11

    .line 377
    .line 378
    mul-int/lit8 v11, v11, 0x3

    .line 379
    .line 380
    new-array v11, v11, [I

    .line 381
    .line 382
    new-array v12, v12, [Ljava/lang/Object;

    .line 383
    .line 384
    move/from16 v20, v3

    .line 385
    .line 386
    move/from16 v21, v20

    .line 387
    .line 388
    move/from16 v22, v18

    .line 389
    .line 390
    move/from16 v23, v19

    .line 391
    .line 392
    :goto_b
    if-ge v4, v2, :cond_35

    .line 393
    .line 394
    add-int/lit8 v24, v4, 0x1

    .line 395
    .line 396
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 397
    .line 398
    .line 399
    move-result v4

    .line 400
    if-lt v4, v5, :cond_16

    .line 401
    .line 402
    and-int/lit16 v4, v4, 0x1fff

    .line 403
    .line 404
    move/from16 v3, v24

    .line 405
    .line 406
    const/16 v24, 0xd

    .line 407
    .line 408
    :goto_c
    add-int/lit8 v25, v3, 0x1

    .line 409
    .line 410
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 411
    .line 412
    .line 413
    move-result v3

    .line 414
    if-lt v3, v5, :cond_15

    .line 415
    .line 416
    and-int/lit16 v3, v3, 0x1fff

    .line 417
    .line 418
    shl-int v3, v3, v24

    .line 419
    .line 420
    or-int/2addr v4, v3

    .line 421
    add-int/lit8 v24, v24, 0xd

    .line 422
    .line 423
    move/from16 v3, v25

    .line 424
    .line 425
    goto :goto_c

    .line 426
    :cond_15
    shl-int v3, v3, v24

    .line 427
    .line 428
    or-int/2addr v4, v3

    .line 429
    move/from16 v3, v25

    .line 430
    .line 431
    goto :goto_d

    .line 432
    :cond_16
    move/from16 v3, v24

    .line 433
    .line 434
    :goto_d
    add-int/lit8 v24, v3, 0x1

    .line 435
    .line 436
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 437
    .line 438
    .line 439
    move-result v3

    .line 440
    if-lt v3, v5, :cond_18

    .line 441
    .line 442
    and-int/lit16 v3, v3, 0x1fff

    .line 443
    .line 444
    move/from16 v8, v24

    .line 445
    .line 446
    const/16 v24, 0xd

    .line 447
    .line 448
    :goto_e
    add-int/lit8 v25, v8, 0x1

    .line 449
    .line 450
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    .line 451
    .line 452
    .line 453
    move-result v8

    .line 454
    if-lt v8, v5, :cond_17

    .line 455
    .line 456
    and-int/lit16 v8, v8, 0x1fff

    .line 457
    .line 458
    shl-int v8, v8, v24

    .line 459
    .line 460
    or-int/2addr v3, v8

    .line 461
    add-int/lit8 v24, v24, 0xd

    .line 462
    .line 463
    move/from16 v8, v25

    .line 464
    .line 465
    goto :goto_e

    .line 466
    :cond_17
    shl-int v8, v8, v24

    .line 467
    .line 468
    or-int/2addr v3, v8

    .line 469
    move/from16 v8, v25

    .line 470
    .line 471
    goto :goto_f

    .line 472
    :cond_18
    move/from16 v8, v24

    .line 473
    .line 474
    :goto_f
    and-int/lit16 v6, v3, 0x400

    .line 475
    .line 476
    if-eqz v6, :cond_19

    .line 477
    .line 478
    add-int/lit8 v6, v20, 0x1

    .line 479
    .line 480
    aput v21, v17, v20

    .line 481
    .line 482
    move/from16 v20, v6

    .line 483
    .line 484
    :cond_19
    and-int/lit16 v6, v3, 0xff

    .line 485
    .line 486
    const/16 v5, 0x33

    .line 487
    .line 488
    if-lt v6, v5, :cond_22

    .line 489
    .line 490
    add-int/lit8 v5, v8, 0x1

    .line 491
    .line 492
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    .line 493
    .line 494
    .line 495
    move-result v8

    .line 496
    move/from16 v26, v2

    .line 497
    .line 498
    const v2, 0xd800

    .line 499
    .line 500
    .line 501
    if-lt v8, v2, :cond_1b

    .line 502
    .line 503
    and-int/lit16 v8, v8, 0x1fff

    .line 504
    .line 505
    const/16 v28, 0xd

    .line 506
    .line 507
    :goto_10
    add-int/lit8 v29, v5, 0x1

    .line 508
    .line 509
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    .line 510
    .line 511
    .line 512
    move-result v5

    .line 513
    if-lt v5, v2, :cond_1a

    .line 514
    .line 515
    and-int/lit16 v2, v5, 0x1fff

    .line 516
    .line 517
    shl-int v2, v2, v28

    .line 518
    .line 519
    or-int/2addr v8, v2

    .line 520
    add-int/lit8 v28, v28, 0xd

    .line 521
    .line 522
    move/from16 v5, v29

    .line 523
    .line 524
    const v2, 0xd800

    .line 525
    .line 526
    .line 527
    goto :goto_10

    .line 528
    :cond_1a
    shl-int v2, v5, v28

    .line 529
    .line 530
    or-int/2addr v8, v2

    .line 531
    move/from16 v5, v29

    .line 532
    .line 533
    :cond_1b
    add-int/lit8 v2, v6, -0x33

    .line 534
    .line 535
    move/from16 v28, v5

    .line 536
    .line 537
    const/16 v5, 0x9

    .line 538
    .line 539
    if-eq v2, v5, :cond_1e

    .line 540
    .line 541
    const/16 v5, 0x11

    .line 542
    .line 543
    if-ne v2, v5, :cond_1c

    .line 544
    .line 545
    goto :goto_11

    .line 546
    :cond_1c
    const/16 v5, 0xc

    .line 547
    .line 548
    if-ne v2, v5, :cond_1f

    .line 549
    .line 550
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/j3;->f()I

    .line 551
    .line 552
    .line 553
    move-result v2

    .line 554
    const/4 v5, 0x1

    .line 555
    if-eq v2, v5, :cond_1d

    .line 556
    .line 557
    and-int/lit16 v2, v3, 0x800

    .line 558
    .line 559
    if-eqz v2, :cond_1f

    .line 560
    .line 561
    :cond_1d
    div-int/lit8 v2, v21, 0x3

    .line 562
    .line 563
    add-int/2addr v2, v2

    .line 564
    add-int/2addr v2, v5

    .line 565
    add-int/lit8 v5, v16, 0x1

    .line 566
    .line 567
    aget-object v16, v10, v16

    .line 568
    .line 569
    aput-object v16, v12, v2

    .line 570
    .line 571
    goto :goto_12

    .line 572
    :cond_1e
    :goto_11
    div-int/lit8 v2, v21, 0x3

    .line 573
    .line 574
    add-int/2addr v2, v2

    .line 575
    const/4 v5, 0x1

    .line 576
    add-int/2addr v2, v5

    .line 577
    add-int/lit8 v5, v16, 0x1

    .line 578
    .line 579
    aget-object v16, v10, v16

    .line 580
    .line 581
    aput-object v16, v12, v2

    .line 582
    .line 583
    :goto_12
    move/from16 v16, v5

    .line 584
    .line 585
    :cond_1f
    add-int/2addr v8, v8

    .line 586
    aget-object v2, v10, v8

    .line 587
    .line 588
    instance-of v5, v2, Ljava/lang/reflect/Field;

    .line 589
    .line 590
    if-eqz v5, :cond_20

    .line 591
    .line 592
    check-cast v2, Ljava/lang/reflect/Field;

    .line 593
    .line 594
    goto :goto_13

    .line 595
    :cond_20
    check-cast v2, Ljava/lang/String;

    .line 596
    .line 597
    invoke-static {v15, v2}, Lcom/google/android/gms/internal/auth/c3;->E(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 598
    .line 599
    .line 600
    move-result-object v2

    .line 601
    aput-object v2, v10, v8

    .line 602
    .line 603
    :goto_13
    move v5, v13

    .line 604
    move/from16 v29, v14

    .line 605
    .line 606
    invoke-virtual {v9, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 607
    .line 608
    .line 609
    move-result-wide v13

    .line 610
    long-to-int v2, v13

    .line 611
    add-int/lit8 v8, v8, 0x1

    .line 612
    .line 613
    aget-object v13, v10, v8

    .line 614
    .line 615
    instance-of v14, v13, Ljava/lang/reflect/Field;

    .line 616
    .line 617
    if-eqz v14, :cond_21

    .line 618
    .line 619
    check-cast v13, Ljava/lang/reflect/Field;

    .line 620
    .line 621
    goto :goto_14

    .line 622
    :cond_21
    check-cast v13, Ljava/lang/String;

    .line 623
    .line 624
    invoke-static {v15, v13}, Lcom/google/android/gms/internal/auth/c3;->E(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 625
    .line 626
    .line 627
    move-result-object v13

    .line 628
    aput-object v13, v10, v8

    .line 629
    .line 630
    :goto_14
    invoke-virtual {v9, v13}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 631
    .line 632
    .line 633
    move-result-wide v13

    .line 634
    long-to-int v8, v13

    .line 635
    move/from16 v27, v5

    .line 636
    .line 637
    move/from16 v24, v8

    .line 638
    .line 639
    move/from16 v25, v28

    .line 640
    .line 641
    const/4 v8, 0x0

    .line 642
    move-object/from16 v28, v1

    .line 643
    .line 644
    goto/16 :goto_1f

    .line 645
    .line 646
    :cond_22
    move/from16 v26, v2

    .line 647
    .line 648
    move v5, v13

    .line 649
    move/from16 v29, v14

    .line 650
    .line 651
    add-int/lit8 v2, v16, 0x1

    .line 652
    .line 653
    aget-object v13, v10, v16

    .line 654
    .line 655
    check-cast v13, Ljava/lang/String;

    .line 656
    .line 657
    invoke-static {v15, v13}, Lcom/google/android/gms/internal/auth/c3;->E(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 658
    .line 659
    .line 660
    move-result-object v13

    .line 661
    const/16 v14, 0x9

    .line 662
    .line 663
    if-eq v6, v14, :cond_2b

    .line 664
    .line 665
    const/16 v14, 0x11

    .line 666
    .line 667
    if-ne v6, v14, :cond_23

    .line 668
    .line 669
    goto/16 :goto_19

    .line 670
    .line 671
    :cond_23
    const/16 v14, 0x1b

    .line 672
    .line 673
    if-eq v6, v14, :cond_2a

    .line 674
    .line 675
    const/16 v14, 0x31

    .line 676
    .line 677
    if-ne v6, v14, :cond_24

    .line 678
    .line 679
    goto :goto_17

    .line 680
    :cond_24
    const/16 v14, 0xc

    .line 681
    .line 682
    if-eq v6, v14, :cond_28

    .line 683
    .line 684
    const/16 v14, 0x1e

    .line 685
    .line 686
    if-eq v6, v14, :cond_28

    .line 687
    .line 688
    const/16 v14, 0x2c

    .line 689
    .line 690
    if-ne v6, v14, :cond_25

    .line 691
    .line 692
    goto :goto_16

    .line 693
    :cond_25
    const/16 v14, 0x32

    .line 694
    .line 695
    if-ne v6, v14, :cond_27

    .line 696
    .line 697
    add-int/lit8 v14, v22, 0x1

    .line 698
    .line 699
    aput v21, v17, v22

    .line 700
    .line 701
    div-int/lit8 v22, v21, 0x3

    .line 702
    .line 703
    add-int/lit8 v27, v2, 0x1

    .line 704
    .line 705
    aget-object v2, v10, v2

    .line 706
    .line 707
    add-int v22, v22, v22

    .line 708
    .line 709
    aput-object v2, v12, v22

    .line 710
    .line 711
    and-int/lit16 v2, v3, 0x800

    .line 712
    .line 713
    if-eqz v2, :cond_26

    .line 714
    .line 715
    add-int/lit8 v22, v22, 0x1

    .line 716
    .line 717
    add-int/lit8 v2, v27, 0x1

    .line 718
    .line 719
    aget-object v27, v10, v27

    .line 720
    .line 721
    aput-object v27, v12, v22

    .line 722
    .line 723
    move/from16 v27, v5

    .line 724
    .line 725
    move/from16 v22, v14

    .line 726
    .line 727
    goto :goto_15

    .line 728
    :cond_26
    move/from16 v22, v14

    .line 729
    .line 730
    move/from16 v2, v27

    .line 731
    .line 732
    :cond_27
    move/from16 v27, v5

    .line 733
    .line 734
    :goto_15
    const/4 v5, 0x1

    .line 735
    goto :goto_1a

    .line 736
    :cond_28
    :goto_16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/j3;->f()I

    .line 737
    .line 738
    .line 739
    move-result v14

    .line 740
    move/from16 v27, v5

    .line 741
    .line 742
    const/4 v5, 0x1

    .line 743
    if-eq v14, v5, :cond_29

    .line 744
    .line 745
    and-int/lit16 v14, v3, 0x800

    .line 746
    .line 747
    if-eqz v14, :cond_2c

    .line 748
    .line 749
    :cond_29
    div-int/lit8 v14, v21, 0x3

    .line 750
    .line 751
    add-int/2addr v14, v14

    .line 752
    add-int/2addr v14, v5

    .line 753
    add-int/lit8 v24, v2, 0x1

    .line 754
    .line 755
    aget-object v2, v10, v2

    .line 756
    .line 757
    aput-object v2, v12, v14

    .line 758
    .line 759
    goto :goto_18

    .line 760
    :cond_2a
    :goto_17
    move/from16 v27, v5

    .line 761
    .line 762
    const/4 v5, 0x1

    .line 763
    div-int/lit8 v14, v21, 0x3

    .line 764
    .line 765
    add-int/2addr v14, v14

    .line 766
    add-int/2addr v14, v5

    .line 767
    add-int/lit8 v24, v2, 0x1

    .line 768
    .line 769
    aget-object v2, v10, v2

    .line 770
    .line 771
    aput-object v2, v12, v14

    .line 772
    .line 773
    :goto_18
    move/from16 v2, v24

    .line 774
    .line 775
    goto :goto_1a

    .line 776
    :cond_2b
    :goto_19
    move/from16 v27, v5

    .line 777
    .line 778
    const/4 v5, 0x1

    .line 779
    div-int/lit8 v14, v21, 0x3

    .line 780
    .line 781
    add-int/2addr v14, v14

    .line 782
    add-int/2addr v14, v5

    .line 783
    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 784
    .line 785
    .line 786
    move-result-object v24

    .line 787
    aput-object v24, v12, v14

    .line 788
    .line 789
    :cond_2c
    :goto_1a
    invoke-virtual {v9, v13}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 790
    .line 791
    .line 792
    move-result-wide v13

    .line 793
    long-to-int v13, v13

    .line 794
    and-int/lit16 v14, v3, 0x1000

    .line 795
    .line 796
    const v24, 0xfffff

    .line 797
    .line 798
    .line 799
    if-eqz v14, :cond_30

    .line 800
    .line 801
    const/16 v14, 0x11

    .line 802
    .line 803
    if-gt v6, v14, :cond_30

    .line 804
    .line 805
    add-int/lit8 v14, v8, 0x1

    .line 806
    .line 807
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    .line 808
    .line 809
    .line 810
    move-result v8

    .line 811
    const v5, 0xd800

    .line 812
    .line 813
    .line 814
    if-lt v8, v5, :cond_2e

    .line 815
    .line 816
    and-int/lit16 v8, v8, 0x1fff

    .line 817
    .line 818
    const/16 v24, 0xd

    .line 819
    .line 820
    :goto_1b
    add-int/lit8 v25, v14, 0x1

    .line 821
    .line 822
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    .line 823
    .line 824
    .line 825
    move-result v14

    .line 826
    if-lt v14, v5, :cond_2d

    .line 827
    .line 828
    and-int/lit16 v14, v14, 0x1fff

    .line 829
    .line 830
    shl-int v14, v14, v24

    .line 831
    .line 832
    or-int/2addr v8, v14

    .line 833
    add-int/lit8 v24, v24, 0xd

    .line 834
    .line 835
    move/from16 v14, v25

    .line 836
    .line 837
    goto :goto_1b

    .line 838
    :cond_2d
    shl-int v14, v14, v24

    .line 839
    .line 840
    or-int/2addr v8, v14

    .line 841
    goto :goto_1c

    .line 842
    :cond_2e
    move/from16 v25, v14

    .line 843
    .line 844
    :goto_1c
    add-int v14, v7, v7

    .line 845
    .line 846
    div-int/lit8 v24, v8, 0x20

    .line 847
    .line 848
    add-int v14, v14, v24

    .line 849
    .line 850
    aget-object v5, v10, v14

    .line 851
    .line 852
    move-object/from16 v28, v1

    .line 853
    .line 854
    instance-of v1, v5, Ljava/lang/reflect/Field;

    .line 855
    .line 856
    if-eqz v1, :cond_2f

    .line 857
    .line 858
    check-cast v5, Ljava/lang/reflect/Field;

    .line 859
    .line 860
    goto :goto_1d

    .line 861
    :cond_2f
    check-cast v5, Ljava/lang/String;

    .line 862
    .line 863
    invoke-static {v15, v5}, Lcom/google/android/gms/internal/auth/c3;->E(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 864
    .line 865
    .line 866
    move-result-object v5

    .line 867
    aput-object v5, v10, v14

    .line 868
    .line 869
    :goto_1d
    move v14, v2

    .line 870
    invoke-virtual {v9, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 871
    .line 872
    .line 873
    move-result-wide v1

    .line 874
    long-to-int v1, v1

    .line 875
    rem-int/lit8 v8, v8, 0x20

    .line 876
    .line 877
    move/from16 v24, v1

    .line 878
    .line 879
    goto :goto_1e

    .line 880
    :cond_30
    move-object/from16 v28, v1

    .line 881
    .line 882
    move v14, v2

    .line 883
    move/from16 v25, v8

    .line 884
    .line 885
    const/4 v8, 0x0

    .line 886
    :goto_1e
    const/16 v1, 0x12

    .line 887
    .line 888
    if-lt v6, v1, :cond_31

    .line 889
    .line 890
    const/16 v1, 0x31

    .line 891
    .line 892
    if-gt v6, v1, :cond_31

    .line 893
    .line 894
    add-int/lit8 v1, v23, 0x1

    .line 895
    .line 896
    aput v13, v17, v23

    .line 897
    .line 898
    move/from16 v23, v1

    .line 899
    .line 900
    :cond_31
    move v2, v13

    .line 901
    move/from16 v16, v14

    .line 902
    .line 903
    :goto_1f
    add-int/lit8 v1, v21, 0x1

    .line 904
    .line 905
    aput v4, v11, v21

    .line 906
    .line 907
    add-int/lit8 v4, v1, 0x1

    .line 908
    .line 909
    and-int/lit16 v5, v3, 0x200

    .line 910
    .line 911
    if-eqz v5, :cond_32

    .line 912
    .line 913
    const/high16 v5, 0x20000000

    .line 914
    .line 915
    goto :goto_20

    .line 916
    :cond_32
    const/4 v5, 0x0

    .line 917
    :goto_20
    and-int/lit16 v13, v3, 0x100

    .line 918
    .line 919
    if-eqz v13, :cond_33

    .line 920
    .line 921
    const/high16 v13, 0x10000000

    .line 922
    .line 923
    goto :goto_21

    .line 924
    :cond_33
    const/4 v13, 0x0

    .line 925
    :goto_21
    and-int/lit16 v3, v3, 0x800

    .line 926
    .line 927
    if-eqz v3, :cond_34

    .line 928
    .line 929
    const/high16 v3, -0x80000000

    .line 930
    .line 931
    goto :goto_22

    .line 932
    :cond_34
    const/4 v3, 0x0

    .line 933
    :goto_22
    shl-int/lit8 v6, v6, 0x14

    .line 934
    .line 935
    or-int/2addr v5, v13

    .line 936
    or-int/2addr v3, v5

    .line 937
    or-int/2addr v3, v6

    .line 938
    or-int/2addr v2, v3

    .line 939
    aput v2, v11, v1

    .line 940
    .line 941
    add-int/lit8 v21, v4, 0x1

    .line 942
    .line 943
    shl-int/lit8 v1, v8, 0x14

    .line 944
    .line 945
    or-int v1, v1, v24

    .line 946
    .line 947
    aput v1, v11, v4

    .line 948
    .line 949
    move/from16 v4, v25

    .line 950
    .line 951
    move/from16 v2, v26

    .line 952
    .line 953
    move/from16 v13, v27

    .line 954
    .line 955
    move-object/from16 v1, v28

    .line 956
    .line 957
    move/from16 v14, v29

    .line 958
    .line 959
    const/4 v3, 0x0

    .line 960
    const v5, 0xd800

    .line 961
    .line 962
    .line 963
    goto/16 :goto_b

    .line 964
    .line 965
    :cond_35
    move/from16 v27, v13

    .line 966
    .line 967
    move/from16 v29, v14

    .line 968
    .line 969
    new-instance v1, Lcom/google/android/gms/internal/auth/c3;

    .line 970
    .line 971
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/j3;->zza()Lcom/google/android/gms/internal/auth/y2;

    .line 972
    .line 973
    .line 974
    move-result-object v14

    .line 975
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/j3;->f()I

    .line 976
    .line 977
    .line 978
    move-result v15

    .line 979
    const/16 v16, 0x0

    .line 980
    .line 981
    move-object v9, v1

    .line 982
    move-object v10, v11

    .line 983
    move-object v11, v12

    .line 984
    move/from16 v12, v27

    .line 985
    .line 986
    move/from16 v13, v29

    .line 987
    .line 988
    move-object/from16 v20, p2

    .line 989
    .line 990
    move-object/from16 v21, p3

    .line 991
    .line 992
    move-object/from16 v22, p4

    .line 993
    .line 994
    move-object/from16 v23, p5

    .line 995
    .line 996
    move-object/from16 v24, p6

    .line 997
    .line 998
    invoke-direct/range {v9 .. v24}, Lcom/google/android/gms/internal/auth/c3;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/auth/y2;IZ[IIILcom/google/android/gms/internal/auth/e3;Lcom/google/android/gms/internal/auth/o2;Lcom/google/android/gms/internal/auth/p3;Lcom/google/android/gms/internal/auth/v1;Lcom/google/android/gms/internal/auth/t2;)V

    .line 999
    .line 1000
    .line 1001
    return-object v1

    .line 1002
    :cond_36
    invoke-static/range {p1 .. p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 1003
    .line 1004
    .line 1005
    const/4 v0, 0x0

    .line 1006
    throw v0
.end method

.method private static t(Ljava/lang/Object;J)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/auth/a4;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private final u(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/c3;->a:[I

    .line 2
    .line 3
    add-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    aget p1, v0, p1

    .line 6
    .line 7
    return p1
.end method

.method private final v(II)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/c3;->a:[I

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    div-int/lit8 v0, v0, 0x3

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    add-int/2addr v0, v1

    .line 8
    :goto_0
    if-gt p2, v0, :cond_2

    .line 9
    .line 10
    add-int v2, v0, p2

    .line 11
    .line 12
    ushr-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    mul-int/lit8 v3, v2, 0x3

    .line 15
    .line 16
    iget-object v4, p0, Lcom/google/android/gms/internal/auth/c3;->a:[I

    .line 17
    .line 18
    aget v4, v4, v3

    .line 19
    .line 20
    if-ne p1, v4, :cond_0

    .line 21
    .line 22
    return v3

    .line 23
    :cond_0
    if-ge p1, v4, :cond_1

    .line 24
    .line 25
    add-int/lit8 v0, v2, -0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    add-int/lit8 p2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    return v1
.end method

.method private static w(I)I
    .locals 0

    .line 1
    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private final x(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/c3;->a:[I

    .line 2
    .line 3
    add-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    aget p1, v0, p1

    .line 6
    .line 7
    return p1
.end method

.method private static y(Ljava/lang/Object;J)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/auth/a4;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Long;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    return-wide p0
.end method

.method private final z(I)Lcom/google/android/gms/internal/auth/c2;
    .locals 1

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    add-int/2addr p1, p1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/c3;->b:[Ljava/lang/Object;

    .line 5
    .line 6
    add-int/lit8 p1, p1, 0x1

    .line 7
    .line 8
    aget-object p1, v0, p1

    .line 9
    .line 10
    invoke-static {p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    return-object p1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/auth/c3;->o(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/auth/b2;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    check-cast v0, Lcom/google/android/gms/internal/auth/b2;

    .line 15
    .line 16
    const v2, 0x7fffffff

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/auth/b2;->m(I)V

    .line 20
    .line 21
    .line 22
    iput v1, v0, Lcom/google/android/gms/internal/auth/a1;->zza:I

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/b2;->k()V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/c3;->a:[I

    .line 28
    .line 29
    array-length v0, v0

    .line 30
    :goto_0
    if-ge v1, v0, :cond_5

    .line 31
    .line 32
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/auth/c3;->x(I)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const v3, 0xfffff

    .line 37
    .line 38
    .line 39
    and-int/2addr v3, v2

    .line 40
    invoke-static {v2}, Lcom/google/android/gms/internal/auth/c3;->w(I)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    int-to-long v3, v3

    .line 45
    const/16 v5, 0x9

    .line 46
    .line 47
    if-eq v2, v5, :cond_3

    .line 48
    .line 49
    const/16 v5, 0x3c

    .line 50
    .line 51
    if-eq v2, v5, :cond_2

    .line 52
    .line 53
    const/16 v5, 0x44

    .line 54
    .line 55
    if-eq v2, v5, :cond_2

    .line 56
    .line 57
    packed-switch v2, :pswitch_data_0

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :pswitch_0
    sget-object v2, Lcom/google/android/gms/internal/auth/c3;->o:Lsun/misc/Unsafe;

    .line 62
    .line 63
    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    if-eqz v5, :cond_4

    .line 68
    .line 69
    move-object v6, v5

    .line 70
    check-cast v6, Lcom/google/android/gms/internal/auth/s2;

    .line 71
    .line 72
    invoke-virtual {v6}, Lcom/google/android/gms/internal/auth/s2;->c()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, p1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :pswitch_1
    iget-object v2, p0, Lcom/google/android/gms/internal/auth/c3;->i:Lcom/google/android/gms/internal/auth/o2;

    .line 80
    .line 81
    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/auth/o2;->a(Ljava/lang/Object;J)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/auth/c3;->a:[I

    .line 86
    .line 87
    aget v2, v2, v1

    .line 88
    .line 89
    invoke-direct {p0, p1, v2, v1}, Lcom/google/android/gms/internal/auth/c3;->p(Ljava/lang/Object;II)Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_4

    .line 94
    .line 95
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/auth/c3;->A(I)Lcom/google/android/gms/internal/auth/k3;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    sget-object v5, Lcom/google/android/gms/internal/auth/c3;->o:Lsun/misc/Unsafe;

    .line 100
    .line 101
    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/auth/k3;->a(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_3
    :pswitch_2
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/auth/c3;->l(Ljava/lang/Object;I)Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_4

    .line 114
    .line 115
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/auth/c3;->A(I)Lcom/google/android/gms/internal/auth/k3;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    sget-object v5, Lcom/google/android/gms/internal/auth/c3;->o:Lsun/misc/Unsafe;

    .line 120
    .line 121
    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/auth/k3;->a(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x3

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/c3;->j:Lcom/google/android/gms/internal/auth/p3;

    .line 132
    .line 133
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/p3;->c(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;)I
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/c3;->a:[I

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    :goto_0
    if-ge v1, v0, :cond_2

    .line 7
    .line 8
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/auth/c3;->x(I)I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    iget-object v4, p0, Lcom/google/android/gms/internal/auth/c3;->a:[I

    .line 13
    .line 14
    aget v4, v4, v1

    .line 15
    .line 16
    const v5, 0xfffff

    .line 17
    .line 18
    .line 19
    and-int/2addr v5, v3

    .line 20
    invoke-static {v3}, Lcom/google/android/gms/internal/auth/c3;->w(I)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    int-to-long v5, v5

    .line 25
    const/16 v7, 0x25

    .line 26
    .line 27
    const/16 v8, 0x20

    .line 28
    .line 29
    packed-switch v3, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    goto/16 :goto_4

    .line 33
    .line 34
    :pswitch_0
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/c3;->p(Ljava/lang/Object;II)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    mul-int/lit8 v2, v2, 0x35

    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    goto/16 :goto_3

    .line 51
    .line 52
    :pswitch_1
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/c3;->p(Ljava/lang/Object;II)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_1

    .line 57
    .line 58
    mul-int/lit8 v2, v2, 0x35

    .line 59
    .line 60
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/c3;->y(Ljava/lang/Object;J)J

    .line 61
    .line 62
    .line 63
    move-result-wide v3

    .line 64
    sget-object v5, Lcom/google/android/gms/internal/auth/f2;->d:[B

    .line 65
    .line 66
    goto/16 :goto_2

    .line 67
    .line 68
    :pswitch_2
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/c3;->p(Ljava/lang/Object;II)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_1

    .line 73
    .line 74
    mul-int/lit8 v2, v2, 0x35

    .line 75
    .line 76
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/c3;->t(Ljava/lang/Object;J)I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    goto/16 :goto_3

    .line 81
    .line 82
    :pswitch_3
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/c3;->p(Ljava/lang/Object;II)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_1

    .line 87
    .line 88
    mul-int/lit8 v2, v2, 0x35

    .line 89
    .line 90
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/c3;->y(Ljava/lang/Object;J)J

    .line 91
    .line 92
    .line 93
    move-result-wide v3

    .line 94
    sget-object v5, Lcom/google/android/gms/internal/auth/f2;->d:[B

    .line 95
    .line 96
    goto/16 :goto_2

    .line 97
    .line 98
    :pswitch_4
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/c3;->p(Ljava/lang/Object;II)Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-eqz v3, :cond_1

    .line 103
    .line 104
    mul-int/lit8 v2, v2, 0x35

    .line 105
    .line 106
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/c3;->t(Ljava/lang/Object;J)I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    goto/16 :goto_3

    .line 111
    .line 112
    :pswitch_5
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/c3;->p(Ljava/lang/Object;II)Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-eqz v3, :cond_1

    .line 117
    .line 118
    mul-int/lit8 v2, v2, 0x35

    .line 119
    .line 120
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/c3;->t(Ljava/lang/Object;J)I

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    goto/16 :goto_3

    .line 125
    .line 126
    :pswitch_6
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/c3;->p(Ljava/lang/Object;II)Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    if-eqz v3, :cond_1

    .line 131
    .line 132
    mul-int/lit8 v2, v2, 0x35

    .line 133
    .line 134
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/c3;->t(Ljava/lang/Object;J)I

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    goto/16 :goto_3

    .line 139
    .line 140
    :pswitch_7
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/c3;->p(Ljava/lang/Object;II)Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    if-eqz v3, :cond_1

    .line 145
    .line 146
    mul-int/lit8 v2, v2, 0x35

    .line 147
    .line 148
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    goto/16 :goto_3

    .line 157
    .line 158
    :pswitch_8
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/c3;->p(Ljava/lang/Object;II)Z

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    if-eqz v3, :cond_1

    .line 163
    .line 164
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    mul-int/lit8 v2, v2, 0x35

    .line 169
    .line 170
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    goto/16 :goto_3

    .line 175
    .line 176
    :pswitch_9
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/c3;->p(Ljava/lang/Object;II)Z

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    if-eqz v3, :cond_1

    .line 181
    .line 182
    mul-int/lit8 v2, v2, 0x35

    .line 183
    .line 184
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    check-cast v3, Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    goto/16 :goto_3

    .line 195
    .line 196
    :pswitch_a
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/c3;->p(Ljava/lang/Object;II)Z

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    if-eqz v3, :cond_1

    .line 201
    .line 202
    mul-int/lit8 v2, v2, 0x35

    .line 203
    .line 204
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    check-cast v3, Ljava/lang/Boolean;

    .line 209
    .line 210
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    invoke-static {v3}, Lcom/google/android/gms/internal/auth/f2;->a(Z)I

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    goto/16 :goto_3

    .line 219
    .line 220
    :pswitch_b
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/c3;->p(Ljava/lang/Object;II)Z

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    if-eqz v3, :cond_1

    .line 225
    .line 226
    mul-int/lit8 v2, v2, 0x35

    .line 227
    .line 228
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/c3;->t(Ljava/lang/Object;J)I

    .line 229
    .line 230
    .line 231
    move-result v3

    .line 232
    goto/16 :goto_3

    .line 233
    .line 234
    :pswitch_c
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/c3;->p(Ljava/lang/Object;II)Z

    .line 235
    .line 236
    .line 237
    move-result v3

    .line 238
    if-eqz v3, :cond_1

    .line 239
    .line 240
    mul-int/lit8 v2, v2, 0x35

    .line 241
    .line 242
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/c3;->y(Ljava/lang/Object;J)J

    .line 243
    .line 244
    .line 245
    move-result-wide v3

    .line 246
    sget-object v5, Lcom/google/android/gms/internal/auth/f2;->d:[B

    .line 247
    .line 248
    goto/16 :goto_2

    .line 249
    .line 250
    :pswitch_d
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/c3;->p(Ljava/lang/Object;II)Z

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    if-eqz v3, :cond_1

    .line 255
    .line 256
    mul-int/lit8 v2, v2, 0x35

    .line 257
    .line 258
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/c3;->t(Ljava/lang/Object;J)I

    .line 259
    .line 260
    .line 261
    move-result v3

    .line 262
    goto/16 :goto_3

    .line 263
    .line 264
    :pswitch_e
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/c3;->p(Ljava/lang/Object;II)Z

    .line 265
    .line 266
    .line 267
    move-result v3

    .line 268
    if-eqz v3, :cond_1

    .line 269
    .line 270
    mul-int/lit8 v2, v2, 0x35

    .line 271
    .line 272
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/c3;->y(Ljava/lang/Object;J)J

    .line 273
    .line 274
    .line 275
    move-result-wide v3

    .line 276
    sget-object v5, Lcom/google/android/gms/internal/auth/f2;->d:[B

    .line 277
    .line 278
    goto/16 :goto_2

    .line 279
    .line 280
    :pswitch_f
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/c3;->p(Ljava/lang/Object;II)Z

    .line 281
    .line 282
    .line 283
    move-result v3

    .line 284
    if-eqz v3, :cond_1

    .line 285
    .line 286
    mul-int/lit8 v2, v2, 0x35

    .line 287
    .line 288
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/c3;->y(Ljava/lang/Object;J)J

    .line 289
    .line 290
    .line 291
    move-result-wide v3

    .line 292
    sget-object v5, Lcom/google/android/gms/internal/auth/f2;->d:[B

    .line 293
    .line 294
    goto/16 :goto_2

    .line 295
    .line 296
    :pswitch_10
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/c3;->p(Ljava/lang/Object;II)Z

    .line 297
    .line 298
    .line 299
    move-result v3

    .line 300
    if-eqz v3, :cond_1

    .line 301
    .line 302
    mul-int/lit8 v2, v2, 0x35

    .line 303
    .line 304
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v3

    .line 308
    check-cast v3, Ljava/lang/Float;

    .line 309
    .line 310
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 311
    .line 312
    .line 313
    move-result v3

    .line 314
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 315
    .line 316
    .line 317
    move-result v3

    .line 318
    goto/16 :goto_3

    .line 319
    .line 320
    :pswitch_11
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/c3;->p(Ljava/lang/Object;II)Z

    .line 321
    .line 322
    .line 323
    move-result v3

    .line 324
    if-eqz v3, :cond_1

    .line 325
    .line 326
    mul-int/lit8 v2, v2, 0x35

    .line 327
    .line 328
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v3

    .line 332
    check-cast v3, Ljava/lang/Double;

    .line 333
    .line 334
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 335
    .line 336
    .line 337
    move-result-wide v3

    .line 338
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 339
    .line 340
    .line 341
    move-result-wide v3

    .line 342
    sget-object v5, Lcom/google/android/gms/internal/auth/f2;->d:[B

    .line 343
    .line 344
    goto/16 :goto_2

    .line 345
    .line 346
    :pswitch_12
    mul-int/lit8 v2, v2, 0x35

    .line 347
    .line 348
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v3

    .line 352
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 353
    .line 354
    .line 355
    move-result v3

    .line 356
    goto/16 :goto_3

    .line 357
    .line 358
    :pswitch_13
    mul-int/lit8 v2, v2, 0x35

    .line 359
    .line 360
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v3

    .line 364
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 365
    .line 366
    .line 367
    move-result v3

    .line 368
    goto/16 :goto_3

    .line 369
    .line 370
    :pswitch_14
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v3

    .line 374
    if-eqz v3, :cond_0

    .line 375
    .line 376
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 377
    .line 378
    .line 379
    move-result v7

    .line 380
    goto :goto_1

    .line 381
    :pswitch_15
    mul-int/lit8 v2, v2, 0x35

    .line 382
    .line 383
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->d(Ljava/lang/Object;J)J

    .line 384
    .line 385
    .line 386
    move-result-wide v3

    .line 387
    sget-object v5, Lcom/google/android/gms/internal/auth/f2;->d:[B

    .line 388
    .line 389
    goto/16 :goto_2

    .line 390
    .line 391
    :pswitch_16
    mul-int/lit8 v2, v2, 0x35

    .line 392
    .line 393
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->c(Ljava/lang/Object;J)I

    .line 394
    .line 395
    .line 396
    move-result v3

    .line 397
    goto/16 :goto_3

    .line 398
    .line 399
    :pswitch_17
    mul-int/lit8 v2, v2, 0x35

    .line 400
    .line 401
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->d(Ljava/lang/Object;J)J

    .line 402
    .line 403
    .line 404
    move-result-wide v3

    .line 405
    sget-object v5, Lcom/google/android/gms/internal/auth/f2;->d:[B

    .line 406
    .line 407
    goto/16 :goto_2

    .line 408
    .line 409
    :pswitch_18
    mul-int/lit8 v2, v2, 0x35

    .line 410
    .line 411
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->c(Ljava/lang/Object;J)I

    .line 412
    .line 413
    .line 414
    move-result v3

    .line 415
    goto/16 :goto_3

    .line 416
    .line 417
    :pswitch_19
    mul-int/lit8 v2, v2, 0x35

    .line 418
    .line 419
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->c(Ljava/lang/Object;J)I

    .line 420
    .line 421
    .line 422
    move-result v3

    .line 423
    goto/16 :goto_3

    .line 424
    .line 425
    :pswitch_1a
    mul-int/lit8 v2, v2, 0x35

    .line 426
    .line 427
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->c(Ljava/lang/Object;J)I

    .line 428
    .line 429
    .line 430
    move-result v3

    .line 431
    goto/16 :goto_3

    .line 432
    .line 433
    :pswitch_1b
    mul-int/lit8 v2, v2, 0x35

    .line 434
    .line 435
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v3

    .line 439
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 440
    .line 441
    .line 442
    move-result v3

    .line 443
    goto/16 :goto_3

    .line 444
    .line 445
    :pswitch_1c
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object v3

    .line 449
    if-eqz v3, :cond_0

    .line 450
    .line 451
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 452
    .line 453
    .line 454
    move-result v7

    .line 455
    :cond_0
    :goto_1
    mul-int/lit8 v2, v2, 0x35

    .line 456
    .line 457
    add-int/2addr v2, v7

    .line 458
    goto :goto_4

    .line 459
    :pswitch_1d
    mul-int/lit8 v2, v2, 0x35

    .line 460
    .line 461
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v3

    .line 465
    check-cast v3, Ljava/lang/String;

    .line 466
    .line 467
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 468
    .line 469
    .line 470
    move-result v3

    .line 471
    goto :goto_3

    .line 472
    :pswitch_1e
    mul-int/lit8 v2, v2, 0x35

    .line 473
    .line 474
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->t(Ljava/lang/Object;J)Z

    .line 475
    .line 476
    .line 477
    move-result v3

    .line 478
    invoke-static {v3}, Lcom/google/android/gms/internal/auth/f2;->a(Z)I

    .line 479
    .line 480
    .line 481
    move-result v3

    .line 482
    goto :goto_3

    .line 483
    :pswitch_1f
    mul-int/lit8 v2, v2, 0x35

    .line 484
    .line 485
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->c(Ljava/lang/Object;J)I

    .line 486
    .line 487
    .line 488
    move-result v3

    .line 489
    goto :goto_3

    .line 490
    :pswitch_20
    mul-int/lit8 v2, v2, 0x35

    .line 491
    .line 492
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->d(Ljava/lang/Object;J)J

    .line 493
    .line 494
    .line 495
    move-result-wide v3

    .line 496
    sget-object v5, Lcom/google/android/gms/internal/auth/f2;->d:[B

    .line 497
    .line 498
    goto :goto_2

    .line 499
    :pswitch_21
    mul-int/lit8 v2, v2, 0x35

    .line 500
    .line 501
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->c(Ljava/lang/Object;J)I

    .line 502
    .line 503
    .line 504
    move-result v3

    .line 505
    goto :goto_3

    .line 506
    :pswitch_22
    mul-int/lit8 v2, v2, 0x35

    .line 507
    .line 508
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->d(Ljava/lang/Object;J)J

    .line 509
    .line 510
    .line 511
    move-result-wide v3

    .line 512
    sget-object v5, Lcom/google/android/gms/internal/auth/f2;->d:[B

    .line 513
    .line 514
    goto :goto_2

    .line 515
    :pswitch_23
    mul-int/lit8 v2, v2, 0x35

    .line 516
    .line 517
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->d(Ljava/lang/Object;J)J

    .line 518
    .line 519
    .line 520
    move-result-wide v3

    .line 521
    sget-object v5, Lcom/google/android/gms/internal/auth/f2;->d:[B

    .line 522
    .line 523
    goto :goto_2

    .line 524
    :pswitch_24
    mul-int/lit8 v2, v2, 0x35

    .line 525
    .line 526
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->b(Ljava/lang/Object;J)F

    .line 527
    .line 528
    .line 529
    move-result v3

    .line 530
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 531
    .line 532
    .line 533
    move-result v3

    .line 534
    goto :goto_3

    .line 535
    :pswitch_25
    mul-int/lit8 v2, v2, 0x35

    .line 536
    .line 537
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->a(Ljava/lang/Object;J)D

    .line 538
    .line 539
    .line 540
    move-result-wide v3

    .line 541
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 542
    .line 543
    .line 544
    move-result-wide v3

    .line 545
    sget-object v5, Lcom/google/android/gms/internal/auth/f2;->d:[B

    .line 546
    .line 547
    :goto_2
    ushr-long v5, v3, v8

    .line 548
    .line 549
    xor-long/2addr v3, v5

    .line 550
    long-to-int v3, v3

    .line 551
    :goto_3
    add-int/2addr v2, v3

    .line 552
    :cond_1
    :goto_4
    add-int/lit8 v1, v1, 0x3

    .line 553
    .line 554
    goto/16 :goto_0

    .line 555
    .line 556
    :cond_2
    mul-int/lit8 v2, v2, 0x35

    .line 557
    .line 558
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/c3;->j:Lcom/google/android/gms/internal/auth/p3;

    .line 559
    .line 560
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/p3;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    .line 562
    .line 563
    move-result-object p1

    .line 564
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 565
    .line 566
    .line 567
    move-result p1

    .line 568
    add-int/2addr v2, p1

    .line 569
    return v2

    .line 570
    nop

    .line 571
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Ljava/lang/Object;[BIILcom/google/android/gms/internal/auth/d1;)V
    .locals 7

    .line 1
    const/4 v5, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    move-object v6, p5

    .line 8
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/auth/c3;->q(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/auth/d1;)I

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/auth/c3;->F(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/auth/c3;->a:[I

    .line 9
    .line 10
    array-length v1, v1

    .line 11
    if-ge v0, v1, :cond_1

    .line 12
    .line 13
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/auth/c3;->x(I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const v2, 0xfffff

    .line 18
    .line 19
    .line 20
    and-int/2addr v2, v1

    .line 21
    iget-object v3, p0, Lcom/google/android/gms/internal/auth/c3;->a:[I

    .line 22
    .line 23
    aget v3, v3, v0

    .line 24
    .line 25
    invoke-static {v1}, Lcom/google/android/gms/internal/auth/c3;->w(I)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    int-to-long v4, v2

    .line 30
    packed-switch v1, :pswitch_data_0

    .line 31
    .line 32
    .line 33
    goto/16 :goto_1

    .line 34
    .line 35
    :pswitch_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/auth/c3;->H(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 36
    .line 37
    .line 38
    goto/16 :goto_1

    .line 39
    .line 40
    :pswitch_1
    invoke-direct {p0, p2, v3, v0}, Lcom/google/android/gms/internal/auth/c3;->p(Ljava/lang/Object;II)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/a4;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/auth/a4;->p(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/auth/c3;->b(Ljava/lang/Object;II)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_1

    .line 57
    .line 58
    :pswitch_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/auth/c3;->H(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 59
    .line 60
    .line 61
    goto/16 :goto_1

    .line 62
    .line 63
    :pswitch_3
    invoke-direct {p0, p2, v3, v0}, Lcom/google/android/gms/internal/auth/c3;->p(Ljava/lang/Object;II)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_0

    .line 68
    .line 69
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/a4;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/auth/a4;->p(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/auth/c3;->b(Ljava/lang/Object;II)V

    .line 77
    .line 78
    .line 79
    goto/16 :goto_1

    .line 80
    .line 81
    :pswitch_4
    sget v1, Lcom/google/android/gms/internal/auth/m3;->d:I

    .line 82
    .line 83
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/auth/a4;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/a4;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/auth/t2;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/auth/a4;->p(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_1

    .line 99
    .line 100
    :pswitch_5
    iget-object v1, p0, Lcom/google/android/gms/internal/auth/c3;->i:Lcom/google/android/gms/internal/auth/o2;

    .line 101
    .line 102
    invoke-virtual {v1, p1, p2, v4, v5}, Lcom/google/android/gms/internal/auth/o2;->b(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 103
    .line 104
    .line 105
    goto/16 :goto_1

    .line 106
    .line 107
    :pswitch_6
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/auth/c3;->G(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 108
    .line 109
    .line 110
    goto/16 :goto_1

    .line 111
    .line 112
    :pswitch_7
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/c3;->l(Ljava/lang/Object;I)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_0

    .line 117
    .line 118
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/a4;->d(Ljava/lang/Object;J)J

    .line 119
    .line 120
    .line 121
    move-result-wide v1

    .line 122
    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/auth/a4;->o(Ljava/lang/Object;JJ)V

    .line 123
    .line 124
    .line 125
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/c3;->I(Ljava/lang/Object;I)V

    .line 126
    .line 127
    .line 128
    goto/16 :goto_1

    .line 129
    .line 130
    :pswitch_8
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/c3;->l(Ljava/lang/Object;I)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_0

    .line 135
    .line 136
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/a4;->c(Ljava/lang/Object;J)I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/auth/a4;->n(Ljava/lang/Object;JI)V

    .line 141
    .line 142
    .line 143
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/c3;->I(Ljava/lang/Object;I)V

    .line 144
    .line 145
    .line 146
    goto/16 :goto_1

    .line 147
    .line 148
    :pswitch_9
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/c3;->l(Ljava/lang/Object;I)Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-eqz v1, :cond_0

    .line 153
    .line 154
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/a4;->d(Ljava/lang/Object;J)J

    .line 155
    .line 156
    .line 157
    move-result-wide v1

    .line 158
    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/auth/a4;->o(Ljava/lang/Object;JJ)V

    .line 159
    .line 160
    .line 161
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/c3;->I(Ljava/lang/Object;I)V

    .line 162
    .line 163
    .line 164
    goto/16 :goto_1

    .line 165
    .line 166
    :pswitch_a
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/c3;->l(Ljava/lang/Object;I)Z

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-eqz v1, :cond_0

    .line 171
    .line 172
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/a4;->c(Ljava/lang/Object;J)I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/auth/a4;->n(Ljava/lang/Object;JI)V

    .line 177
    .line 178
    .line 179
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/c3;->I(Ljava/lang/Object;I)V

    .line 180
    .line 181
    .line 182
    goto/16 :goto_1

    .line 183
    .line 184
    :pswitch_b
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/c3;->l(Ljava/lang/Object;I)Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-eqz v1, :cond_0

    .line 189
    .line 190
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/a4;->c(Ljava/lang/Object;J)I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/auth/a4;->n(Ljava/lang/Object;JI)V

    .line 195
    .line 196
    .line 197
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/c3;->I(Ljava/lang/Object;I)V

    .line 198
    .line 199
    .line 200
    goto/16 :goto_1

    .line 201
    .line 202
    :pswitch_c
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/c3;->l(Ljava/lang/Object;I)Z

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-eqz v1, :cond_0

    .line 207
    .line 208
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/a4;->c(Ljava/lang/Object;J)I

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/auth/a4;->n(Ljava/lang/Object;JI)V

    .line 213
    .line 214
    .line 215
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/c3;->I(Ljava/lang/Object;I)V

    .line 216
    .line 217
    .line 218
    goto/16 :goto_1

    .line 219
    .line 220
    :pswitch_d
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/c3;->l(Ljava/lang/Object;I)Z

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_0

    .line 225
    .line 226
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/a4;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/auth/a4;->p(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/c3;->I(Ljava/lang/Object;I)V

    .line 234
    .line 235
    .line 236
    goto/16 :goto_1

    .line 237
    .line 238
    :pswitch_e
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/auth/c3;->G(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 239
    .line 240
    .line 241
    goto/16 :goto_1

    .line 242
    .line 243
    :pswitch_f
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/c3;->l(Ljava/lang/Object;I)Z

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    if-eqz v1, :cond_0

    .line 248
    .line 249
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/a4;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/auth/a4;->p(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/c3;->I(Ljava/lang/Object;I)V

    .line 257
    .line 258
    .line 259
    goto/16 :goto_1

    .line 260
    .line 261
    :pswitch_10
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/c3;->l(Ljava/lang/Object;I)Z

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    if-eqz v1, :cond_0

    .line 266
    .line 267
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/a4;->t(Ljava/lang/Object;J)Z

    .line 268
    .line 269
    .line 270
    move-result v1

    .line 271
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/auth/a4;->k(Ljava/lang/Object;JZ)V

    .line 272
    .line 273
    .line 274
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/c3;->I(Ljava/lang/Object;I)V

    .line 275
    .line 276
    .line 277
    goto/16 :goto_1

    .line 278
    .line 279
    :pswitch_11
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/c3;->l(Ljava/lang/Object;I)Z

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    if-eqz v1, :cond_0

    .line 284
    .line 285
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/a4;->c(Ljava/lang/Object;J)I

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/auth/a4;->n(Ljava/lang/Object;JI)V

    .line 290
    .line 291
    .line 292
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/c3;->I(Ljava/lang/Object;I)V

    .line 293
    .line 294
    .line 295
    goto :goto_1

    .line 296
    :pswitch_12
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/c3;->l(Ljava/lang/Object;I)Z

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    if-eqz v1, :cond_0

    .line 301
    .line 302
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/a4;->d(Ljava/lang/Object;J)J

    .line 303
    .line 304
    .line 305
    move-result-wide v1

    .line 306
    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/auth/a4;->o(Ljava/lang/Object;JJ)V

    .line 307
    .line 308
    .line 309
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/c3;->I(Ljava/lang/Object;I)V

    .line 310
    .line 311
    .line 312
    goto :goto_1

    .line 313
    :pswitch_13
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/c3;->l(Ljava/lang/Object;I)Z

    .line 314
    .line 315
    .line 316
    move-result v1

    .line 317
    if-eqz v1, :cond_0

    .line 318
    .line 319
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/a4;->c(Ljava/lang/Object;J)I

    .line 320
    .line 321
    .line 322
    move-result v1

    .line 323
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/auth/a4;->n(Ljava/lang/Object;JI)V

    .line 324
    .line 325
    .line 326
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/c3;->I(Ljava/lang/Object;I)V

    .line 327
    .line 328
    .line 329
    goto :goto_1

    .line 330
    :pswitch_14
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/c3;->l(Ljava/lang/Object;I)Z

    .line 331
    .line 332
    .line 333
    move-result v1

    .line 334
    if-eqz v1, :cond_0

    .line 335
    .line 336
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/a4;->d(Ljava/lang/Object;J)J

    .line 337
    .line 338
    .line 339
    move-result-wide v1

    .line 340
    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/auth/a4;->o(Ljava/lang/Object;JJ)V

    .line 341
    .line 342
    .line 343
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/c3;->I(Ljava/lang/Object;I)V

    .line 344
    .line 345
    .line 346
    goto :goto_1

    .line 347
    :pswitch_15
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/c3;->l(Ljava/lang/Object;I)Z

    .line 348
    .line 349
    .line 350
    move-result v1

    .line 351
    if-eqz v1, :cond_0

    .line 352
    .line 353
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/a4;->d(Ljava/lang/Object;J)J

    .line 354
    .line 355
    .line 356
    move-result-wide v1

    .line 357
    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/auth/a4;->o(Ljava/lang/Object;JJ)V

    .line 358
    .line 359
    .line 360
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/c3;->I(Ljava/lang/Object;I)V

    .line 361
    .line 362
    .line 363
    goto :goto_1

    .line 364
    :pswitch_16
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/c3;->l(Ljava/lang/Object;I)Z

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    if-eqz v1, :cond_0

    .line 369
    .line 370
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/a4;->b(Ljava/lang/Object;J)F

    .line 371
    .line 372
    .line 373
    move-result v1

    .line 374
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/auth/a4;->m(Ljava/lang/Object;JF)V

    .line 375
    .line 376
    .line 377
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/c3;->I(Ljava/lang/Object;I)V

    .line 378
    .line 379
    .line 380
    goto :goto_1

    .line 381
    :pswitch_17
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/c3;->l(Ljava/lang/Object;I)Z

    .line 382
    .line 383
    .line 384
    move-result v1

    .line 385
    if-eqz v1, :cond_0

    .line 386
    .line 387
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/a4;->a(Ljava/lang/Object;J)D

    .line 388
    .line 389
    .line 390
    move-result-wide v1

    .line 391
    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/auth/a4;->l(Ljava/lang/Object;JD)V

    .line 392
    .line 393
    .line 394
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/c3;->I(Ljava/lang/Object;I)V

    .line 395
    .line 396
    .line 397
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    .line 398
    .line 399
    goto/16 :goto_0

    .line 400
    .line 401
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/c3;->j:Lcom/google/android/gms/internal/auth/p3;

    .line 402
    .line 403
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/auth/m3;->c(Lcom/google/android/gms/internal/auth/p3;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 404
    .line 405
    .line 406
    return-void

    .line 407
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Ljava/lang/Object;)Z
    .locals 17

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    const/4 v8, 0x0

    .line 6
    const v9, 0xfffff

    .line 7
    .line 8
    .line 9
    move v1, v8

    .line 10
    move v10, v1

    .line 11
    move v0, v9

    .line 12
    :goto_0
    iget v2, v6, Lcom/google/android/gms/internal/auth/c3;->g:I

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    if-ge v10, v2, :cond_b

    .line 16
    .line 17
    iget-object v2, v6, Lcom/google/android/gms/internal/auth/c3;->f:[I

    .line 18
    .line 19
    aget v11, v2, v10

    .line 20
    .line 21
    iget-object v2, v6, Lcom/google/android/gms/internal/auth/c3;->a:[I

    .line 22
    .line 23
    aget v12, v2, v11

    .line 24
    .line 25
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/auth/c3;->x(I)I

    .line 26
    .line 27
    .line 28
    move-result v13

    .line 29
    iget-object v2, v6, Lcom/google/android/gms/internal/auth/c3;->a:[I

    .line 30
    .line 31
    add-int/lit8 v4, v11, 0x2

    .line 32
    .line 33
    aget v2, v2, v4

    .line 34
    .line 35
    and-int v4, v2, v9

    .line 36
    .line 37
    ushr-int/lit8 v2, v2, 0x14

    .line 38
    .line 39
    shl-int v14, v3, v2

    .line 40
    .line 41
    if-eq v4, v0, :cond_1

    .line 42
    .line 43
    if-eq v4, v9, :cond_0

    .line 44
    .line 45
    int-to-long v0, v4

    .line 46
    sget-object v2, Lcom/google/android/gms/internal/auth/c3;->o:Lsun/misc/Unsafe;

    .line 47
    .line 48
    invoke-virtual {v2, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    :cond_0
    move/from16 v16, v1

    .line 53
    .line 54
    move v15, v4

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    move v15, v0

    .line 57
    move/from16 v16, v1

    .line 58
    .line 59
    :goto_1
    const/high16 v0, 0x10000000

    .line 60
    .line 61
    and-int/2addr v0, v13

    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    move-object/from16 v0, p0

    .line 65
    .line 66
    move-object/from16 v1, p1

    .line 67
    .line 68
    move v2, v11

    .line 69
    move v3, v15

    .line 70
    move/from16 v4, v16

    .line 71
    .line 72
    move v5, v14

    .line 73
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/auth/c3;->m(Ljava/lang/Object;IIII)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_2
    return v8

    .line 81
    :cond_3
    :goto_2
    invoke-static {v13}, Lcom/google/android/gms/internal/auth/c3;->w(I)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    const/16 v1, 0x9

    .line 86
    .line 87
    if-eq v0, v1, :cond_9

    .line 88
    .line 89
    const/16 v1, 0x11

    .line 90
    .line 91
    if-eq v0, v1, :cond_9

    .line 92
    .line 93
    const/16 v1, 0x1b

    .line 94
    .line 95
    if-eq v0, v1, :cond_7

    .line 96
    .line 97
    const/16 v1, 0x3c

    .line 98
    .line 99
    if-eq v0, v1, :cond_6

    .line 100
    .line 101
    const/16 v1, 0x44

    .line 102
    .line 103
    if-eq v0, v1, :cond_6

    .line 104
    .line 105
    const/16 v1, 0x31

    .line 106
    .line 107
    if-eq v0, v1, :cond_7

    .line 108
    .line 109
    const/16 v1, 0x32

    .line 110
    .line 111
    if-eq v0, v1, :cond_4

    .line 112
    .line 113
    goto/16 :goto_4

    .line 114
    .line 115
    :cond_4
    and-int v0, v13, v9

    .line 116
    .line 117
    int-to-long v0, v0

    .line 118
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/auth/a4;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    check-cast v0, Lcom/google/android/gms/internal/auth/s2;

    .line 123
    .line 124
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_5

    .line 129
    .line 130
    goto :goto_4

    .line 131
    :cond_5
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/auth/c3;->B(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-static {v0}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    const/4 v0, 0x0

    .line 139
    throw v0

    .line 140
    :cond_6
    invoke-direct {v6, v7, v12, v11}, Lcom/google/android/gms/internal/auth/c3;->p(Ljava/lang/Object;II)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_a

    .line 145
    .line 146
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/auth/c3;->A(I)Lcom/google/android/gms/internal/auth/k3;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-static {v7, v13, v0}, Lcom/google/android/gms/internal/auth/c3;->n(Ljava/lang/Object;ILcom/google/android/gms/internal/auth/k3;)Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-nez v0, :cond_a

    .line 155
    .line 156
    return v8

    .line 157
    :cond_7
    and-int v0, v13, v9

    .line 158
    .line 159
    int-to-long v0, v0

    .line 160
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/auth/a4;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    check-cast v0, Ljava/util/List;

    .line 165
    .line 166
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-nez v1, :cond_a

    .line 171
    .line 172
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/auth/c3;->A(I)Lcom/google/android/gms/internal/auth/k3;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    move v2, v8

    .line 177
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    if-ge v2, v3, :cond_a

    .line 182
    .line 183
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/auth/k3;->f(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    if-nez v3, :cond_8

    .line 192
    .line 193
    return v8

    .line 194
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_9
    move-object/from16 v0, p0

    .line 198
    .line 199
    move-object/from16 v1, p1

    .line 200
    .line 201
    move v2, v11

    .line 202
    move v3, v15

    .line 203
    move/from16 v4, v16

    .line 204
    .line 205
    move v5, v14

    .line 206
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/auth/c3;->m(Ljava/lang/Object;IIII)Z

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    if-eqz v0, :cond_a

    .line 211
    .line 212
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/auth/c3;->A(I)Lcom/google/android/gms/internal/auth/k3;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-static {v7, v13, v0}, Lcom/google/android/gms/internal/auth/c3;->n(Ljava/lang/Object;ILcom/google/android/gms/internal/auth/k3;)Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    if-nez v0, :cond_a

    .line 221
    .line 222
    return v8

    .line 223
    :cond_a
    :goto_4
    add-int/lit8 v10, v10, 0x1

    .line 224
    .line 225
    move v0, v15

    .line 226
    move/from16 v1, v16

    .line 227
    .line 228
    goto/16 :goto_0

    .line 229
    .line 230
    :cond_b
    return v3
.end method

.method public final g()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/c3;->e:Lcom/google/android/gms/internal/auth/y2;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/auth/b2;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/b2;->c()Lcom/google/android/gms/internal/auth/b2;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final h(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/c3;->a:[I

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    :goto_0
    if-ge v2, v0, :cond_2

    .line 7
    .line 8
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/auth/c3;->x(I)I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const v4, 0xfffff

    .line 13
    .line 14
    .line 15
    and-int v5, v3, v4

    .line 16
    .line 17
    invoke-static {v3}, Lcom/google/android/gms/internal/auth/c3;->w(I)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    int-to-long v5, v5

    .line 22
    packed-switch v3, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    goto/16 :goto_3

    .line 26
    .line 27
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/auth/c3;->u(I)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    and-int/2addr v3, v4

    .line 32
    int-to-long v3, v3

    .line 33
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/auth/a4;->c(Ljava/lang/Object;J)I

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/auth/a4;->c(Ljava/lang/Object;J)I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-ne v7, v3, :cond_0

    .line 42
    .line 43
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/m3;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-nez v3, :cond_1

    .line 56
    .line 57
    goto/16 :goto_2

    .line 58
    .line 59
    :pswitch_1
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/m3;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    goto :goto_1

    .line 72
    :pswitch_2
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/m3;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    :goto_1
    if-nez v3, :cond_1

    .line 85
    .line 86
    goto/16 :goto_2

    .line 87
    .line 88
    :pswitch_3
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/c3;->k(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-eqz v3, :cond_0

    .line 93
    .line 94
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/m3;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_0

    .line 107
    .line 108
    goto/16 :goto_3

    .line 109
    .line 110
    :pswitch_4
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/c3;->k(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-eqz v3, :cond_0

    .line 115
    .line 116
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->d(Ljava/lang/Object;J)J

    .line 117
    .line 118
    .line 119
    move-result-wide v3

    .line 120
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->d(Ljava/lang/Object;J)J

    .line 121
    .line 122
    .line 123
    move-result-wide v5

    .line 124
    cmp-long v3, v3, v5

    .line 125
    .line 126
    if-nez v3, :cond_0

    .line 127
    .line 128
    goto/16 :goto_3

    .line 129
    .line 130
    :pswitch_5
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/c3;->k(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    if-eqz v3, :cond_0

    .line 135
    .line 136
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->c(Ljava/lang/Object;J)I

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->c(Ljava/lang/Object;J)I

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    if-ne v3, v4, :cond_0

    .line 145
    .line 146
    goto/16 :goto_3

    .line 147
    .line 148
    :pswitch_6
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/c3;->k(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    if-eqz v3, :cond_0

    .line 153
    .line 154
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->d(Ljava/lang/Object;J)J

    .line 155
    .line 156
    .line 157
    move-result-wide v3

    .line 158
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->d(Ljava/lang/Object;J)J

    .line 159
    .line 160
    .line 161
    move-result-wide v5

    .line 162
    cmp-long v3, v3, v5

    .line 163
    .line 164
    if-nez v3, :cond_0

    .line 165
    .line 166
    goto/16 :goto_3

    .line 167
    .line 168
    :pswitch_7
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/c3;->k(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    if-eqz v3, :cond_0

    .line 173
    .line 174
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->c(Ljava/lang/Object;J)I

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->c(Ljava/lang/Object;J)I

    .line 179
    .line 180
    .line 181
    move-result v4

    .line 182
    if-ne v3, v4, :cond_0

    .line 183
    .line 184
    goto/16 :goto_3

    .line 185
    .line 186
    :pswitch_8
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/c3;->k(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    if-eqz v3, :cond_0

    .line 191
    .line 192
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->c(Ljava/lang/Object;J)I

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->c(Ljava/lang/Object;J)I

    .line 197
    .line 198
    .line 199
    move-result v4

    .line 200
    if-ne v3, v4, :cond_0

    .line 201
    .line 202
    goto/16 :goto_3

    .line 203
    .line 204
    :pswitch_9
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/c3;->k(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    if-eqz v3, :cond_0

    .line 209
    .line 210
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->c(Ljava/lang/Object;J)I

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->c(Ljava/lang/Object;J)I

    .line 215
    .line 216
    .line 217
    move-result v4

    .line 218
    if-ne v3, v4, :cond_0

    .line 219
    .line 220
    goto/16 :goto_3

    .line 221
    .line 222
    :pswitch_a
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/c3;->k(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    if-eqz v3, :cond_0

    .line 227
    .line 228
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/m3;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v3

    .line 240
    if-eqz v3, :cond_0

    .line 241
    .line 242
    goto/16 :goto_3

    .line 243
    .line 244
    :pswitch_b
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/c3;->k(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 245
    .line 246
    .line 247
    move-result v3

    .line 248
    if-eqz v3, :cond_0

    .line 249
    .line 250
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v4

    .line 258
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/m3;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v3

    .line 262
    if-eqz v3, :cond_0

    .line 263
    .line 264
    goto/16 :goto_3

    .line 265
    .line 266
    :pswitch_c
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/c3;->k(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 267
    .line 268
    .line 269
    move-result v3

    .line 270
    if-eqz v3, :cond_0

    .line 271
    .line 272
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v4

    .line 280
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/m3;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v3

    .line 284
    if-eqz v3, :cond_0

    .line 285
    .line 286
    goto/16 :goto_3

    .line 287
    .line 288
    :pswitch_d
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/c3;->k(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 289
    .line 290
    .line 291
    move-result v3

    .line 292
    if-eqz v3, :cond_0

    .line 293
    .line 294
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->t(Ljava/lang/Object;J)Z

    .line 295
    .line 296
    .line 297
    move-result v3

    .line 298
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->t(Ljava/lang/Object;J)Z

    .line 299
    .line 300
    .line 301
    move-result v4

    .line 302
    if-ne v3, v4, :cond_0

    .line 303
    .line 304
    goto/16 :goto_3

    .line 305
    .line 306
    :pswitch_e
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/c3;->k(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 307
    .line 308
    .line 309
    move-result v3

    .line 310
    if-eqz v3, :cond_0

    .line 311
    .line 312
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->c(Ljava/lang/Object;J)I

    .line 313
    .line 314
    .line 315
    move-result v3

    .line 316
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->c(Ljava/lang/Object;J)I

    .line 317
    .line 318
    .line 319
    move-result v4

    .line 320
    if-ne v3, v4, :cond_0

    .line 321
    .line 322
    goto/16 :goto_3

    .line 323
    .line 324
    :pswitch_f
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/c3;->k(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 325
    .line 326
    .line 327
    move-result v3

    .line 328
    if-eqz v3, :cond_0

    .line 329
    .line 330
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->d(Ljava/lang/Object;J)J

    .line 331
    .line 332
    .line 333
    move-result-wide v3

    .line 334
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->d(Ljava/lang/Object;J)J

    .line 335
    .line 336
    .line 337
    move-result-wide v5

    .line 338
    cmp-long v3, v3, v5

    .line 339
    .line 340
    if-nez v3, :cond_0

    .line 341
    .line 342
    goto/16 :goto_3

    .line 343
    .line 344
    :pswitch_10
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/c3;->k(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 345
    .line 346
    .line 347
    move-result v3

    .line 348
    if-eqz v3, :cond_0

    .line 349
    .line 350
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->c(Ljava/lang/Object;J)I

    .line 351
    .line 352
    .line 353
    move-result v3

    .line 354
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->c(Ljava/lang/Object;J)I

    .line 355
    .line 356
    .line 357
    move-result v4

    .line 358
    if-ne v3, v4, :cond_0

    .line 359
    .line 360
    goto :goto_3

    .line 361
    :pswitch_11
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/c3;->k(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 362
    .line 363
    .line 364
    move-result v3

    .line 365
    if-eqz v3, :cond_0

    .line 366
    .line 367
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->d(Ljava/lang/Object;J)J

    .line 368
    .line 369
    .line 370
    move-result-wide v3

    .line 371
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->d(Ljava/lang/Object;J)J

    .line 372
    .line 373
    .line 374
    move-result-wide v5

    .line 375
    cmp-long v3, v3, v5

    .line 376
    .line 377
    if-nez v3, :cond_0

    .line 378
    .line 379
    goto :goto_3

    .line 380
    :pswitch_12
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/c3;->k(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 381
    .line 382
    .line 383
    move-result v3

    .line 384
    if-eqz v3, :cond_0

    .line 385
    .line 386
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->d(Ljava/lang/Object;J)J

    .line 387
    .line 388
    .line 389
    move-result-wide v3

    .line 390
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->d(Ljava/lang/Object;J)J

    .line 391
    .line 392
    .line 393
    move-result-wide v5

    .line 394
    cmp-long v3, v3, v5

    .line 395
    .line 396
    if-nez v3, :cond_0

    .line 397
    .line 398
    goto :goto_3

    .line 399
    :pswitch_13
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/c3;->k(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 400
    .line 401
    .line 402
    move-result v3

    .line 403
    if-eqz v3, :cond_0

    .line 404
    .line 405
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->b(Ljava/lang/Object;J)F

    .line 406
    .line 407
    .line 408
    move-result v3

    .line 409
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 410
    .line 411
    .line 412
    move-result v3

    .line 413
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->b(Ljava/lang/Object;J)F

    .line 414
    .line 415
    .line 416
    move-result v4

    .line 417
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 418
    .line 419
    .line 420
    move-result v4

    .line 421
    if-ne v3, v4, :cond_0

    .line 422
    .line 423
    goto :goto_3

    .line 424
    :pswitch_14
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/c3;->k(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 425
    .line 426
    .line 427
    move-result v3

    .line 428
    if-eqz v3, :cond_0

    .line 429
    .line 430
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->a(Ljava/lang/Object;J)D

    .line 431
    .line 432
    .line 433
    move-result-wide v3

    .line 434
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 435
    .line 436
    .line 437
    move-result-wide v3

    .line 438
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/a4;->a(Ljava/lang/Object;J)D

    .line 439
    .line 440
    .line 441
    move-result-wide v5

    .line 442
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 443
    .line 444
    .line 445
    move-result-wide v5

    .line 446
    cmp-long v3, v3, v5

    .line 447
    .line 448
    if-nez v3, :cond_0

    .line 449
    .line 450
    goto :goto_3

    .line 451
    :cond_0
    :goto_2
    return v1

    .line 452
    :cond_1
    :goto_3
    add-int/lit8 v2, v2, 0x3

    .line 453
    .line 454
    goto/16 :goto_0

    .line 455
    .line 456
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/c3;->j:Lcom/google/android/gms/internal/auth/p3;

    .line 457
    .line 458
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/p3;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object p1

    .line 462
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/c3;->j:Lcom/google/android/gms/internal/auth/p3;

    .line 463
    .line 464
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/auth/p3;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    move-result-object p2

    .line 468
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 469
    .line 470
    .line 471
    move-result p1

    .line 472
    if-nez p1, :cond_3

    .line 473
    .line 474
    return v1

    .line 475
    :cond_3
    const/4 p1, 0x1

    .line 476
    return p1

    .line 477
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method final q(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/auth/d1;)I
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v15, p2

    move/from16 v14, p4

    move/from16 v13, p5

    move-object/from16 v12, p6

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/auth/c3;->F(Ljava/lang/Object;)V

    sget-object v11, Lcom/google/android/gms/internal/auth/c3;->o:Lsun/misc/Unsafe;

    const/4 v10, 0x0

    move/from16 v1, p3

    move v3, v10

    move v4, v3

    move v5, v4

    const/4 v2, -0x1

    const v6, 0xfffff

    :goto_0
    if-ge v1, v14, :cond_71

    add-int/lit8 v4, v1, 0x1

    .line 2
    aget-byte v1, v15, v1

    if-gez v1, :cond_0

    .line 3
    invoke-static {v1, v15, v4, v12}, Lcom/google/android/gms/internal/auth/e1;->i(I[BILcom/google/android/gms/internal/auth/d1;)I

    move-result v1

    iget v4, v12, Lcom/google/android/gms/internal/auth/d1;->a:I

    goto :goto_1

    :cond_0
    move/from16 v37, v4

    move v4, v1

    move/from16 v1, v37

    :goto_1
    ushr-int/lit8 v8, v4, 0x3

    const/4 v9, 0x3

    if-le v8, v2, :cond_2

    div-int/2addr v3, v9

    iget v2, v0, Lcom/google/android/gms/internal/auth/c3;->c:I

    if-lt v8, v2, :cond_1

    iget v2, v0, Lcom/google/android/gms/internal/auth/c3;->d:I

    if-gt v8, v2, :cond_1

    .line 4
    invoke-direct {v0, v8, v3}, Lcom/google/android/gms/internal/auth/c3;->v(II)I

    move-result v2

    goto :goto_2

    :cond_1
    const/4 v2, -0x1

    goto :goto_2

    .line 5
    :cond_2
    iget v2, v0, Lcom/google/android/gms/internal/auth/c3;->c:I

    if-lt v8, v2, :cond_3

    iget v2, v0, Lcom/google/android/gms/internal/auth/c3;->d:I

    if-gt v8, v2, :cond_3

    .line 6
    invoke-direct {v0, v8, v10}, Lcom/google/android/gms/internal/auth/c3;->v(II)I

    move-result v2

    :goto_2
    move v3, v2

    const/4 v2, -0x1

    goto :goto_3

    :cond_3
    const/4 v2, -0x1

    const/4 v3, -0x1

    :goto_3
    if-ne v3, v2, :cond_4

    move v3, v1

    move/from16 v17, v2

    move/from16 v20, v5

    move/from16 v16, v6

    move/from16 v19, v10

    move-object/from16 v36, v11

    move-object v5, v12

    move v9, v13

    move v10, v8

    move/from16 v8, v19

    goto/16 :goto_34

    :cond_4
    and-int/lit8 v2, v4, 0x7

    .line 7
    iget-object v9, v0, Lcom/google/android/gms/internal/auth/c3;->a:[I

    add-int/lit8 v18, v3, 0x1

    .line 8
    aget v10, v9, v18

    move/from16 v18, v4

    invoke-static {v10}, Lcom/google/android/gms/internal/auth/c3;->w(I)I

    move-result v4

    const v16, 0xfffff

    and-int v13, v10, v16

    int-to-long v13, v13

    move/from16 v20, v8

    const/high16 v21, 0x20000000

    const-wide/16 v22, 0x0

    const-string v8, ""

    move-object/from16 v26, v8

    const/16 v8, 0x11

    if-gt v4, v8, :cond_1c

    add-int/lit8 v8, v3, 0x2

    .line 9
    aget v8, v9, v8

    ushr-int/lit8 v9, v8, 0x14

    const/16 v24, 0x1

    shl-int v28, v24, v9

    const v9, 0xfffff

    and-int/2addr v8, v9

    move/from16 v16, v10

    if-eq v8, v6, :cond_7

    if-eq v6, v9, :cond_5

    int-to-long v9, v6

    .line 10
    invoke-virtual {v11, v7, v9, v10, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const v9, 0xfffff

    :cond_5
    if-ne v8, v9, :cond_6

    const/4 v5, 0x0

    goto :goto_4

    :cond_6
    int-to-long v5, v8

    .line 11
    invoke-virtual {v11, v7, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    :goto_4
    move/from16 v24, v5

    move/from16 v29, v8

    goto :goto_5

    :cond_7
    move/from16 v24, v5

    move/from16 v29, v6

    :goto_5
    packed-switch v4, :pswitch_data_0

    move v10, v3

    const/4 v3, 0x3

    const/4 v8, 0x0

    if-ne v2, v3, :cond_1b

    .line 12
    invoke-direct {v0, v7, v10}, Lcom/google/android/gms/internal/auth/c3;->C(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    shl-int/lit8 v3, v20, 0x3

    or-int/lit8 v13, v3, 0x4

    .line 13
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/auth/c3;->A(I)Lcom/google/android/gms/internal/auth/k3;

    move-result-object v3

    move v5, v8

    move v6, v9

    move/from16 v4, v20

    move-object v8, v2

    const/16 v17, -0x1

    move-object v9, v3

    move/from16 v19, v5

    move v3, v10

    move-object/from16 v10, p2

    move-object v5, v11

    move v11, v1

    move-object v1, v12

    move/from16 v12, p4

    move/from16 v14, p5

    move-object/from16 v14, p6

    .line 14
    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/auth/e1;->l(Ljava/lang/Object;Lcom/google/android/gms/internal/auth/k3;[BIIILcom/google/android/gms/internal/auth/d1;)I

    move-result v8

    .line 15
    invoke-direct {v0, v7, v3, v2}, Lcom/google/android/gms/internal/auth/c3;->i(Ljava/lang/Object;ILjava/lang/Object;)V

    or-int v2, v24, v28

    move/from16 v14, p4

    move/from16 v13, p5

    move-object v12, v1

    move-object v11, v5

    move v1, v8

    move/from16 v10, v19

    move/from16 v6, v29

    move v5, v2

    move v2, v4

    move/from16 v4, v18

    goto/16 :goto_0

    :pswitch_0
    if-nez v2, :cond_8

    .line 16
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/auth/e1;->k([BILcom/google/android/gms/internal/auth/d1;)I

    move-result v8

    iget-wide v1, v12, Lcom/google/android/gms/internal/auth/d1;->b:J

    .line 17
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/auth/t1;->b(J)J

    move-result-wide v5

    move-object v1, v11

    const/4 v10, -0x1

    move-object/from16 v2, p1

    move v10, v3

    move-wide v3, v13

    .line 18
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v5, v24, v28

    move/from16 v14, p4

    move/from16 v13, p5

    move v1, v8

    goto :goto_7

    :cond_8
    move v6, v9

    goto/16 :goto_c

    :pswitch_1
    move v10, v3

    if-nez v2, :cond_18

    .line 19
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/auth/e1;->h([BILcom/google/android/gms/internal/auth/d1;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/auth/d1;->a:I

    .line 20
    invoke-static {v2}, Lcom/google/android/gms/internal/auth/t1;->a(I)I

    move-result v2

    .line 21
    invoke-virtual {v11, v7, v13, v14, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_6

    :pswitch_2
    move v10, v3

    if-nez v2, :cond_18

    .line 22
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/auth/e1;->h([BILcom/google/android/gms/internal/auth/d1;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/auth/d1;->a:I

    .line 23
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/auth/c3;->z(I)Lcom/google/android/gms/internal/auth/c2;

    const/high16 v3, -0x80000000

    and-int v3, v16, v3

    .line 24
    invoke-virtual {v11, v7, v13, v14, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_6

    :pswitch_3
    move v10, v3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_18

    .line 25
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/auth/e1;->a([BILcom/google/android/gms/internal/auth/d1;)I

    move-result v1

    iget-object v2, v12, Lcom/google/android/gms/internal/auth/d1;->c:Ljava/lang/Object;

    .line 26
    invoke-virtual {v11, v7, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_6

    :pswitch_4
    move v10, v3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_18

    .line 27
    invoke-direct {v0, v7, v10}, Lcom/google/android/gms/internal/auth/c3;->C(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    .line 28
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/auth/c3;->A(I)Lcom/google/android/gms/internal/auth/k3;

    move-result-object v2

    move v5, v1

    move-object v1, v8

    move-object/from16 v3, p2

    move v4, v5

    move/from16 v5, p4

    move-object/from16 v6, p6

    .line 29
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/auth/e1;->m(Ljava/lang/Object;Lcom/google/android/gms/internal/auth/k3;[BIILcom/google/android/gms/internal/auth/d1;)I

    move-result v1

    .line 30
    invoke-direct {v0, v7, v10, v8}, Lcom/google/android/gms/internal/auth/c3;->i(Ljava/lang/Object;ILjava/lang/Object;)V

    :goto_6
    or-int v5, v24, v28

    move/from16 v14, p4

    move/from16 v13, p5

    :goto_7
    move v3, v10

    move/from16 v4, v18

    move/from16 v2, v20

    move/from16 v6, v29

    const/4 v10, 0x0

    goto/16 :goto_0

    :pswitch_5
    move v5, v1

    move v10, v3

    const/4 v1, 0x2

    if-ne v2, v1, :cond_17

    and-int v1, v16, v21

    if-eqz v1, :cond_14

    .line 31
    invoke-static {v15, v5, v12}, Lcom/google/android/gms/internal/auth/e1;->h([BILcom/google/android/gms/internal/auth/d1;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/auth/d1;->a:I

    if-ltz v2, :cond_13

    if-nez v2, :cond_9

    move-object/from16 v3, v26

    .line 32
    iput-object v3, v12, Lcom/google/android/gms/internal/auth/d1;->c:Ljava/lang/Object;

    const/4 v8, 0x0

    goto/16 :goto_b

    .line 33
    :cond_9
    sget v3, Lcom/google/android/gms/internal/auth/e4;->b:I

    .line 34
    array-length v3, v15

    sub-int v4, v3, v1

    or-int v5, v1, v2

    sub-int/2addr v4, v2

    or-int/2addr v4, v5

    if-ltz v4, :cond_12

    add-int v3, v1, v2

    .line 35
    new-array v2, v2, [C

    const/4 v4, 0x0

    :goto_8
    if-ge v1, v3, :cond_a

    .line 36
    aget-byte v5, v15, v1

    invoke-static {v5}, Lcom/google/android/gms/internal/auth/b4;->d(B)Z

    move-result v6

    if-eqz v6, :cond_a

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v6, v4, 0x1

    int-to-char v5, v5

    .line 37
    aput-char v5, v2, v4

    move v4, v6

    goto :goto_8

    :cond_a
    :goto_9
    if-ge v1, v3, :cond_11

    add-int/lit8 v5, v1, 0x1

    .line 38
    aget-byte v1, v15, v1

    invoke-static {v1}, Lcom/google/android/gms/internal/auth/b4;->d(B)Z

    move-result v6

    if-eqz v6, :cond_b

    add-int/lit8 v6, v4, 0x1

    int-to-char v1, v1

    .line 39
    aput-char v1, v2, v4

    move v1, v5

    :goto_a
    move v4, v6

    if-ge v1, v3, :cond_a

    .line 40
    aget-byte v5, v15, v1

    invoke-static {v5}, Lcom/google/android/gms/internal/auth/b4;->d(B)Z

    move-result v6

    if-eqz v6, :cond_a

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v6, v4, 0x1

    int-to-char v5, v5

    .line 41
    aput-char v5, v2, v4

    goto :goto_a

    :cond_b
    const/16 v6, -0x20

    if-ge v1, v6, :cond_d

    if-ge v5, v3, :cond_c

    add-int/lit8 v6, v5, 0x1

    .line 42
    aget-byte v5, v15, v5

    add-int/lit8 v8, v4, 0x1

    invoke-static {v1, v5, v2, v4}, Lcom/google/android/gms/internal/auth/b4;->c(BB[CI)V

    move v1, v6

    move v4, v8

    goto :goto_9

    .line 43
    :cond_c
    invoke-static {}, Lcom/google/android/gms/internal/auth/g2;->b()Lcom/google/android/gms/internal/auth/g2;

    move-result-object v1

    throw v1

    :cond_d
    const/16 v6, -0x10

    if-ge v1, v6, :cond_f

    add-int/lit8 v6, v3, -0x1

    if-ge v5, v6, :cond_e

    add-int/lit8 v6, v5, 0x1

    .line 44
    aget-byte v5, v15, v5

    add-int/lit8 v8, v6, 0x1

    aget-byte v6, v15, v6

    add-int/lit8 v16, v4, 0x1

    invoke-static {v1, v5, v6, v2, v4}, Lcom/google/android/gms/internal/auth/b4;->b(BBB[CI)V

    move v1, v8

    move/from16 v4, v16

    goto :goto_9

    .line 45
    :cond_e
    invoke-static {}, Lcom/google/android/gms/internal/auth/g2;->b()Lcom/google/android/gms/internal/auth/g2;

    move-result-object v1

    throw v1

    :cond_f
    add-int/lit8 v6, v3, -0x2

    if-ge v5, v6, :cond_10

    add-int/lit8 v6, v5, 0x1

    .line 46
    aget-byte v31, v15, v5

    add-int/lit8 v5, v6, 0x1

    aget-byte v32, v15, v6

    add-int/lit8 v6, v5, 0x1

    aget-byte v33, v15, v5

    move/from16 v30, v1

    move-object/from16 v34, v2

    move/from16 v35, v4

    invoke-static/range {v30 .. v35}, Lcom/google/android/gms/internal/auth/b4;->a(BBBB[CI)V

    add-int/lit8 v4, v4, 0x2

    move v1, v6

    goto :goto_9

    .line 47
    :cond_10
    invoke-static {}, Lcom/google/android/gms/internal/auth/g2;->b()Lcom/google/android/gms/internal/auth/g2;

    move-result-object v1

    throw v1

    .line 48
    :cond_11
    new-instance v1, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v1, v2, v8, v4}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, v12, Lcom/google/android/gms/internal/auth/d1;->c:Ljava/lang/Object;

    move v1, v3

    goto :goto_b

    .line 49
    :cond_12
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 50
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "buffer length=%d, index=%d, size=%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 51
    :cond_13
    invoke-static {}, Lcom/google/android/gms/internal/auth/g2;->c()Lcom/google/android/gms/internal/auth/g2;

    move-result-object v1

    throw v1

    :cond_14
    move-object/from16 v3, v26

    const/4 v8, 0x0

    .line 52
    invoke-static {v15, v5, v12}, Lcom/google/android/gms/internal/auth/e1;->h([BILcom/google/android/gms/internal/auth/d1;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/auth/d1;->a:I

    if-ltz v2, :cond_16

    if-nez v2, :cond_15

    .line 53
    iput-object v3, v12, Lcom/google/android/gms/internal/auth/d1;->c:Ljava/lang/Object;

    goto :goto_b

    :cond_15
    new-instance v3, Ljava/lang/String;

    .line 54
    sget-object v4, Lcom/google/android/gms/internal/auth/f2;->b:Ljava/nio/charset/Charset;

    invoke-direct {v3, v15, v1, v2, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v3, v12, Lcom/google/android/gms/internal/auth/d1;->c:Ljava/lang/Object;

    add-int/2addr v1, v2

    .line 55
    :goto_b
    iget-object v2, v12, Lcom/google/android/gms/internal/auth/d1;->c:Ljava/lang/Object;

    .line 56
    invoke-virtual {v11, v7, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_e

    .line 57
    :cond_16
    invoke-static {}, Lcom/google/android/gms/internal/auth/g2;->c()Lcom/google/android/gms/internal/auth/g2;

    move-result-object v1

    throw v1

    :cond_17
    move v1, v5

    :cond_18
    move v6, v9

    move v3, v10

    :goto_c
    move-object v5, v11

    move/from16 v4, v20

    const/16 v17, -0x1

    const/16 v19, 0x0

    goto/16 :goto_11

    :pswitch_6
    move v5, v1

    move v10, v3

    const/4 v8, 0x0

    if-nez v2, :cond_1a

    .line 58
    invoke-static {v15, v5, v12}, Lcom/google/android/gms/internal/auth/e1;->k([BILcom/google/android/gms/internal/auth/d1;)I

    move-result v1

    iget-wide v2, v12, Lcom/google/android/gms/internal/auth/d1;->b:J

    cmp-long v2, v2, v22

    if-eqz v2, :cond_19

    const/4 v2, 0x1

    goto :goto_d

    :cond_19
    move v2, v8

    .line 59
    :goto_d
    invoke-static {v7, v13, v14, v2}, Lcom/google/android/gms/internal/auth/a4;->k(Ljava/lang/Object;JZ)V

    goto/16 :goto_e

    :pswitch_7
    move v5, v1

    move v10, v3

    const/4 v1, 0x5

    const/4 v8, 0x0

    if-ne v2, v1, :cond_1a

    .line 60
    invoke-static {v15, v5}, Lcom/google/android/gms/internal/auth/e1;->b([BI)I

    move-result v1

    invoke-virtual {v11, v7, v13, v14, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v5, 0x4

    goto/16 :goto_e

    :pswitch_8
    move v5, v1

    move v10, v3

    const/4 v1, 0x1

    const/4 v8, 0x0

    if-ne v2, v1, :cond_1a

    .line 61
    invoke-static {v15, v5}, Lcom/google/android/gms/internal/auth/e1;->n([BI)J

    move-result-wide v21

    move-object v1, v11

    move-object/from16 v2, p1

    move-wide v3, v13

    move v13, v5

    move-wide/from16 v5, v21

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v1, v13, 0x8

    goto :goto_e

    :cond_1a
    move v1, v5

    goto/16 :goto_10

    :pswitch_9
    move v10, v3

    const/4 v8, 0x0

    if-nez v2, :cond_1b

    .line 62
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/auth/e1;->h([BILcom/google/android/gms/internal/auth/d1;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/auth/d1;->a:I

    .line 63
    invoke-virtual {v11, v7, v13, v14, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_e

    :pswitch_a
    move v10, v3

    const/4 v8, 0x0

    if-nez v2, :cond_1b

    .line 64
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/auth/e1;->k([BILcom/google/android/gms/internal/auth/d1;)I

    move-result v16

    iget-wide v5, v12, Lcom/google/android/gms/internal/auth/d1;->b:J

    move-object v1, v11

    move-object/from16 v2, p1

    move-wide v3, v13

    .line 65
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v5, v24, v28

    move/from16 v14, p4

    move/from16 v13, p5

    move v3, v10

    move/from16 v1, v16

    goto :goto_f

    :pswitch_b
    move v10, v3

    const/4 v3, 0x5

    const/4 v8, 0x0

    if-ne v2, v3, :cond_1b

    .line 66
    invoke-static {v15, v1}, Lcom/google/android/gms/internal/auth/e1;->b([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    .line 67
    invoke-static {v7, v13, v14, v2}, Lcom/google/android/gms/internal/auth/a4;->m(Ljava/lang/Object;JF)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_e

    :pswitch_c
    move v10, v3

    const/4 v3, 0x1

    const/4 v8, 0x0

    if-ne v2, v3, :cond_1b

    .line 68
    invoke-static {v15, v1}, Lcom/google/android/gms/internal/auth/e1;->n([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 69
    invoke-static {v7, v13, v14, v2, v3}, Lcom/google/android/gms/internal/auth/a4;->l(Ljava/lang/Object;JD)V

    add-int/lit8 v1, v1, 0x8

    :goto_e
    or-int v5, v24, v28

    move/from16 v14, p4

    move/from16 v13, p5

    move v3, v10

    :goto_f
    move/from16 v4, v18

    move/from16 v2, v20

    move/from16 v6, v29

    move v10, v8

    goto/16 :goto_0

    :cond_1b
    :goto_10
    move/from16 v19, v8

    move v6, v9

    move v3, v10

    move-object v5, v11

    move/from16 v4, v20

    const/16 v17, -0x1

    :goto_11
    move/from16 v9, p5

    move v8, v3

    move v10, v4

    move-object/from16 v36, v5

    move-object v5, v12

    move/from16 v4, v18

    move/from16 v20, v24

    move/from16 v16, v29

    :goto_12
    move v3, v1

    goto/16 :goto_34

    :cond_1c
    move v8, v3

    move/from16 v16, v10

    move/from16 v10, v20

    move-object/from16 v3, v26

    const/16 v17, -0x1

    const/16 v19, 0x0

    move/from16 v20, v5

    const/16 v5, 0x1b

    const/16 v24, 0xa

    if-ne v4, v5, :cond_20

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1f

    .line 70
    invoke-virtual {v11, v7, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/auth/d2;

    .line 71
    invoke-interface {v2}, Lcom/google/android/gms/internal/auth/d2;->f()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 72
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1d

    goto :goto_13

    :cond_1d
    add-int v24, v3, v3

    :goto_13
    move/from16 v3, v24

    .line 73
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/auth/d2;->j(I)Lcom/google/android/gms/internal/auth/d2;

    move-result-object v2

    .line 74
    invoke-virtual {v11, v7, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1e
    move-object v13, v2

    .line 75
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/auth/c3;->A(I)Lcom/google/android/gms/internal/auth/k3;

    move-result-object v2

    move v5, v8

    move-object v8, v2

    move/from16 v9, v18

    move v2, v10

    move-object/from16 v10, p2

    move-object v3, v11

    move v11, v1

    move-object v4, v12

    move/from16 v12, p4

    move-object/from16 v14, p6

    .line 76
    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/auth/e1;->e(Lcom/google/android/gms/internal/auth/k3;I[BIILcom/google/android/gms/internal/auth/d2;Lcom/google/android/gms/internal/auth/d1;)I

    move-result v1

    move/from16 v14, p4

    move/from16 v13, p5

    move-object v11, v3

    move-object v12, v4

    move v3, v5

    move/from16 v4, v18

    :goto_14
    move/from16 v10, v19

    move/from16 v5, v20

    goto/16 :goto_0

    :cond_1f
    move/from16 v16, v6

    move/from16 v5, v18

    move v6, v1

    move v1, v10

    move v10, v8

    goto/16 :goto_29

    :cond_20
    move v5, v8

    const/16 v8, 0x31

    const/16 v26, 0x0

    if-gt v4, v8, :cond_60

    move/from16 v8, v16

    int-to-long v8, v8

    move/from16 v16, v5

    sget-object v5, Lcom/google/android/gms/internal/auth/c3;->o:Lsun/misc/Unsafe;

    .line 77
    invoke-virtual {v5, v7, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v21

    move/from16 v28, v6

    move-object/from16 v6, v21

    check-cast v6, Lcom/google/android/gms/internal/auth/d2;

    .line 78
    invoke-interface {v6}, Lcom/google/android/gms/internal/auth/d2;->f()Z

    move-result v21

    if-nez v21, :cond_22

    .line 79
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v21

    if-nez v21, :cond_21

    goto :goto_15

    :cond_21
    add-int v24, v21, v21

    :goto_15
    move/from16 v29, v10

    move/from16 v10, v24

    .line 80
    invoke-interface {v6, v10}, Lcom/google/android/gms/internal/auth/d2;->j(I)Lcom/google/android/gms/internal/auth/d2;

    move-result-object v6

    .line 81
    invoke-virtual {v5, v7, v13, v14, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_16

    :cond_22
    move/from16 v29, v10

    :goto_16
    move-object v13, v6

    packed-switch v4, :pswitch_data_1

    move/from16 v14, p4

    move v7, v1

    move/from16 v10, v16

    move/from16 v9, v18

    move/from16 v16, v28

    move/from16 v8, v29

    const/4 v1, 0x3

    if-ne v2, v1, :cond_5d

    .line 82
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/auth/c3;->A(I)Lcom/google/android/gms/internal/auth/k3;

    move-result-object v18

    and-int/lit8 v1, v9, -0x8

    or-int/lit8 v21, v1, 0x4

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    move v3, v7

    move/from16 v4, p4

    move/from16 v5, v21

    move-object/from16 v6, p6

    .line 83
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/auth/e1;->c(Lcom/google/android/gms/internal/auth/k3;[BIIILcom/google/android/gms/internal/auth/d1;)I

    move-result v1

    iget-object v2, v12, Lcom/google/android/gms/internal/auth/d1;->c:Ljava/lang/Object;

    .line 84
    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_d
    const/4 v4, 0x2

    if-ne v2, v4, :cond_25

    .line 85
    invoke-static {v13}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 86
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/auth/e1;->h([BILcom/google/android/gms/internal/auth/d1;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/auth/d1;->a:I

    add-int/2addr v3, v2

    if-lt v2, v3, :cond_24

    if-ne v2, v3, :cond_23

    goto :goto_17

    .line 87
    :cond_23
    invoke-static {}, Lcom/google/android/gms/internal/auth/g2;->f()Lcom/google/android/gms/internal/auth/g2;

    move-result-object v1

    throw v1

    .line 88
    :cond_24
    invoke-static {v15, v2, v12}, Lcom/google/android/gms/internal/auth/e1;->k([BILcom/google/android/gms/internal/auth/d1;)I

    iget-wide v1, v12, Lcom/google/android/gms/internal/auth/d1;->b:J

    .line 89
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/auth/t1;->b(J)J

    throw v26

    :cond_25
    if-eqz v2, :cond_26

    goto :goto_18

    .line 90
    :cond_26
    invoke-static {v13}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 91
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/auth/e1;->k([BILcom/google/android/gms/internal/auth/d1;)I

    iget-wide v1, v12, Lcom/google/android/gms/internal/auth/d1;->b:J

    .line 92
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/auth/t1;->b(J)J

    throw v26

    :pswitch_e
    const/4 v3, 0x2

    if-ne v2, v3, :cond_29

    .line 93
    invoke-static {v13}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 94
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/auth/e1;->h([BILcom/google/android/gms/internal/auth/d1;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/auth/d1;->a:I

    add-int/2addr v3, v2

    if-lt v2, v3, :cond_28

    if-ne v2, v3, :cond_27

    :goto_17
    move/from16 v14, p4

    move v7, v1

    move v1, v2

    move/from16 v10, v16

    move/from16 v9, v18

    move/from16 v16, v28

    move/from16 v8, v29

    goto/16 :goto_28

    .line 95
    :cond_27
    invoke-static {}, Lcom/google/android/gms/internal/auth/g2;->f()Lcom/google/android/gms/internal/auth/g2;

    move-result-object v1

    throw v1

    .line 96
    :cond_28
    invoke-static {v15, v2, v12}, Lcom/google/android/gms/internal/auth/e1;->h([BILcom/google/android/gms/internal/auth/d1;)I

    iget v1, v12, Lcom/google/android/gms/internal/auth/d1;->a:I

    .line 97
    invoke-static {v1}, Lcom/google/android/gms/internal/auth/t1;->a(I)I

    throw v26

    :cond_29
    if-eqz v2, :cond_2a

    :goto_18
    move/from16 v14, p4

    move v7, v1

    move/from16 v10, v16

    move/from16 v9, v18

    move/from16 v16, v28

    goto/16 :goto_1d

    .line 98
    :cond_2a
    invoke-static {v13}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 99
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/auth/e1;->h([BILcom/google/android/gms/internal/auth/d1;)I

    iget v1, v12, Lcom/google/android/gms/internal/auth/d1;->a:I

    .line 100
    invoke-static {v1}, Lcom/google/android/gms/internal/auth/t1;->a(I)I

    throw v26

    :pswitch_f
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2b

    .line 101
    invoke-static {v15, v1, v13, v12}, Lcom/google/android/gms/internal/auth/e1;->f([BILcom/google/android/gms/internal/auth/d2;Lcom/google/android/gms/internal/auth/d1;)I

    move-result v2

    move v14, v1

    move/from16 v10, v16

    move/from16 v16, v28

    goto :goto_19

    :cond_2b
    if-nez v2, :cond_2c

    move v14, v1

    move/from16 v1, v18

    move-object/from16 v2, p2

    move v3, v14

    move/from16 v4, p4

    move/from16 v10, v16

    move-object v5, v13

    move/from16 v16, v28

    move-object/from16 v6, p6

    .line 102
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/auth/e1;->j(I[BIILcom/google/android/gms/internal/auth/d2;Lcom/google/android/gms/internal/auth/d1;)I

    move-result v2

    .line 103
    :goto_19
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/auth/c3;->z(I)Lcom/google/android/gms/internal/auth/c2;

    .line 104
    sget v1, Lcom/google/android/gms/internal/auth/m3;->d:I

    move v1, v2

    move v7, v14

    move/from16 v9, v18

    move/from16 v8, v29

    move/from16 v14, p4

    goto/16 :goto_28

    :cond_2c
    move/from16 v10, v16

    move/from16 v16, v28

    move/from16 v14, p4

    move v7, v1

    move/from16 v9, v18

    goto/16 :goto_1d

    :pswitch_10
    move v14, v1

    move/from16 v10, v16

    move/from16 v16, v28

    const/4 v1, 0x2

    if-ne v2, v1, :cond_35

    .line 105
    invoke-static {v15, v14, v12}, Lcom/google/android/gms/internal/auth/e1;->h([BILcom/google/android/gms/internal/auth/d1;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/auth/d1;->a:I

    if-ltz v2, :cond_34

    .line 106
    array-length v3, v15

    sub-int/2addr v3, v1

    if-gt v2, v3, :cond_33

    if-nez v2, :cond_2d

    .line 107
    sget-object v2, Lcom/google/android/gms/internal/auth/p1;->b:Lcom/google/android/gms/internal/auth/p1;

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 108
    :cond_2d
    invoke-static {v15, v1, v2}, Lcom/google/android/gms/internal/auth/p1;->s([BII)Lcom/google/android/gms/internal/auth/p1;

    move-result-object v3

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v2

    :goto_1a
    move/from16 v6, p4

    :goto_1b
    if-ge v1, v6, :cond_31

    .line 109
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/auth/e1;->h([BILcom/google/android/gms/internal/auth/d1;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/auth/d1;->a:I

    move/from16 v5, v18

    if-ne v5, v3, :cond_32

    .line 110
    invoke-static {v15, v2, v12}, Lcom/google/android/gms/internal/auth/e1;->h([BILcom/google/android/gms/internal/auth/d1;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/auth/d1;->a:I

    if-ltz v2, :cond_30

    .line 111
    array-length v3, v15

    sub-int/2addr v3, v1

    if-gt v2, v3, :cond_2f

    if-nez v2, :cond_2e

    .line 112
    sget-object v2, Lcom/google/android/gms/internal/auth/p1;->b:Lcom/google/android/gms/internal/auth/p1;

    .line 113
    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 114
    :cond_2e
    invoke-static {v15, v1, v2}, Lcom/google/android/gms/internal/auth/p1;->s([BII)Lcom/google/android/gms/internal/auth/p1;

    move-result-object v3

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v2

    :goto_1c
    move/from16 v18, v5

    goto :goto_1b

    .line 115
    :cond_2f
    invoke-static {}, Lcom/google/android/gms/internal/auth/g2;->f()Lcom/google/android/gms/internal/auth/g2;

    move-result-object v1

    throw v1

    .line 116
    :cond_30
    invoke-static {}, Lcom/google/android/gms/internal/auth/g2;->c()Lcom/google/android/gms/internal/auth/g2;

    move-result-object v1

    throw v1

    :cond_31
    move/from16 v5, v18

    :cond_32
    move v9, v5

    move v7, v14

    move/from16 v8, v29

    goto/16 :goto_25

    .line 117
    :cond_33
    invoke-static {}, Lcom/google/android/gms/internal/auth/g2;->f()Lcom/google/android/gms/internal/auth/g2;

    move-result-object v1

    throw v1

    .line 118
    :cond_34
    invoke-static {}, Lcom/google/android/gms/internal/auth/g2;->c()Lcom/google/android/gms/internal/auth/g2;

    move-result-object v1

    throw v1

    :cond_35
    move v7, v14

    move/from16 v9, v18

    move/from16 v8, v29

    move/from16 v14, p4

    goto/16 :goto_27

    :pswitch_11
    move/from16 v6, p4

    move v14, v1

    move/from16 v10, v16

    move/from16 v5, v18

    move/from16 v16, v28

    const/4 v1, 0x2

    if-ne v2, v1, :cond_36

    .line 119
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/auth/c3;->A(I)Lcom/google/android/gms/internal/auth/k3;

    move-result-object v8

    move v9, v5

    move v1, v10

    move/from16 v4, v29

    move-object/from16 v10, p2

    move-object v2, v11

    move v11, v14

    move-object v3, v12

    move/from16 v12, p4

    move v7, v14

    move-object/from16 v14, p6

    .line 120
    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/auth/e1;->e(Lcom/google/android/gms/internal/auth/k3;I[BIILcom/google/android/gms/internal/auth/d2;Lcom/google/android/gms/internal/auth/d1;)I

    move-result v8

    move v10, v1

    move-object v11, v2

    move-object v12, v3

    move v14, v6

    move v1, v8

    move v8, v4

    goto/16 :goto_28

    :cond_36
    move v7, v14

    move v9, v5

    move v14, v6

    :goto_1d
    move/from16 v8, v29

    goto/16 :goto_27

    :pswitch_12
    move/from16 v6, p4

    move v7, v1

    move/from16 v1, v16

    move/from16 v5, v18

    move/from16 v16, v28

    move/from16 v4, v29

    const/4 v10, 0x2

    if-ne v2, v10, :cond_42

    const-wide/32 v24, 0x20000000

    and-long v8, v8, v24

    cmp-long v2, v8, v22

    if-nez v2, :cond_3b

    .line 121
    invoke-static {v15, v7, v12}, Lcom/google/android/gms/internal/auth/e1;->h([BILcom/google/android/gms/internal/auth/d1;)I

    move-result v2

    iget v8, v12, Lcom/google/android/gms/internal/auth/d1;->a:I

    if-ltz v8, :cond_3a

    if-nez v8, :cond_37

    .line 122
    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 123
    :cond_37
    new-instance v9, Ljava/lang/String;

    .line 124
    sget-object v10, Lcom/google/android/gms/internal/auth/f2;->b:Ljava/nio/charset/Charset;

    invoke-direct {v9, v15, v2, v8, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 125
    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1e
    add-int/2addr v2, v8

    :goto_1f
    if-ge v2, v6, :cond_4f

    .line 126
    invoke-static {v15, v2, v12}, Lcom/google/android/gms/internal/auth/e1;->h([BILcom/google/android/gms/internal/auth/d1;)I

    move-result v8

    iget v9, v12, Lcom/google/android/gms/internal/auth/d1;->a:I

    if-ne v5, v9, :cond_4f

    .line 127
    invoke-static {v15, v8, v12}, Lcom/google/android/gms/internal/auth/e1;->h([BILcom/google/android/gms/internal/auth/d1;)I

    move-result v2

    iget v8, v12, Lcom/google/android/gms/internal/auth/d1;->a:I

    if-ltz v8, :cond_39

    if-nez v8, :cond_38

    .line 128
    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_38
    new-instance v9, Ljava/lang/String;

    .line 129
    sget-object v10, Lcom/google/android/gms/internal/auth/f2;->b:Ljava/nio/charset/Charset;

    invoke-direct {v9, v15, v2, v8, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 130
    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 131
    :cond_39
    invoke-static {}, Lcom/google/android/gms/internal/auth/g2;->c()Lcom/google/android/gms/internal/auth/g2;

    move-result-object v1

    throw v1

    .line 132
    :cond_3a
    invoke-static {}, Lcom/google/android/gms/internal/auth/g2;->c()Lcom/google/android/gms/internal/auth/g2;

    move-result-object v1

    throw v1

    .line 133
    :cond_3b
    invoke-static {v15, v7, v12}, Lcom/google/android/gms/internal/auth/e1;->h([BILcom/google/android/gms/internal/auth/d1;)I

    move-result v2

    iget v8, v12, Lcom/google/android/gms/internal/auth/d1;->a:I

    if-ltz v8, :cond_41

    if-nez v8, :cond_3c

    .line 134
    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_3c
    add-int v9, v2, v8

    .line 135
    invoke-static {v15, v2, v9}, Lcom/google/android/gms/internal/auth/e4;->c([BII)Z

    move-result v10

    if-eqz v10, :cond_40

    .line 136
    new-instance v10, Ljava/lang/String;

    .line 137
    sget-object v14, Lcom/google/android/gms/internal/auth/f2;->b:Ljava/nio/charset/Charset;

    invoke-direct {v10, v15, v2, v8, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 138
    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_20
    move v2, v9

    :goto_21
    if-ge v2, v6, :cond_4f

    .line 139
    invoke-static {v15, v2, v12}, Lcom/google/android/gms/internal/auth/e1;->h([BILcom/google/android/gms/internal/auth/d1;)I

    move-result v8

    iget v9, v12, Lcom/google/android/gms/internal/auth/d1;->a:I

    if-ne v5, v9, :cond_4f

    .line 140
    invoke-static {v15, v8, v12}, Lcom/google/android/gms/internal/auth/e1;->h([BILcom/google/android/gms/internal/auth/d1;)I

    move-result v2

    iget v8, v12, Lcom/google/android/gms/internal/auth/d1;->a:I

    if-ltz v8, :cond_3f

    if-nez v8, :cond_3d

    .line 141
    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_3d
    add-int v9, v2, v8

    .line 142
    invoke-static {v15, v2, v9}, Lcom/google/android/gms/internal/auth/e4;->c([BII)Z

    move-result v10

    if-eqz v10, :cond_3e

    .line 143
    new-instance v10, Ljava/lang/String;

    .line 144
    sget-object v14, Lcom/google/android/gms/internal/auth/f2;->b:Ljava/nio/charset/Charset;

    invoke-direct {v10, v15, v2, v8, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 145
    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 146
    :cond_3e
    invoke-static {}, Lcom/google/android/gms/internal/auth/g2;->b()Lcom/google/android/gms/internal/auth/g2;

    move-result-object v1

    throw v1

    .line 147
    :cond_3f
    invoke-static {}, Lcom/google/android/gms/internal/auth/g2;->c()Lcom/google/android/gms/internal/auth/g2;

    move-result-object v1

    throw v1

    .line 148
    :cond_40
    invoke-static {}, Lcom/google/android/gms/internal/auth/g2;->b()Lcom/google/android/gms/internal/auth/g2;

    move-result-object v1

    throw v1

    .line 149
    :cond_41
    invoke-static {}, Lcom/google/android/gms/internal/auth/g2;->c()Lcom/google/android/gms/internal/auth/g2;

    move-result-object v1

    throw v1

    :cond_42
    :goto_22
    move v10, v1

    move v8, v4

    move v9, v5

    move v14, v6

    goto/16 :goto_27

    :pswitch_13
    move/from16 v6, p4

    move v7, v1

    move/from16 v1, v16

    move/from16 v5, v18

    move/from16 v16, v28

    move/from16 v4, v29

    const/4 v3, 0x2

    if-ne v2, v3, :cond_45

    .line 150
    invoke-static {v13}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 151
    invoke-static {v15, v7, v12}, Lcom/google/android/gms/internal/auth/e1;->h([BILcom/google/android/gms/internal/auth/d1;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/auth/d1;->a:I

    add-int/2addr v3, v2

    if-lt v2, v3, :cond_44

    if-ne v2, v3, :cond_43

    goto/16 :goto_23

    .line 152
    :cond_43
    invoke-static {}, Lcom/google/android/gms/internal/auth/g2;->f()Lcom/google/android/gms/internal/auth/g2;

    move-result-object v1

    throw v1

    .line 153
    :cond_44
    invoke-static {v15, v2, v12}, Lcom/google/android/gms/internal/auth/e1;->k([BILcom/google/android/gms/internal/auth/d1;)I

    .line 154
    throw v26

    :cond_45
    if-eqz v2, :cond_46

    goto :goto_22

    .line 155
    :cond_46
    invoke-static {v13}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 156
    invoke-static {v15, v7, v12}, Lcom/google/android/gms/internal/auth/e1;->k([BILcom/google/android/gms/internal/auth/d1;)I

    iget-wide v1, v12, Lcom/google/android/gms/internal/auth/d1;->b:J

    .line 157
    throw v26

    :pswitch_14
    move/from16 v6, p4

    move v7, v1

    move/from16 v1, v16

    move/from16 v5, v18

    move/from16 v16, v28

    move/from16 v4, v29

    const/4 v3, 0x2

    if-ne v2, v3, :cond_49

    .line 158
    invoke-static {v13}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 159
    invoke-static {v15, v7, v12}, Lcom/google/android/gms/internal/auth/e1;->h([BILcom/google/android/gms/internal/auth/d1;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/auth/d1;->a:I

    add-int/2addr v3, v2

    if-lt v2, v3, :cond_48

    if-ne v2, v3, :cond_47

    goto :goto_23

    .line 160
    :cond_47
    invoke-static {}, Lcom/google/android/gms/internal/auth/g2;->f()Lcom/google/android/gms/internal/auth/g2;

    move-result-object v1

    throw v1

    .line 161
    :cond_48
    invoke-static {v15, v2}, Lcom/google/android/gms/internal/auth/e1;->b([BI)I

    throw v26

    :cond_49
    const/4 v3, 0x5

    if-eq v2, v3, :cond_4a

    goto :goto_22

    .line 162
    :cond_4a
    invoke-static {v13}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 163
    invoke-static {v15, v7}, Lcom/google/android/gms/internal/auth/e1;->b([BI)I

    throw v26

    :pswitch_15
    move/from16 v6, p4

    move v7, v1

    move/from16 v1, v16

    move/from16 v5, v18

    move/from16 v16, v28

    move/from16 v4, v29

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4d

    .line 164
    invoke-static {v13}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 165
    invoke-static {v15, v7, v12}, Lcom/google/android/gms/internal/auth/e1;->h([BILcom/google/android/gms/internal/auth/d1;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/auth/d1;->a:I

    add-int/2addr v3, v2

    if-lt v2, v3, :cond_4c

    if-ne v2, v3, :cond_4b

    :goto_23
    goto :goto_24

    .line 166
    :cond_4b
    invoke-static {}, Lcom/google/android/gms/internal/auth/g2;->f()Lcom/google/android/gms/internal/auth/g2;

    move-result-object v1

    throw v1

    .line 167
    :cond_4c
    invoke-static {v15, v2}, Lcom/google/android/gms/internal/auth/e1;->n([BI)J

    throw v26

    :cond_4d
    const/4 v3, 0x1

    if-eq v2, v3, :cond_4e

    goto/16 :goto_22

    .line 168
    :cond_4e
    invoke-static {v13}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 169
    invoke-static {v15, v7}, Lcom/google/android/gms/internal/auth/e1;->n([BI)J

    throw v26

    :pswitch_16
    move/from16 v6, p4

    move v7, v1

    move/from16 v1, v16

    move/from16 v5, v18

    move/from16 v16, v28

    move/from16 v4, v29

    const/4 v3, 0x2

    if-ne v2, v3, :cond_50

    .line 170
    invoke-static {v15, v7, v13, v12}, Lcom/google/android/gms/internal/auth/e1;->f([BILcom/google/android/gms/internal/auth/d2;Lcom/google/android/gms/internal/auth/d1;)I

    move-result v2

    :cond_4f
    :goto_24
    move v10, v1

    move v1, v2

    move v8, v4

    move v9, v5

    :goto_25
    move v14, v6

    goto/16 :goto_28

    :cond_50
    if-nez v2, :cond_42

    move v10, v1

    move v1, v5

    move-object/from16 v2, p2

    move v3, v7

    move v8, v4

    move/from16 v4, p4

    move v9, v5

    move-object v5, v13

    move v14, v6

    move-object/from16 v6, p6

    .line 171
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/auth/e1;->j(I[BIILcom/google/android/gms/internal/auth/d2;Lcom/google/android/gms/internal/auth/d1;)I

    move-result v1

    goto/16 :goto_28

    :pswitch_17
    move/from16 v14, p4

    move v7, v1

    move/from16 v10, v16

    move/from16 v9, v18

    move/from16 v16, v28

    move/from16 v8, v29

    const/4 v1, 0x2

    if-ne v2, v1, :cond_53

    .line 172
    invoke-static {v13}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 173
    invoke-static {v15, v7, v12}, Lcom/google/android/gms/internal/auth/e1;->h([BILcom/google/android/gms/internal/auth/d1;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/auth/d1;->a:I

    add-int/2addr v2, v1

    if-lt v1, v2, :cond_52

    if-ne v1, v2, :cond_51

    goto/16 :goto_28

    .line 174
    :cond_51
    invoke-static {}, Lcom/google/android/gms/internal/auth/g2;->f()Lcom/google/android/gms/internal/auth/g2;

    move-result-object v1

    throw v1

    .line 175
    :cond_52
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/auth/e1;->k([BILcom/google/android/gms/internal/auth/d1;)I

    .line 176
    throw v26

    :cond_53
    if-eqz v2, :cond_54

    goto/16 :goto_27

    .line 177
    :cond_54
    invoke-static {v13}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 178
    invoke-static {v15, v7, v12}, Lcom/google/android/gms/internal/auth/e1;->k([BILcom/google/android/gms/internal/auth/d1;)I

    iget-wide v1, v12, Lcom/google/android/gms/internal/auth/d1;->b:J

    .line 179
    throw v26

    :pswitch_18
    move/from16 v14, p4

    move v7, v1

    move/from16 v10, v16

    move/from16 v9, v18

    move/from16 v16, v28

    move/from16 v8, v29

    const/4 v1, 0x2

    if-ne v2, v1, :cond_57

    .line 180
    invoke-static {v13}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 181
    invoke-static {v15, v7, v12}, Lcom/google/android/gms/internal/auth/e1;->h([BILcom/google/android/gms/internal/auth/d1;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/auth/d1;->a:I

    add-int/2addr v2, v1

    if-lt v1, v2, :cond_56

    if-ne v1, v2, :cond_55

    goto/16 :goto_28

    .line 182
    :cond_55
    invoke-static {}, Lcom/google/android/gms/internal/auth/g2;->f()Lcom/google/android/gms/internal/auth/g2;

    move-result-object v1

    throw v1

    .line 183
    :cond_56
    invoke-static {v15, v1}, Lcom/google/android/gms/internal/auth/e1;->b([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 184
    throw v26

    :cond_57
    const/4 v1, 0x5

    if-eq v2, v1, :cond_58

    goto :goto_27

    .line 185
    :cond_58
    invoke-static {v13}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 186
    invoke-static {v15, v7}, Lcom/google/android/gms/internal/auth/e1;->b([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 187
    throw v26

    :pswitch_19
    move/from16 v14, p4

    move v7, v1

    move/from16 v10, v16

    move/from16 v9, v18

    move/from16 v16, v28

    move/from16 v8, v29

    const/4 v1, 0x2

    if-ne v2, v1, :cond_5b

    .line 188
    invoke-static {v13}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 189
    invoke-static {v15, v7, v12}, Lcom/google/android/gms/internal/auth/e1;->h([BILcom/google/android/gms/internal/auth/d1;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/auth/d1;->a:I

    add-int/2addr v2, v1

    if-lt v1, v2, :cond_5a

    if-ne v1, v2, :cond_59

    goto :goto_28

    .line 190
    :cond_59
    invoke-static {}, Lcom/google/android/gms/internal/auth/g2;->f()Lcom/google/android/gms/internal/auth/g2;

    move-result-object v1

    throw v1

    .line 191
    :cond_5a
    invoke-static {v15, v1}, Lcom/google/android/gms/internal/auth/e1;->n([BI)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 192
    throw v26

    :cond_5b
    const/4 v1, 0x1

    if-eq v2, v1, :cond_5c

    goto :goto_27

    .line 193
    :cond_5c
    invoke-static {v13}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 194
    invoke-static {v15, v7}, Lcom/google/android/gms/internal/auth/e1;->n([BI)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 195
    throw v26

    :goto_26
    if-ge v1, v14, :cond_5e

    .line 196
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/auth/e1;->h([BILcom/google/android/gms/internal/auth/d1;)I

    move-result v3

    iget v2, v12, Lcom/google/android/gms/internal/auth/d1;->a:I

    if-ne v9, v2, :cond_5e

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, v21

    move-object/from16 v6, p6

    .line 197
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/auth/e1;->c(Lcom/google/android/gms/internal/auth/k3;[BIIILcom/google/android/gms/internal/auth/d1;)I

    move-result v1

    iget-object v2, v12, Lcom/google/android/gms/internal/auth/d1;->c:Ljava/lang/Object;

    .line 198
    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_5d
    :goto_27
    move v1, v7

    :cond_5e
    :goto_28
    if-eq v1, v7, :cond_5f

    move-object/from16 v7, p1

    move/from16 v13, p5

    move v2, v8

    move v4, v9

    move v3, v10

    move/from16 v6, v16

    goto/16 :goto_14

    :cond_5f
    move-object/from16 v7, p1

    move v3, v1

    move v4, v9

    move-object/from16 v36, v11

    move-object v5, v12

    move/from16 v9, p5

    move/from16 v37, v10

    move v10, v8

    move/from16 v8, v37

    goto/16 :goto_34

    :cond_60
    move v7, v1

    move v1, v10

    move/from16 v8, v16

    move v10, v5

    move/from16 v16, v6

    move/from16 v5, v18

    const/16 v6, 0x32

    if-ne v4, v6, :cond_63

    const/4 v6, 0x2

    if-ne v2, v6, :cond_62

    .line 199
    sget-object v1, Lcom/google/android/gms/internal/auth/c3;->o:Lsun/misc/Unsafe;

    .line 200
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/auth/c3;->B(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v7, p1

    .line 201
    invoke-virtual {v1, v7, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 202
    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/auth/s2;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/auth/s2;->f()Z

    move-result v4

    if-nez v4, :cond_61

    invoke-static {}, Lcom/google/android/gms/internal/auth/s2;->a()Lcom/google/android/gms/internal/auth/s2;

    move-result-object v4

    .line 203
    invoke-virtual {v4}, Lcom/google/android/gms/internal/auth/s2;->b()Lcom/google/android/gms/internal/auth/s2;

    move-result-object v4

    .line 204
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/auth/t2;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    invoke-virtual {v1, v7, v13, v14, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 206
    :cond_61
    invoke-static {v2}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 207
    throw v26

    :cond_62
    move v6, v7

    move-object/from16 v7, p1

    :goto_29
    move/from16 v9, p5

    move v4, v5

    move v3, v6

    move v8, v10

    move-object/from16 v36, v11

    move-object v5, v12

    move v10, v1

    goto/16 :goto_34

    :cond_63
    move v6, v7

    move-object/from16 v7, p1

    add-int/lit8 v18, v10, 0x2

    move-object/from16 v24, v11

    sget-object v11, Lcom/google/android/gms/internal/auth/c3;->o:Lsun/misc/Unsafe;

    .line 208
    aget v9, v9, v18

    move-object/from16 v26, v3

    const v3, 0xfffff

    and-int/2addr v9, v3

    move/from16 v18, v8

    int-to-long v8, v9

    packed-switch v4, :pswitch_data_2

    move v4, v5

    move/from16 p3, v10

    move-object v5, v12

    move-object/from16 v36, v24

    :goto_2a
    move v10, v1

    move v12, v6

    goto/16 :goto_32

    :pswitch_1a
    const/4 v4, 0x3

    if-ne v2, v4, :cond_64

    .line 209
    invoke-direct {v0, v7, v1, v10}, Lcom/google/android/gms/internal/auth/c3;->D(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v2

    and-int/lit8 v4, v5, -0x8

    or-int/lit8 v13, v4, 0x4

    .line 210
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/auth/c3;->A(I)Lcom/google/android/gms/internal/auth/k3;

    move-result-object v9

    move-object v8, v2

    move v4, v10

    move-object/from16 v10, p2

    move-object/from16 v14, v24

    move v11, v6

    move/from16 p3, v5

    move-object v5, v12

    move/from16 v12, p4

    move-object/from16 v36, v14

    move-object/from16 v14, p6

    .line 211
    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/auth/e1;->l(Ljava/lang/Object;Lcom/google/android/gms/internal/auth/k3;[BIIILcom/google/android/gms/internal/auth/d1;)I

    move-result v8

    .line 212
    invoke-direct {v0, v7, v1, v4, v2}, Lcom/google/android/gms/internal/auth/c3;->j(Ljava/lang/Object;IILjava/lang/Object;)V

    move v10, v1

    move v12, v6

    move v1, v8

    goto/16 :goto_2e

    :cond_64
    move/from16 p3, v5

    move-object/from16 v36, v24

    move/from16 v4, p3

    move/from16 p3, v10

    move-object v5, v12

    goto :goto_2a

    :pswitch_1b
    move/from16 p3, v5

    move v4, v10

    move-object v5, v12

    move-object/from16 v36, v24

    if-nez v2, :cond_67

    .line 213
    invoke-static {v15, v6, v5}, Lcom/google/android/gms/internal/auth/e1;->k([BILcom/google/android/gms/internal/auth/d1;)I

    move-result v2

    move v10, v4

    iget-wide v3, v5, Lcom/google/android/gms/internal/auth/d1;->b:J

    .line 214
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/t1;->b(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v7, v13, v14, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 215
    invoke-virtual {v11, v7, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_2b

    :pswitch_1c
    move/from16 p3, v5

    move-object v5, v12

    move-object/from16 v36, v24

    if-nez v2, :cond_65

    .line 216
    invoke-static {v15, v6, v5}, Lcom/google/android/gms/internal/auth/e1;->h([BILcom/google/android/gms/internal/auth/d1;)I

    move-result v2

    iget v3, v5, Lcom/google/android/gms/internal/auth/d1;->a:I

    .line 217
    invoke-static {v3}, Lcom/google/android/gms/internal/auth/t1;->a(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v7, v13, v14, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 218
    invoke-virtual {v11, v7, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_2b
    move/from16 v4, p3

    move v12, v6

    move/from16 p3, v10

    move v10, v1

    :goto_2c
    move v1, v2

    goto/16 :goto_33

    :pswitch_1d
    move/from16 p3, v5

    move-object v5, v12

    move-object/from16 v36, v24

    if-nez v2, :cond_65

    .line 219
    invoke-static {v15, v6, v5}, Lcom/google/android/gms/internal/auth/e1;->h([BILcom/google/android/gms/internal/auth/d1;)I

    move-result v2

    iget v3, v5, Lcom/google/android/gms/internal/auth/d1;->a:I

    move v4, v10

    .line 220
    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/auth/c3;->z(I)Lcom/google/android/gms/internal/auth/c2;

    .line 221
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v7, v13, v14, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 222
    invoke-virtual {v11, v7, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_2d

    :cond_65
    move/from16 v4, p3

    move v12, v6

    move/from16 p3, v10

    move v10, v1

    goto/16 :goto_32

    :pswitch_1e
    move/from16 p3, v5

    move v4, v10

    move-object v5, v12

    move-object/from16 v36, v24

    const/4 v3, 0x2

    if-ne v2, v3, :cond_67

    .line 223
    invoke-static {v15, v6, v5}, Lcom/google/android/gms/internal/auth/e1;->a([BILcom/google/android/gms/internal/auth/d1;)I

    move-result v2

    iget-object v3, v5, Lcom/google/android/gms/internal/auth/d1;->c:Ljava/lang/Object;

    .line 224
    invoke-virtual {v11, v7, v13, v14, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 225
    invoke-virtual {v11, v7, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_2d
    move v10, v1

    move v1, v2

    move v12, v6

    :goto_2e
    move/from16 v37, v4

    move/from16 v4, p3

    move/from16 p3, v37

    goto/16 :goto_33

    :pswitch_1f
    move/from16 p3, v5

    move v4, v10

    move-object v5, v12

    move-object/from16 v36, v24

    const/4 v3, 0x2

    if-ne v2, v3, :cond_66

    .line 226
    invoke-direct {v0, v7, v1, v4}, Lcom/google/android/gms/internal/auth/c3;->D(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v8

    .line 227
    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/auth/c3;->A(I)Lcom/google/android/gms/internal/auth/k3;

    move-result-object v2

    move v10, v1

    move-object v1, v8

    const v12, 0xfffff

    move-object/from16 v3, p2

    move v9, v4

    move v4, v6

    move/from16 v13, p3

    move-object v11, v5

    move/from16 v5, p4

    move/from16 v14, p4

    move v12, v6

    move-object/from16 v6, p6

    .line 228
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/auth/e1;->m(Ljava/lang/Object;Lcom/google/android/gms/internal/auth/k3;[BIILcom/google/android/gms/internal/auth/d1;)I

    move-result v1

    .line 229
    invoke-direct {v0, v7, v10, v9, v8}, Lcom/google/android/gms/internal/auth/c3;->j(Ljava/lang/Object;IILjava/lang/Object;)V

    move/from16 p3, v9

    move-object v5, v11

    move v4, v13

    goto/16 :goto_33

    :cond_66
    move/from16 v14, p4

    :cond_67
    move v10, v1

    move v12, v6

    move/from16 v37, v4

    move/from16 v4, p3

    move/from16 p3, v37

    goto/16 :goto_32

    :pswitch_20
    move v4, v5

    move-object v5, v12

    move-object/from16 v36, v24

    const/4 v3, 0x2

    move v12, v6

    move/from16 v6, p4

    move/from16 v37, v10

    move v10, v1

    move/from16 v1, v37

    if-ne v2, v3, :cond_6b

    .line 230
    invoke-static {v15, v12, v5}, Lcom/google/android/gms/internal/auth/e1;->h([BILcom/google/android/gms/internal/auth/d1;)I

    move-result v2

    iget v3, v5, Lcom/google/android/gms/internal/auth/d1;->a:I

    if-nez v3, :cond_68

    move/from16 p3, v1

    move-object/from16 v1, v26

    .line 231
    invoke-virtual {v11, v7, v13, v14, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_30

    :cond_68
    move/from16 p3, v1

    and-int v1, v18, v21

    if-eqz v1, :cond_6a

    add-int v1, v2, v3

    .line 232
    invoke-static {v15, v2, v1}, Lcom/google/android/gms/internal/auth/e4;->c([BII)Z

    move-result v1

    if-eqz v1, :cond_69

    goto :goto_2f

    .line 233
    :cond_69
    invoke-static {}, Lcom/google/android/gms/internal/auth/g2;->b()Lcom/google/android/gms/internal/auth/g2;

    move-result-object v1

    throw v1

    .line 234
    :cond_6a
    :goto_2f
    new-instance v1, Ljava/lang/String;

    .line 235
    sget-object v6, Lcom/google/android/gms/internal/auth/f2;->b:Ljava/nio/charset/Charset;

    invoke-direct {v1, v15, v2, v3, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 236
    invoke-virtual {v11, v7, v13, v14, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v2, v3

    .line 237
    :goto_30
    invoke-virtual {v11, v7, v8, v9, v10}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_2c

    :cond_6b
    move/from16 p3, v1

    goto/16 :goto_32

    :pswitch_21
    move v4, v5

    move/from16 p3, v10

    move-object v5, v12

    move-object/from16 v36, v24

    move v10, v1

    move v12, v6

    if-nez v2, :cond_6d

    .line 238
    invoke-static {v15, v12, v5}, Lcom/google/android/gms/internal/auth/e1;->k([BILcom/google/android/gms/internal/auth/d1;)I

    move-result v1

    iget-wide v2, v5, Lcom/google/android/gms/internal/auth/d1;->b:J

    cmp-long v2, v2, v22

    if-eqz v2, :cond_6c

    const/16 v27, 0x1

    goto :goto_31

    :cond_6c
    move/from16 v27, v19

    .line 239
    :goto_31
    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v11, v7, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 240
    invoke-virtual {v11, v7, v8, v9, v10}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_33

    :pswitch_22
    move v4, v5

    move/from16 p3, v10

    move-object v5, v12

    move-object/from16 v36, v24

    move v10, v1

    move v12, v6

    const/4 v1, 0x5

    if-ne v2, v1, :cond_6d

    .line 241
    invoke-static {v15, v12}, Lcom/google/android/gms/internal/auth/e1;->b([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v7, v13, v14, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v1, v12, 0x4

    .line 242
    invoke-virtual {v11, v7, v8, v9, v10}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_33

    :pswitch_23
    move v4, v5

    move/from16 p3, v10

    move-object v5, v12

    move-object/from16 v36, v24

    move v10, v1

    move v12, v6

    const/4 v1, 0x1

    if-ne v2, v1, :cond_6d

    .line 243
    invoke-static {v15, v12}, Lcom/google/android/gms/internal/auth/e1;->n([BI)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v7, v13, v14, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v1, v12, 0x8

    .line 244
    invoke-virtual {v11, v7, v8, v9, v10}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_33

    :pswitch_24
    move v4, v5

    move/from16 p3, v10

    move-object v5, v12

    move-object/from16 v36, v24

    move v10, v1

    move v12, v6

    if-nez v2, :cond_6d

    .line 245
    invoke-static {v15, v12, v5}, Lcom/google/android/gms/internal/auth/e1;->h([BILcom/google/android/gms/internal/auth/d1;)I

    move-result v1

    iget v2, v5, Lcom/google/android/gms/internal/auth/d1;->a:I

    .line 246
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v7, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 247
    invoke-virtual {v11, v7, v8, v9, v10}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_33

    :pswitch_25
    move v4, v5

    move/from16 p3, v10

    move-object v5, v12

    move-object/from16 v36, v24

    move v10, v1

    move v12, v6

    if-nez v2, :cond_6d

    .line 248
    invoke-static {v15, v12, v5}, Lcom/google/android/gms/internal/auth/e1;->k([BILcom/google/android/gms/internal/auth/d1;)I

    move-result v1

    iget-wide v2, v5, Lcom/google/android/gms/internal/auth/d1;->b:J

    .line 249
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v7, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 250
    invoke-virtual {v11, v7, v8, v9, v10}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_33

    :pswitch_26
    move v4, v5

    move/from16 p3, v10

    move-object v5, v12

    move-object/from16 v36, v24

    move v10, v1

    move v12, v6

    const/4 v1, 0x5

    if-ne v2, v1, :cond_6d

    .line 251
    invoke-static {v15, v12}, Lcom/google/android/gms/internal/auth/e1;->b([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 252
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v11, v7, v13, v14, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v1, v12, 0x4

    .line 253
    invoke-virtual {v11, v7, v8, v9, v10}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_33

    :pswitch_27
    move v4, v5

    move/from16 p3, v10

    move-object v5, v12

    move-object/from16 v36, v24

    move v10, v1

    move v12, v6

    const/4 v1, 0x1

    if-ne v2, v1, :cond_6d

    .line 254
    invoke-static {v15, v12}, Lcom/google/android/gms/internal/auth/e1;->n([BI)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    .line 255
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v11, v7, v13, v14, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v1, v12, 0x8

    .line 256
    invoke-virtual {v11, v7, v8, v9, v10}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_33

    :cond_6d
    :goto_32
    move v1, v12

    :goto_33
    if-eq v1, v12, :cond_6e

    move/from16 v3, p3

    move/from16 v14, p4

    move/from16 v13, p5

    move-object v12, v5

    move v2, v10

    move/from16 v6, v16

    move/from16 v10, v19

    move/from16 v5, v20

    move-object/from16 v11, v36

    goto/16 :goto_0

    :cond_6e
    move/from16 v8, p3

    move/from16 v9, p5

    goto/16 :goto_12

    :goto_34
    if-ne v4, v9, :cond_70

    if-nez v9, :cond_6f

    goto :goto_35

    :cond_6f
    move/from16 v12, p4

    move v1, v3

    move/from16 v6, v16

    move/from16 v5, v20

    goto :goto_36

    .line 257
    :cond_70
    :goto_35
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/auth/c3;->r(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/r3;

    move-result-object v6

    move v1, v4

    move-object/from16 v2, p2

    move v11, v4

    move/from16 v4, p4

    move-object v5, v6

    move/from16 v12, p4

    move-object/from16 v6, p6

    .line 258
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/auth/e1;->g(I[BIILcom/google/android/gms/internal/auth/r3;Lcom/google/android/gms/internal/auth/d1;)I

    move-result v1

    move v3, v8

    move v13, v9

    move v2, v10

    move v4, v11

    move v14, v12

    move/from16 v6, v16

    move/from16 v10, v19

    move/from16 v5, v20

    move-object/from16 v11, v36

    move-object/from16 v12, p6

    goto/16 :goto_0

    :cond_71
    move/from16 v20, v5

    move/from16 v16, v6

    move-object/from16 v36, v11

    move v9, v13

    move v12, v14

    :goto_36
    const v2, 0xfffff

    if-eq v6, v2, :cond_72

    int-to-long v2, v6

    move-object/from16 v6, v36

    .line 259
    invoke-virtual {v6, v7, v2, v3, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_72
    iget v2, v0, Lcom/google/android/gms/internal/auth/c3;->g:I

    :goto_37
    iget v3, v0, Lcom/google/android/gms/internal/auth/c3;->h:I

    if-ge v2, v3, :cond_74

    iget-object v3, v0, Lcom/google/android/gms/internal/auth/c3;->f:[I

    .line 260
    aget v3, v3, v2

    iget-object v5, v0, Lcom/google/android/gms/internal/auth/c3;->a:[I

    .line 261
    aget v5, v5, v3

    .line 262
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/auth/c3;->x(I)I

    move-result v5

    const v6, 0xfffff

    and-int/2addr v5, v6

    int-to-long v10, v5

    .line 263
    invoke-static {v7, v10, v11}, Lcom/google/android/gms/internal/auth/a4;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_73

    goto :goto_38

    .line 264
    :cond_73
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/auth/c3;->z(I)Lcom/google/android/gms/internal/auth/c2;

    :goto_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    :cond_74
    if-nez v9, :cond_76

    if-ne v1, v12, :cond_75

    goto :goto_39

    .line 265
    :cond_75
    invoke-static {}, Lcom/google/android/gms/internal/auth/g2;->d()Lcom/google/android/gms/internal/auth/g2;

    move-result-object v1

    throw v1

    :cond_76
    if-gt v1, v12, :cond_77

    if-ne v4, v9, :cond_77

    :goto_39
    return v1

    .line 266
    :cond_77
    invoke-static {}, Lcom/google/android/gms/internal/auth/g2;->d()Lcom/google/android/gms/internal/auth/g2;

    move-result-object v1

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x33
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_24
        :pswitch_1d
        :pswitch_22
        :pswitch_23
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch
.end method
