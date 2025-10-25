.class final Lcom/google/android/gms/internal/measurement/r3;
.super Lcom/google/android/gms/internal/measurement/p3;
.source "SourceFile"


# instance fields
.field final synthetic e:Landroid/os/Bundle;

.field final synthetic f:Landroid/app/Activity;

.field final synthetic g:Lcom/google/android/gms/internal/measurement/z3;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/z3;Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/r3;->e:Landroid/os/Bundle;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/r3;->f:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/r3;->g:Lcom/google/android/gms/internal/measurement/z3;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/z3;->a:Lcom/google/android/gms/internal/measurement/a4;

    .line 11
    .line 12
    const/4 p2, 0x1

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/p3;-><init>(Lcom/google/android/gms/internal/measurement/a4;Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r3;->e:Landroid/os/Bundle;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "com.google.app_measurement.screen_service"

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    instance-of v3, v0, Landroid/os/Bundle;

    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    check-cast v0, Landroid/os/Bundle;

    .line 27
    .line 28
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v1, 0x0

    .line 33
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r3;->g:Lcom/google/android/gms/internal/measurement/z3;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/z3;->a:Lcom/google/android/gms/internal/measurement/a4;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/a4;->n()Lcom/google/android/gms/internal/measurement/t1;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcom/google/android/gms/internal/measurement/t1;

    .line 46
    .line 47
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/r3;->f:Landroid/app/Activity;

    .line 48
    .line 49
    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/p3;->b:J

    .line 50
    .line 51
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/i2;->g(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/i2;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-interface {v0, v2, v1, v3, v4}, Lcom/google/android/gms/internal/measurement/t1;->onActivityCreatedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/i2;Landroid/os/Bundle;J)V

    .line 56
    .line 57
    .line 58
    return-void
.end method
