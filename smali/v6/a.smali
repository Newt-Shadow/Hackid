.class public final Lv6/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls6/a;


# static fields
.field private static final b:Ljava/lang/ThreadLocal;


# instance fields
.field private final a:Ljavax/crypto/SecretKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lv6/a$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lv6/a$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lv6/a;->b:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    array-length v0, p1

    .line 5
    invoke-static {v0}, Lf7/r;->a(I)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 9
    .line 10
    const-string v1, "AES"

    .line 11
    .line 12
    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lv6/a;->a:Ljavax/crypto/SecretKey;

    .line 16
    .line 17
    return-void
.end method

.method private static c([B)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v1, v0}, Lv6/a;->d([BII)Ljava/security/spec/AlgorithmParameterSpec;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static d([BII)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "javax.crypto.spec.GCMParameterSpec"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljavax/crypto/spec/GCMParameterSpec;

    .line 7
    .line 8
    const/16 v1, 0x80

    .line 9
    .line 10
    invoke-direct {v0, v1, p0, p1, p2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[BII)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    return-object v0

    .line 14
    :catch_0
    invoke-static {}, Lf7/q;->b()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 27
    .line 28
    const-string p1, "cannot use AES-GCM: javax.crypto.spec.GCMParameterSpec not found"

    .line 29
    .line 30
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0
.end method


# virtual methods
.method public a([B[B)[B
    .locals 9

    .line 1
    array-length v0, p1

    .line 2
    const v1, 0x7fffffe3

    .line 3
    .line 4
    .line 5
    if-gt v0, v1, :cond_2

    .line 6
    .line 7
    array-length v0, p1

    .line 8
    const/16 v1, 0xc

    .line 9
    .line 10
    add-int/2addr v0, v1

    .line 11
    const/16 v2, 0x10

    .line 12
    .line 13
    add-int/2addr v0, v2

    .line 14
    new-array v0, v0, [B

    .line 15
    .line 16
    invoke-static {v1}, Lf7/p;->c(I)[B

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const/4 v4, 0x0

    .line 21
    invoke-static {v3, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    .line 23
    .line 24
    invoke-static {v3}, Lv6/a;->c([B)Ljava/security/spec/AlgorithmParameterSpec;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    sget-object v3, Lv6/a;->b:Ljava/lang/ThreadLocal;

    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Ljavax/crypto/Cipher;

    .line 35
    .line 36
    const/4 v5, 0x1

    .line 37
    iget-object v6, p0, Lv6/a;->a:Ljavax/crypto/SecretKey;

    .line 38
    .line 39
    invoke-virtual {v4, v5, v6, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 40
    .line 41
    .line 42
    if-eqz p2, :cond_0

    .line 43
    .line 44
    array-length v1, p2

    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Ljavax/crypto/Cipher;

    .line 52
    .line 53
    invoke-virtual {v1, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 54
    .line 55
    .line 56
    :cond_0
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    move-object v3, p2

    .line 61
    check-cast v3, Ljavax/crypto/Cipher;

    .line 62
    .line 63
    const/4 v5, 0x0

    .line 64
    array-length v6, p1

    .line 65
    const/16 v8, 0xc

    .line 66
    .line 67
    move-object v4, p1

    .line 68
    move-object v7, v0

    .line 69
    invoke-virtual/range {v3 .. v8}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    array-length v1, p1

    .line 74
    add-int/2addr v1, v2

    .line 75
    if-ne p2, v1, :cond_1

    .line 76
    .line 77
    return-object v0

    .line 78
    :cond_1
    array-length p1, p1

    .line 79
    sub-int/2addr p2, p1

    .line 80
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 81
    .line 82
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    filled-new-array {v0, p2}, [Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    const-string v0, "encryption failed; GCM tag must be %s bytes, but got only %s bytes"

    .line 95
    .line 96
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p1

    .line 104
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 105
    .line 106
    const-string p2, "plaintext too long"

    .line 107
    .line 108
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p1
.end method

.method public b([B[B)[B
    .locals 6

    .line 1
    array-length v0, p1

    .line 2
    const/16 v1, 0x1c

    .line 3
    .line 4
    if-lt v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    const/16 v1, 0xc

    .line 8
    .line 9
    invoke-static {p1, v0, v1}, Lv6/a;->d([BII)Ljava/security/spec/AlgorithmParameterSpec;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v2, Lv6/a;->b:Ljava/lang/ThreadLocal;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Ljavax/crypto/Cipher;

    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    iget-object v5, p0, Lv6/a;->a:Ljavax/crypto/SecretKey;

    .line 23
    .line 24
    invoke-virtual {v3, v4, v5, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 25
    .line 26
    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    array-length v0, p2

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Ljavax/crypto/Cipher;

    .line 37
    .line 38
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    check-cast p2, Ljavax/crypto/Cipher;

    .line 46
    .line 47
    array-length v0, p1

    .line 48
    sub-int/2addr v0, v1

    .line 49
    invoke-virtual {p2, p1, v1, v0}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    return-object p1

    .line 54
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 55
    .line 56
    const-string p2, "ciphertext too short"

    .line 57
    .line 58
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1
.end method
