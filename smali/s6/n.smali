.class public final Ls6/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls6/n$b;
    }
.end annotation


# instance fields
.field private final a:Le7/c0;

.field private final b:Ljava/util/List;

.field private final c:Lc7/a;


# direct methods
.method private constructor <init>(Le7/c0;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ls6/n;->a:Le7/c0;

    .line 5
    .line 6
    iput-object p2, p0, Ls6/n;->b:Ljava/util/List;

    .line 7
    .line 8
    sget-object p1, Lc7/a;->b:Lc7/a;

    .line 9
    .line 10
    iput-object p1, p0, Ls6/n;->c:Lc7/a;

    .line 11
    .line 12
    return-void
.end method

.method private static a(Le7/t;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Le7/t;->X()Lcom/google/crypto/tink/shaded/protobuf/h;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/h;->size()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 15
    .line 16
    const-string v0, "empty keyset"

    .line 17
    .line 18
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p0
.end method

.method private static b(Le7/c0;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Le7/c0;->a0()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-lez p0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 11
    .line 12
    const-string v0, "empty keyset"

    .line 13
    .line 14
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p0
.end method

.method private static c(Le7/t;Ls6/a;[B)Le7/c0;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Le7/t;->X()Lcom/google/crypto/tink/shaded/protobuf/h;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/h;->F()[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p1, p0, p2}, Ls6/a;->b([B[B)[B

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/p;->b()Lcom/google/crypto/tink/shaded/protobuf/p;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p0, p1}, Le7/c0;->f0([BLcom/google/crypto/tink/shaded/protobuf/p;)Le7/c0;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Ls6/n;->b(Le7/c0;)V
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/a0; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    return-object p0

    .line 25
    :catch_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 26
    .line 27
    const-string p1, "invalid keyset, corrupted key material"

    .line 28
    .line 29
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p0
.end method

.method private static d(Le7/c0;Ls6/a;[B)Le7/t;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/a;->f()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1, v0, p2}, Ls6/a;->a([B[B)[B

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :try_start_0
    invoke-interface {p1, v0, p2}, Ls6/a;->b([B[B)[B

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/p;->b()Lcom/google/crypto/tink/shaded/protobuf/p;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-static {p1, p2}, Le7/c0;->f0([BLcom/google/crypto/tink/shaded/protobuf/p;)Le7/c0;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/x;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/a0; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    invoke-static {}, Le7/t;->Y()Le7/t$b;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/h;->m([B)Lcom/google/crypto/tink/shaded/protobuf/h;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p1, p2}, Le7/t$b;->t(Lcom/google/crypto/tink/shaded/protobuf/h;)Le7/t$b;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p0}, Ls6/z;->b(Le7/c0;)Le7/d0;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p1, p0}, Le7/t$b;->u(Le7/d0;)Le7/t$b;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->j()Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    check-cast p0, Le7/t;

    .line 52
    .line 53
    return-object p0

    .line 54
    :cond_0
    :try_start_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 55
    .line 56
    const-string p1, "cannot encrypt keyset"

    .line 57
    .line 58
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p0
    :try_end_1
    .catch Lcom/google/crypto/tink/shaded/protobuf/a0; {:try_start_1 .. :try_end_1} :catch_0

    .line 62
    :catch_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 63
    .line 64
    const-string p1, "invalid keyset, corrupted key material"

    .line 65
    .line 66
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p0
.end method

.method static final e(Le7/c0;)Ls6/n;
    .locals 2

    .line 1
    invoke-static {p0}, Ls6/n;->b(Le7/c0;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Ls6/n;->f(Le7/c0;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Ls6/n;

    .line 9
    .line 10
    invoke-direct {v1, p0, v0}, Ls6/n;-><init>(Le7/c0;Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    return-object v1
.end method

.method private static f(Le7/c0;)Ljava/util/List;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Le7/c0;->a0()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Le7/c0;->b0()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Le7/c0$c;

    .line 29
    .line 30
    invoke-virtual {v2}, Le7/c0$c;->a0()I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    invoke-static {v2}, Ls6/n;->q(Le7/c0$c;)Lcom/google/crypto/tink/internal/o;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    :try_start_0
    invoke-static {}, Lcom/google/crypto/tink/internal/i;->a()Lcom/google/crypto/tink/internal/i;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-static {}, Ls6/f;->a()Ls6/y;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-virtual {v4, v3, v5}, Lcom/google/crypto/tink/internal/i;->d(Lcom/google/crypto/tink/internal/o;Ls6/y;)Ls6/g;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    new-instance v9, Ls6/n$b;

    .line 51
    .line 52
    invoke-virtual {v2}, Le7/c0$c;->c0()Le7/z;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-static {v2}, Ls6/n;->m(Le7/z;)Ls6/k;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-virtual {p0}, Le7/c0;->c0()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-ne v6, v2, :cond_0

    .line 65
    .line 66
    const/4 v2, 0x1

    .line 67
    goto :goto_1

    .line 68
    :cond_0
    const/4 v2, 0x0

    .line 69
    :goto_1
    move v7, v2

    .line 70
    const/4 v8, 0x0

    .line 71
    move-object v3, v9

    .line 72
    invoke-direct/range {v3 .. v8}, Ls6/n$b;-><init>(Ls6/g;Ls6/k;IZLs6/n$a;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catch_0
    const/4 v2, 0x0

    .line 80
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    return-object p0
.end method

.method private g(Ls6/g;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p1, p2}, Ls6/x;->c(Ls6/g;Ljava/lang/Class;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p1

    .line 6
    :catch_0
    const/4 p1, 0x0

    .line 7
    return-object p1
.end method

.method private static j(Le7/c0$c;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Le7/c0$c;->Z()Le7/y;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0, p1}, Ls6/x;->e(Le7/y;Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "No key manager found for key type "

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v0, " not supported by key manager of type "

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    throw p0

    .line 37
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 38
    return-object p0
.end method

.method private l(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Ls6/n;->a:Le7/c0;

    .line 2
    .line 3
    invoke-static {v0}, Ls6/z;->d(Le7/c0;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Ls6/v;->j(Ljava/lang/Class;)Ls6/v$b;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Ls6/n;->c:Lc7/a;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ls6/v$b;->e(Lc7/a;)Ls6/v$b;

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    invoke-virtual {p0}, Ls6/n;->p()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-ge v1, v2, :cond_3

    .line 21
    .line 22
    iget-object v2, p0, Ls6/n;->a:Le7/c0;

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Le7/c0;->Z(I)Le7/c0$c;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Le7/c0$c;->c0()Le7/z;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    sget-object v4, Le7/z;->c:Le7/z;

    .line 33
    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    invoke-static {v2, p2}, Ls6/n;->j(Le7/c0$c;Ljava/lang/Class;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    iget-object v4, p0, Ls6/n;->b:Ljava/util/List;

    .line 45
    .line 46
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    if-eqz v4, :cond_0

    .line 51
    .line 52
    iget-object v4, p0, Ls6/n;->b:Ljava/util/List;

    .line 53
    .line 54
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Ls6/n$b;

    .line 59
    .line 60
    invoke-virtual {v4}, Ls6/n$b;->a()Ls6/g;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-direct {p0, v4, p2}, Ls6/n;->g(Ls6/g;Ljava/lang/Class;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    goto :goto_1

    .line 69
    :cond_0
    const/4 v4, 0x0

    .line 70
    :goto_1
    invoke-virtual {v2}, Le7/c0$c;->a0()I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    iget-object v6, p0, Ls6/n;->a:Le7/c0;

    .line 75
    .line 76
    invoke-virtual {v6}, Le7/c0;->c0()I

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    if-ne v5, v6, :cond_1

    .line 81
    .line 82
    invoke-virtual {v0, v4, v3, v2}, Ls6/v$b;->b(Ljava/lang/Object;Ljava/lang/Object;Le7/c0$c;)Ls6/v$b;

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_1
    invoke-virtual {v0, v4, v3, v2}, Ls6/v$b;->a(Ljava/lang/Object;Ljava/lang/Object;Le7/c0$c;)Ls6/v$b;

    .line 87
    .line 88
    .line 89
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {v0}, Ls6/v$b;->d()Ls6/v;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-static {p2, p1}, Ls6/x;->o(Ls6/v;Ljava/lang/Class;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    return-object p1
.end method

.method private static m(Le7/z;)Ls6/k;
    .locals 1

    .line 1
    sget-object v0, Ls6/n$a;->a:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    aget p0, v0, p0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p0, v0, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p0, v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-ne p0, v0, :cond_0

    .line 17
    .line 18
    sget-object p0, Ls6/k;->d:Ls6/k;

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 22
    .line 23
    const-string v0, "Unknown key status"

    .line 24
    .line 25
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p0

    .line 29
    :cond_1
    sget-object p0, Ls6/k;->c:Ls6/k;

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_2
    sget-object p0, Ls6/k;->b:Ls6/k;

    .line 33
    .line 34
    return-object p0
.end method

.method public static final n(Ls6/p;Ls6/a;)Ls6/n;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    invoke-static {p0, p1, v0}, Ls6/n;->o(Ls6/p;Ls6/a;[B)Ls6/n;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public static final o(Ls6/p;Ls6/a;[B)Ls6/n;
    .locals 0

    .line 1
    invoke-interface {p0}, Ls6/p;->a()Le7/t;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Ls6/n;->a(Le7/t;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0, p1, p2}, Ls6/n;->c(Le7/t;Ls6/a;[B)Le7/c0;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {p0}, Ls6/n;->e(Le7/c0;)Ls6/n;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method private static q(Le7/c0$c;)Lcom/google/crypto/tink/internal/o;
    .locals 4

    .line 1
    invoke-virtual {p0}, Le7/c0$c;->a0()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Le7/c0$c;->b0()Le7/i0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Le7/i0;->e:Le7/i0;

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Le7/c0$c;->Z()Le7/y;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Le7/y;->a0()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p0}, Le7/c0$c;->Z()Le7/y;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Le7/y;->b0()Lcom/google/crypto/tink/shaded/protobuf/h;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {p0}, Le7/c0$c;->Z()Le7/y;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v3}, Le7/y;->Z()Le7/y$c;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {p0}, Le7/c0$c;->b0()Le7/i0;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {v1, v2, v3, p0, v0}, Lcom/google/crypto/tink/internal/o;->b(Ljava/lang/String;Lcom/google/crypto/tink/shaded/protobuf/h;Le7/y$c;Le7/i0;Ljava/lang/Integer;)Lcom/google/crypto/tink/internal/o;

    .line 48
    .line 49
    .line 50
    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    return-object p0

    .line 52
    :catch_0
    move-exception p0

    .line 53
    new-instance v0, Lcom/google/crypto/tink/internal/s;

    .line 54
    .line 55
    const-string v1, "Creating a protokey serialization failed"

    .line 56
    .line 57
    invoke-direct {v0, v1, p0}, Lcom/google/crypto/tink/internal/s;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    throw v0
.end method


# virtual methods
.method h()Le7/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Ls6/n;->a:Le7/c0;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Le7/d0;
    .locals 1

    .line 1
    iget-object v0, p0, Ls6/n;->a:Le7/c0;

    .line 2
    .line 3
    invoke-static {v0}, Ls6/z;->b(Le7/c0;)Le7/d0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public k(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Ls6/x;->d(Ljava/lang/Class;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1, v0}, Ls6/n;->l(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "No wrapper found for "

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0
.end method

.method public p()I
    .locals 1

    .line 1
    iget-object v0, p0, Ls6/n;->a:Le7/c0;

    .line 2
    .line 3
    invoke-virtual {v0}, Le7/c0;->a0()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public r(Ls6/q;Ls6/a;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    invoke-virtual {p0, p1, p2, v0}, Ls6/n;->s(Ls6/q;Ls6/a;[B)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public s(Ls6/q;Ls6/a;[B)V
    .locals 1

    .line 1
    iget-object v0, p0, Ls6/n;->a:Le7/c0;

    .line 2
    .line 3
    invoke-static {v0, p2, p3}, Ls6/n;->d(Le7/c0;Ls6/a;[B)Le7/t;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-interface {p1, p2}, Ls6/q;->a(Le7/t;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls6/n;->i()Le7/d0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/x;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
