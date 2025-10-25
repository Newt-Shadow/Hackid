.class final Lcom/google/android/gms/measurement/internal/fb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/measurement/internal/ae;

.field final synthetic d:Lcom/google/android/gms/internal/measurement/w1;

.field final synthetic e:Lcom/google/android/gms/measurement/internal/vb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/vb;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/ae;Lcom/google/android/gms/internal/measurement/w1;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/fb;->a:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/fb;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/fb;->c:Lcom/google/android/gms/measurement/internal/ae;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/fb;->d:Lcom/google/android/gms/internal/measurement/w1;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/fb;->e:Lcom/google/android/gms/measurement/internal/vb;

    .line 13
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fb;->e:Lcom/google/android/gms/measurement/internal/vb;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/vb;->N()Li6/e;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string v3, "Failed to get conditional properties; not connected to service"

    .line 25
    .line 26
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/fb;->a:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/fb;->b:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/fb;->d:Lcom/google/android/gms/internal/measurement/w1;

    .line 38
    .line 39
    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/yd;->g0(Lcom/google/android/gms/internal/measurement/w1;Ljava/util/ArrayList;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/fb;->c:Lcom/google/android/gms/measurement/internal/ae;

    .line 44
    .line 45
    invoke-static {v3}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/fb;->a:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/fb;->b:Ljava/lang/String;

    .line 51
    .line 52
    invoke-interface {v2, v4, v5, v3}, Li6/e;->V0(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/ae;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/yd;->h0(Ljava/util/List;)Ljava/util/ArrayList;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/vb;->J()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catchall_0
    move-exception v1

    .line 65
    goto :goto_2

    .line 66
    :catch_0
    move-exception v1

    .line 67
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/fb;->e:Lcom/google/android/gms/measurement/internal/vb;

    .line 68
    .line 69
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    const-string v3, "Failed to get conditional properties; remote exception"

    .line 80
    .line 81
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/fb;->a:Ljava/lang/String;

    .line 82
    .line 83
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/fb;->b:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/google/android/gms/measurement/internal/n5;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    .line 87
    .line 88
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fb;->e:Lcom/google/android/gms/measurement/internal/vb;

    .line 89
    .line 90
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/fb;->d:Lcom/google/android/gms/internal/measurement/w1;

    .line 91
    .line 92
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    goto :goto_0

    .line 99
    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/fb;->e:Lcom/google/android/gms/measurement/internal/vb;

    .line 100
    .line 101
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/fb;->d:Lcom/google/android/gms/internal/measurement/w1;

    .line 102
    .line 103
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 104
    .line 105
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/yd;->g0(Lcom/google/android/gms/internal/measurement/w1;Ljava/util/ArrayList;)V

    .line 110
    .line 111
    .line 112
    throw v1
.end method
