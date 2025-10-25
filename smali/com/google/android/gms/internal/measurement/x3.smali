.class final Lcom/google/android/gms/internal/measurement/x3;
.super Lcom/google/android/gms/internal/measurement/p3;
.source "SourceFile"


# instance fields
.field final synthetic e:Landroid/app/Activity;

.field final synthetic f:Lcom/google/android/gms/internal/measurement/z3;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/z3;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/x3;->e:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/x3;->f:Lcom/google/android/gms/internal/measurement/z3;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/z3;->a:Lcom/google/android/gms/internal/measurement/a4;

    .line 9
    .line 10
    const/4 p2, 0x1

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/p3;-><init>(Lcom/google/android/gms/internal/measurement/a4;Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/x3;->f:Lcom/google/android/gms/internal/measurement/z3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/z3;->a:Lcom/google/android/gms/internal/measurement/a4;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/a4;->n()Lcom/google/android/gms/internal/measurement/t1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/google/android/gms/internal/measurement/t1;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/x3;->e:Landroid/app/Activity;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/i2;->g(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/i2;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/p3;->b:J

    .line 22
    .line 23
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/t1;->onActivityDestroyedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/i2;J)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
