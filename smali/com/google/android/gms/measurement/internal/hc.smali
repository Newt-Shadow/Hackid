.class final Lcom/google/android/gms/measurement/internal/hc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/gms/measurement/internal/gc;

.field final synthetic b:Lcom/google/android/gms/measurement/internal/mc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/mc;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/hc;->b:Lcom/google/android/gms/measurement/internal/mc;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hc;->b:Lcom/google/android/gms/measurement/internal/mc;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/hc;->a:Lcom/google/android/gms/measurement/internal/gc;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/mc;->t()Landroid/os/Handler;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d6;->t:Lcom/google/android/gms/measurement/internal/y5;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/y5;->b(Z)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/mc;->o(Z)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const/4 v3, 0x0

    .line 37
    sget-object v4, Lcom/google/android/gms/measurement/internal/c5;->U0:Lcom/google/android/gms/measurement/internal/b5;

    .line 38
    .line 39
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/b5;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->B()Lcom/google/android/gms/measurement/internal/w9;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w9;->v0()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const-string v2, "Retrying trigger URI registration in foreground"

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->B()Lcom/google/android/gms/measurement/internal/w9;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w9;->x0()V

    .line 75
    .line 76
    .line 77
    :cond_1
    return-void
.end method

.method final b(J)V
    .locals 8

    .line 1
    new-instance v6, Lcom/google/android/gms/measurement/internal/gc;

    .line 2
    .line 3
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/hc;->b:Lcom/google/android/gms/measurement/internal/mc;

    .line 4
    .line 5
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    move-object v0, v6

    .line 16
    move-object v1, p0

    .line 17
    move-wide v4, p1

    .line 18
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/gc;-><init>(Lcom/google/android/gms/measurement/internal/hc;JJ)V

    .line 19
    .line 20
    .line 21
    iput-object v6, p0, Lcom/google/android/gms/measurement/internal/hc;->a:Lcom/google/android/gms/measurement/internal/gc;

    .line 22
    .line 23
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/mc;->t()Landroid/os/Handler;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/hc;->a:Lcom/google/android/gms/measurement/internal/gc;

    .line 28
    .line 29
    const-wide/16 v0, 0x7d0

    .line 30
    .line 31
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method
