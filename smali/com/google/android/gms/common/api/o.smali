.class final Lcom/google/android/gms/common/api/o;
.super Lcom/google/android/gms/common/api/internal/BasePendingResult;
.source "SourceFile"


# instance fields
.field private final n:Lcom/google/android/gms/common/api/k;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;-><init>(Lcom/google/android/gms/common/api/f;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/common/api/o;->n:Lcom/google/android/gms/common/api/k;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected final c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/k;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/common/api/o;->n:Lcom/google/android/gms/common/api/k;

    return-object p1
.end method
