.class final Lcom/google/android/gms/measurement/internal/gd;
.super Lcom/google/android/gms/measurement/internal/x;
.source "SourceFile"


# instance fields
.field final synthetic e:Lcom/google/android/gms/measurement/internal/pd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/pd;Lcom/google/android/gms/measurement/internal/b8;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/gd;->e:Lcom/google/android/gms/measurement/internal/pd;

    .line 5
    .line 6
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/x;-><init>(Lcom/google/android/gms/measurement/internal/b8;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/gd;->e:Lcom/google/android/gms/measurement/internal/pd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/pd;->b()Lcom/google/android/gms/measurement/internal/s6;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/pd;->y0()Ljava/util/Deque;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Ljava/lang/String;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/pd;->f()Lcom/google/android/gms/common/util/d;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-interface {v2}, Lcom/google/android/gms/common/util/d;->elapsedRealtime()J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/pd;->z0(J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/pd;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const-string v3, "Sending trigger URI notification to app"

    .line 42
    .line 43
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    new-instance v2, Landroid/content/Intent;

    .line 47
    .line 48
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v3, "com.google.android.gms.measurement.TRIGGERS_AVAILABLE"

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/pd;->e()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {v1, v2}, Lcom/google/android/gms/measurement/internal/pd;->w0(Landroid/content/Context;Landroid/content/Intent;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/pd;->v0()V

    .line 67
    .line 68
    .line 69
    return-void
.end method
