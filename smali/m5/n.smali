.class public final Lm5/n;
.super Lcom/google/android/gms/common/api/g;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/common/api/internal/BasePendingResult;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/g;-><init>()V

    check-cast p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;

    iput-object p1, p0, Lm5/n;->a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/h$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm5/n;->a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/h;->a(Lcom/google/android/gms/common/api/h$a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lm5/n;->a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->b(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/k;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
