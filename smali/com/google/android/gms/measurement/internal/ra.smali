.class final Lcom/google/android/gms/measurement/internal/ra;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic b:Lcom/google/android/gms/measurement/internal/ae;

.field final synthetic c:Lcom/google/android/gms/measurement/internal/vb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/vb;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/ae;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/ra;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/ra;->b:Lcom/google/android/gms/measurement/internal/ae;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ra;->c:Lcom/google/android/gms/measurement/internal/vb;

    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ra;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ra;->c:Lcom/google/android/gms/measurement/internal/vb;

    .line 5
    .line 6
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 7
    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/d6;->w()Lcom/google/android/gms/measurement/internal/d8;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    sget-object v4, Li6/s;->c:Li6/s;

    .line 17
    .line 18
    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/d8;->o(Li6/s;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p5;->t()Lcom/google/android/gms/measurement/internal/n5;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const-string v4, "Analytics storage consent denied; will not get app instance id"

    .line 33
    .line 34
    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->B()Lcom/google/android/gms/measurement/internal/w9;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/w9;->E(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d6;->h:Lcom/google/android/gms/measurement/internal/c6;

    .line 52
    .line 53
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/c6;->b(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 60
    .line 61
    .line 62
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 63
    return-void

    .line 64
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/vb;->N()Li6/e;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    if-nez v3, :cond_1

    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    const-string v2, "Failed to get app instance id"

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    .line 82
    .line 83
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 84
    .line 85
    .line 86
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 87
    return-void

    .line 88
    :cond_1
    :try_start_4
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/ra;->b:Lcom/google/android/gms/measurement/internal/ae;

    .line 89
    .line 90
    invoke-static {v4}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    invoke-interface {v3, v4}, Li6/e;->U0(Lcom/google/android/gms/measurement/internal/ae;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    check-cast v3, Ljava/lang/String;

    .line 105
    .line 106
    if-eqz v3, :cond_2

    .line 107
    .line 108
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 109
    .line 110
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/w6;->B()Lcom/google/android/gms/measurement/internal/w9;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-virtual {v4, v3}, Lcom/google/android/gms/measurement/internal/w9;->E(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d6;->h:Lcom/google/android/gms/measurement/internal/c6;

    .line 122
    .line 123
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/c6;->b(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/vb;->J()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 127
    .line 128
    .line 129
    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ra;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 130
    .line 131
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :catchall_0
    move-exception v1

    .line 136
    goto :goto_2

    .line 137
    :catch_0
    move-exception v1

    .line 138
    :try_start_6
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/ra;->c:Lcom/google/android/gms/measurement/internal/vb;

    .line 139
    .line 140
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 141
    .line 142
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    const-string v3, "Failed to get app instance id"

    .line 151
    .line 152
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 153
    .line 154
    .line 155
    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ra;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 156
    .line 157
    goto :goto_0

    .line 158
    :goto_1
    monitor-exit v0

    .line 159
    return-void

    .line 160
    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/ra;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 161
    .line 162
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 163
    .line 164
    .line 165
    throw v1

    .line 166
    :catchall_1
    move-exception v1

    .line 167
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 168
    throw v1
.end method
