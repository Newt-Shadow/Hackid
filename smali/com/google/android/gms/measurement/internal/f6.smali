.class public final Lcom/google/android/gms/measurement/internal/f6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/gms/measurement/internal/g6;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/g6;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/f6;->b:Lcom/google/android/gms/measurement/internal/g6;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/f6;->a:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method final synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/f6;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    :try_start_0
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/r0;->d(Landroid/os/IBinder;)Lcom/google/android/gms/internal/measurement/s0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/f6;->b:Lcom/google/android/gms/measurement/internal/g6;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/g6;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string p2, "Install Referrer Service implementation was not found"

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/f6;->b:Lcom/google/android/gms/measurement/internal/g6;

    .line 28
    .line 29
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/g6;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "Install Referrer Service connected"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/w6;->b()Lcom/google/android/gms/measurement/internal/s6;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    new-instance v0, Lcom/google/android/gms/measurement/internal/e6;

    .line 49
    .line 50
    invoke-direct {v0, p0, p1, p0}, Lcom/google/android/gms/measurement/internal/e6;-><init>(Lcom/google/android/gms/measurement/internal/f6;Lcom/google/android/gms/internal/measurement/s0;Landroid/content/ServiceConnection;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/s6;->t(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :catch_0
    move-exception p1

    .line 58
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/f6;->b:Lcom/google/android/gms/measurement/internal/g6;

    .line 59
    .line 60
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/g6;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 61
    .line 62
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    const-string v0, "Exception occurred while calling Install Referrer API"

    .line 71
    .line 72
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/f6;->b:Lcom/google/android/gms/measurement/internal/g6;

    .line 77
    .line 78
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/g6;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    const-string p2, "Install Referrer connection returned with null binder"

    .line 89
    .line 90
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/f6;->b:Lcom/google/android/gms/measurement/internal/g6;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/g6;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v0, "Install Referrer Service disconnected"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
