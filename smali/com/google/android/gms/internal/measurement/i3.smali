.class final Lcom/google/android/gms/internal/measurement/i3;
.super Lcom/google/android/gms/internal/measurement/p3;
.source "SourceFile"


# instance fields
.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/google/android/gms/internal/measurement/q1;

.field final synthetic g:Lcom/google/android/gms/internal/measurement/a4;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/a4;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/q1;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/i3;->e:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/i3;->f:Lcom/google/android/gms/internal/measurement/q1;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/i3;->g:Lcom/google/android/gms/internal/measurement/a4;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/i3;->g:Lcom/google/android/gms/internal/measurement/a4;

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
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/i3;->e:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/i3;->f:Lcom/google/android/gms/internal/measurement/q1;

    .line 16
    .line 17
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/t1;->getMaxUserProperties(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/w1;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method protected final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/i3;->f:Lcom/google/android/gms/internal/measurement/q1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/q1;->zzb(Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
