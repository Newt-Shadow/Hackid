.class final Lcom/google/android/gms/measurement/internal/jd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/os/Bundle;

.field final synthetic d:Lcom/google/android/gms/measurement/internal/kd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/kd;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/jd;->a:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/jd;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/jd;->c:Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/jd;->d:Lcom/google/android/gms/measurement/internal/kd;

    .line 11
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jd;->d:Lcom/google/android/gms/measurement/internal/kd;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/kd;->a:Lcom/google/android/gms/measurement/internal/pd;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/pd;->N0()Lcom/google/android/gms/measurement/internal/yd;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/pd;->f()Lcom/google/android/gms/common/util/d;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v2}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v6

    .line 17
    iget-object v10, p0, Lcom/google/android/gms/measurement/internal/jd;->a:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/jd;->b:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/jd;->c:Landroid/os/Bundle;

    .line 22
    .line 23
    const-string v5, "auto"

    .line 24
    .line 25
    const/4 v8, 0x0

    .line 26
    const/4 v9, 0x1

    .line 27
    move-object v2, v10

    .line 28
    invoke-virtual/range {v1 .. v9}, Lcom/google/android/gms/measurement/internal/yd;->R(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/g0;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v1}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/google/android/gms/measurement/internal/g0;

    .line 37
    .line 38
    invoke-virtual {v0, v1, v10}, Lcom/google/android/gms/measurement/internal/pd;->i(Lcom/google/android/gms/measurement/internal/g0;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
