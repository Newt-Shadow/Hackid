.class final Lcom/google/android/gms/internal/measurement/v0;
.super Lcom/google/android/gms/internal/measurement/b1;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:B

.field private c:I

.field private d:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/b1;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)Lcom/google/android/gms/internal/measurement/b1;
    .locals 0

    .line 1
    const/4 p1, 0x1

    iput-byte p1, p0, Lcom/google/android/gms/internal/measurement/v0;->b:B

    return-object p0
.end method

.method public final b()Lcom/google/android/gms/internal/measurement/d1;
    .locals 9

    .line 1
    iget-byte v0, p0, Lcom/google/android/gms/internal/measurement/v0;->b:B

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/v0;->a:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/measurement/v0;->c:I

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget v0, p0, Lcom/google/android/gms/internal/measurement/v0;->d:I

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/w0;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/v0;->a:Ljava/lang/String;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    iget v4, p0, Lcom/google/android/gms/internal/measurement/v0;->c:I

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    const/4 v6, 0x0

    .line 28
    iget v7, p0, Lcom/google/android/gms/internal/measurement/v0;->d:I

    .line 29
    .line 30
    const/4 v8, 0x0

    .line 31
    move-object v1, v0

    .line 32
    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/measurement/w0;-><init>(Ljava/lang/String;ZILcom/google/android/gms/internal/measurement/t0;Lcom/google/android/gms/internal/measurement/u0;I[B)V

    .line 33
    .line 34
    .line 35
    return-object v0

    .line 36
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/v0;->a:Ljava/lang/String;

    .line 42
    .line 43
    if-nez v1, :cond_2

    .line 44
    .line 45
    const-string v1, " fileOwner"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    :cond_2
    iget-byte v1, p0, Lcom/google/android/gms/internal/measurement/v0;->b:B

    .line 51
    .line 52
    if-nez v1, :cond_3

    .line 53
    .line 54
    const-string v1, " hasDifferentDmaOwner"

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    :cond_3
    iget v1, p0, Lcom/google/android/gms/internal/measurement/v0;->c:I

    .line 60
    .line 61
    if-nez v1, :cond_4

    .line 62
    .line 63
    const-string v1, " fileChecks"

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    :cond_4
    iget v1, p0, Lcom/google/android/gms/internal/measurement/v0;->d:I

    .line 69
    .line 70
    if-nez v1, :cond_5

    .line 71
    .line 72
    const-string v1, " filePurpose"

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const-string v2, "Missing required properties:"

    .line 84
    .line 85
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw v1
.end method

.method final c(I)Lcom/google/android/gms/internal/measurement/b1;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/measurement/v0;->c:I

    return-object p0
.end method

.method public final d(I)Lcom/google/android/gms/internal/measurement/b1;
    .locals 0

    .line 1
    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/v0;->d:I

    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/b1;
    .locals 0

    .line 1
    const-string p1, ""

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/v0;->a:Ljava/lang/String;

    return-object p0
.end method
