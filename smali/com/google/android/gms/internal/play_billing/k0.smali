.class final Lcom/google/android/gms/internal/play_billing/k0;
.super Lcom/google/android/gms/internal/play_billing/z;
.source "SourceFile"


# instance fields
.field private final b:Ljava/security/MessageDigest;

.field private final c:I

.field private d:Z


# direct methods
.method synthetic constructor <init>(Ljava/security/MessageDigest;ILcom/google/android/gms/internal/play_billing/j0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/z;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/k0;->b:Ljava/security/MessageDigest;

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/gms/internal/play_billing/k0;->c:I

    .line 7
    .line 8
    return-void
.end method

.method private final c()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/k0;->d:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v1, "Cannot re-use a Hasher after calling hash() on it"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method


# virtual methods
.method protected final b([BII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/k0;->c()V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/google/android/gms/internal/play_billing/k0;->b:Ljava/security/MessageDigest;

    .line 5
    .line 6
    const/4 p3, 0x0

    .line 7
    const/4 v0, 0x2

    .line 8
    invoke-virtual {p2, p1, p3, v0}, Ljava/security/MessageDigest;->update([BII)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final f()Lcom/google/android/gms/internal/play_billing/e0;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/k0;->c()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/k0;->d:Z

    .line 6
    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/k0;->c:I

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/k0;->b:Ljava/security/MessageDigest;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/security/MessageDigest;->getDigestLength()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/k0;->b:Ljava/security/MessageDigest;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget v1, Lcom/google/android/gms/internal/play_billing/e0;->b:I

    .line 24
    .line 25
    new-instance v1, Lcom/google/android/gms/internal/play_billing/d0;

    .line 26
    .line 27
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/play_billing/d0;-><init>([B)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/k0;->b:Ljava/security/MessageDigest;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sget v1, Lcom/google/android/gms/internal/play_billing/e0;->b:I

    .line 42
    .line 43
    new-instance v1, Lcom/google/android/gms/internal/play_billing/d0;

    .line 44
    .line 45
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/play_billing/d0;-><init>([B)V

    .line 46
    .line 47
    .line 48
    :goto_0
    return-object v1
.end method
