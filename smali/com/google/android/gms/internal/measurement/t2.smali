.class final Lcom/google/android/gms/internal/measurement/t2;
.super Lcom/google/android/gms/internal/measurement/p3;
.source "SourceFile"


# instance fields
.field final synthetic e:J

.field final synthetic f:Lcom/google/android/gms/internal/measurement/a4;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/a4;J)V
    .locals 0

    .line 1
    iput-wide p2, p0, Lcom/google/android/gms/internal/measurement/t2;->e:J

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/t2;->f:Lcom/google/android/gms/internal/measurement/a4;

    .line 7
    .line 8
    const/4 p2, 0x1

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/p3;-><init>(Lcom/google/android/gms/internal/measurement/a4;Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t2;->f:Lcom/google/android/gms/internal/measurement/a4;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/a4;->n()Lcom/google/android/gms/internal/measurement/t1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/google/android/gms/internal/measurement/t1;

    .line 12
    .line 13
    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/t2;->e:J

    .line 14
    .line 15
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/t1;->setSessionTimeoutDuration(J)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
