.class final Lcom/google/android/gms/measurement/internal/eb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/google/android/gms/measurement/internal/ae;

.field final synthetic e:Lcom/google/android/gms/measurement/internal/vb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/vb;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/ae;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/eb;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/eb;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/eb;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/eb;->d:Lcom/google/android/gms/measurement/internal/ae;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/eb;->e:Lcom/google/android/gms/measurement/internal/vb;

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
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/eb;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/eb;->e:Lcom/google/android/gms/measurement/internal/vb;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/vb;->N()Li6/e;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-string v3, "(legacy) Failed to get conditional properties; not connected to service"

    .line 24
    .line 25
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/eb;->b:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/eb;->c:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/google/android/gms/measurement/internal/n5;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 40
    .line 41
    .line 42
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 43
    return-void

    .line 44
    :cond_0
    :try_start_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/eb;->d:Lcom/google/android/gms/measurement/internal/ae;

    .line 51
    .line 52
    invoke-static {v4}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/eb;->b:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/eb;->c:Ljava/lang/String;

    .line 58
    .line 59
    invoke-interface {v3, v5, v6, v4}, Li6/e;->V0(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/ae;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/eb;->b:Ljava/lang/String;

    .line 68
    .line 69
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/eb;->c:Ljava/lang/String;

    .line 70
    .line 71
    invoke-interface {v3, v1, v4, v5}, Li6/e;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    :goto_0
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/vb;->J()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    .line 80
    .line 81
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/eb;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 82
    .line 83
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :catchall_0
    move-exception v1

    .line 88
    goto :goto_3

    .line 89
    :catch_0
    move-exception v2

    .line 90
    :try_start_4
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/eb;->e:Lcom/google/android/gms/measurement/internal/vb;

    .line 91
    .line 92
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 93
    .line 94
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    const-string v4, "(legacy) Failed to get conditional properties; remote exception"

    .line 103
    .line 104
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/eb;->b:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v3, v4, v1, v5, v2}, Lcom/google/android/gms/measurement/internal/n5;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/eb;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 110
    .line 111
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 116
    .line 117
    .line 118
    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/eb;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :goto_2
    monitor-exit v0

    .line 122
    return-void

    .line 123
    :goto_3
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/eb;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 124
    .line 125
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 126
    .line 127
    .line 128
    throw v1

    .line 129
    :catchall_1
    move-exception v1

    .line 130
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 131
    throw v1
.end method
