.class final Lcom/google/android/gms/internal/measurement/o3;
.super Lcom/google/android/gms/internal/measurement/p3;
.source "SourceFile"


# instance fields
.field final synthetic e:Ljava/lang/Long;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Landroid/os/Bundle;

.field final synthetic i:Z

.field final synthetic j:Z

.field final synthetic k:Lcom/google/android/gms/internal/measurement/a4;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/a4;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZ)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/o3;->e:Ljava/lang/Long;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/o3;->f:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/o3;->g:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/o3;->h:Landroid/os/Bundle;

    .line 8
    .line 9
    iput-boolean p6, p0, Lcom/google/android/gms/internal/measurement/o3;->i:Z

    .line 10
    .line 11
    iput-boolean p7, p0, Lcom/google/android/gms/internal/measurement/o3;->j:Z

    .line 12
    .line 13
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/o3;->k:Lcom/google/android/gms/internal/measurement/a4;

    .line 17
    .line 18
    const/4 p2, 0x1

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/p3;-><init>(Lcom/google/android/gms/internal/measurement/a4;Z)V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method final a()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/o3;->e:Ljava/lang/Long;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/p3;->a:J

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    :goto_0
    move-wide v8, v0

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/o3;->k:Lcom/google/android/gms/internal/measurement/a4;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/a4;->n()Lcom/google/android/gms/internal/measurement/t1;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    move-object v2, v0

    .line 24
    check-cast v2, Lcom/google/android/gms/internal/measurement/t1;

    .line 25
    .line 26
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/o3;->f:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/o3;->g:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/o3;->h:Landroid/os/Bundle;

    .line 31
    .line 32
    iget-boolean v6, p0, Lcom/google/android/gms/internal/measurement/o3;->i:Z

    .line 33
    .line 34
    iget-boolean v7, p0, Lcom/google/android/gms/internal/measurement/o3;->j:Z

    .line 35
    .line 36
    invoke-interface/range {v2 .. v9}, Lcom/google/android/gms/internal/measurement/t1;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
