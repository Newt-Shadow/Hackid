.class abstract Lt6/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lg7/a;

.field private static final b:Lcom/google/crypto/tink/internal/k;

.field private static final c:Lcom/google/crypto/tink/internal/j;

.field private static final d:Lcom/google/crypto/tink/internal/c;

.field private static final e:Lcom/google/crypto/tink/internal/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/crypto/tink/internal/t;->e(Ljava/lang/String;)Lg7/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lt6/s;->a:Lg7/a;

    .line 8
    .line 9
    new-instance v1, Lt6/j;

    .line 10
    .line 11
    invoke-direct {v1}, Lt6/j;-><init>()V

    .line 12
    .line 13
    .line 14
    const-class v2, Lt6/q;

    .line 15
    .line 16
    const-class v3, Lcom/google/crypto/tink/internal/p;

    .line 17
    .line 18
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/k;->a(Lcom/google/crypto/tink/internal/k$b;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/k;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    sput-object v1, Lt6/s;->b:Lcom/google/crypto/tink/internal/k;

    .line 23
    .line 24
    new-instance v1, Lt6/k;

    .line 25
    .line 26
    invoke-direct {v1}, Lt6/k;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v0, v3}, Lcom/google/crypto/tink/internal/j;->a(Lcom/google/crypto/tink/internal/j$b;Lg7/a;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/j;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    sput-object v1, Lt6/s;->c:Lcom/google/crypto/tink/internal/j;

    .line 34
    .line 35
    new-instance v1, Lt6/l;

    .line 36
    .line 37
    invoke-direct {v1}, Lt6/l;-><init>()V

    .line 38
    .line 39
    .line 40
    const-class v2, Lt6/o;

    .line 41
    .line 42
    const-class v3, Lcom/google/crypto/tink/internal/o;

    .line 43
    .line 44
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/c;->a(Lcom/google/crypto/tink/internal/c$b;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/c;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    sput-object v1, Lt6/s;->d:Lcom/google/crypto/tink/internal/c;

    .line 49
    .line 50
    new-instance v1, Lt6/r;

    .line 51
    .line 52
    invoke-direct {v1}, Lt6/r;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-static {v1, v0, v3}, Lcom/google/crypto/tink/internal/b;->a(Lcom/google/crypto/tink/internal/b$b;Lg7/a;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/b;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sput-object v0, Lt6/s;->e:Lcom/google/crypto/tink/internal/b;

    .line 60
    .line 61
    return-void
.end method

.method public static synthetic a(Lcom/google/crypto/tink/internal/o;Ls6/y;)Lt6/o;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lt6/s;->b(Lcom/google/crypto/tink/internal/o;Ls6/y;)Lt6/o;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/google/crypto/tink/internal/o;Ls6/y;)Lt6/o;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/o;->f()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/o;->g()Lcom/google/crypto/tink/shaded/protobuf/h;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/p;->b()Lcom/google/crypto/tink/shaded/protobuf/p;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Le7/l;->a0(Lcom/google/crypto/tink/shaded/protobuf/h;Lcom/google/crypto/tink/shaded/protobuf/p;)Le7/l;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Le7/l;->Y()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    invoke-static {}, Lt6/q;->a()Lt6/q$b;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0}, Le7/l;->X()Lcom/google/crypto/tink/shaded/protobuf/h;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/h;->size()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-virtual {v1, v2}, Lt6/q$b;->c(I)Lt6/q$b;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const/16 v2, 0xc

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Lt6/q$b;->b(I)Lt6/q$b;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const/16 v2, 0x10

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Lt6/q$b;->d(I)Lt6/q$b;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/o;->e()Le7/i0;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-static {v2}, Lt6/s;->e(Le7/i0;)Lt6/q$c;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v1, v2}, Lt6/q$b;->e(Lt6/q$c;)Lt6/q$b;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1}, Lt6/q$b;->a()Lt6/q;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-static {}, Lt6/o;->a()Lt6/o$b;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v2, v1}, Lt6/o$b;->e(Lt6/q;)Lt6/o$b;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0}, Le7/l;->X()Lcom/google/crypto/tink/shaded/protobuf/h;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/h;->F()[B

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {p1}, Ls6/y;->b(Ls6/y;)Ls6/y;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-static {v0, p1}, Lg7/b;->a([BLs6/y;)Lg7/b;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {v1, p1}, Lt6/o$b;->d(Lg7/b;)Lt6/o$b;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/o;->c()Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-virtual {p1, p0}, Lt6/o$b;->c(Ljava/lang/Integer;)Lt6/o$b;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {p0}, Lt6/o$b;->a()Lt6/o;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    return-object p0

    .line 116
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 117
    .line 118
    const-string p1, "Only version 0 keys are accepted"

    .line 119
    .line 120
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p0
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/a0; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :catch_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 125
    .line 126
    const-string p1, "Parsing AesGcmKey failed"

    .line 127
    .line 128
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw p0

    .line 132
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 133
    .line 134
    const-string p1, "Wrong type URL in call to AesGcmParameters.parseParameters"

    .line 135
    .line 136
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p0
.end method

.method public static c()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/crypto/tink/internal/i;->a()Lcom/google/crypto/tink/internal/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lt6/s;->d(Lcom/google/crypto/tink/internal/i;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static d(Lcom/google/crypto/tink/internal/i;)V
    .locals 1

    .line 1
    sget-object v0, Lt6/s;->b:Lcom/google/crypto/tink/internal/k;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/i;->h(Lcom/google/crypto/tink/internal/k;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lt6/s;->c:Lcom/google/crypto/tink/internal/j;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/i;->g(Lcom/google/crypto/tink/internal/j;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lt6/s;->d:Lcom/google/crypto/tink/internal/c;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/i;->f(Lcom/google/crypto/tink/internal/c;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lt6/s;->e:Lcom/google/crypto/tink/internal/b;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/i;->e(Lcom/google/crypto/tink/internal/b;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private static e(Le7/i0;)Lt6/q$c;
    .locals 3

    .line 1
    sget-object v0, Lt6/s$a;->a:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_2

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x4

    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    sget-object p0, Lt6/q$c;->d:Lt6/q$c;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v2, "Unable to parse OutputPrefixType: "

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Le7/i0;->c()I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :cond_1
    sget-object p0, Lt6/q$c;->c:Lt6/q$c;

    .line 52
    .line 53
    return-object p0

    .line 54
    :cond_2
    sget-object p0, Lt6/q$c;->b:Lt6/q$c;

    .line 55
    .line 56
    return-object p0
.end method
