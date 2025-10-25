.class final Lcom/google/android/gms/common/api/p;
.super Lcom/google/android/gms/common/api/internal/BasePendingResult;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;-><init>(Lcom/google/android/gms/common/api/f;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected final c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/k;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "Creating failed results is not supported"

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method
