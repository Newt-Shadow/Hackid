.class final Lcom/google/android/gms/measurement/internal/sa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/ae;

.field final synthetic b:Lcom/google/android/gms/internal/measurement/w1;

.field final synthetic c:Lcom/google/android/gms/measurement/internal/vb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/vb;Lcom/google/android/gms/measurement/internal/ae;Lcom/google/android/gms/internal/measurement/w1;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/sa;->a:Lcom/google/android/gms/measurement/internal/ae;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/sa;->b:Lcom/google/android/gms/internal/measurement/w1;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/sa;->c:Lcom/google/android/gms/measurement/internal/vb;

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
    .locals 6

    .line 1
    const-string v0, "Failed to get app instance id"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/sa;->c:Lcom/google/android/gms/measurement/internal/vb;

    .line 5
    .line 6
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 7
    .line 8
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/d6;->w()Lcom/google/android/gms/measurement/internal/d8;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    sget-object v5, Li6/s;->c:Li6/s;

    .line 17
    .line 18
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/d8;->o(Li6/s;)Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-nez v4, :cond_0

    .line 23
    .line 24
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/p5;->t()Lcom/google/android/gms/measurement/internal/n5;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    const-string v5, "Analytics storage consent denied; will not get app instance id"

    .line 33
    .line 34
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->B()Lcom/google/android/gms/measurement/internal/w9;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/w9;->E(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d6;->h:Lcom/google/android/gms/measurement/internal/c6;

    .line 51
    .line 52
    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/c6;->b(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/vb;->N()Li6/e;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    if-nez v4, :cond_1

    .line 61
    .line 62
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    .line 73
    :goto_0
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/sa;->b:Lcom/google/android/gms/internal/measurement/w1;

    .line 78
    .line 79
    :goto_1
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/yd;->a0(Lcom/google/android/gms/internal/measurement/w1;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/sa;->a:Lcom/google/android/gms/measurement/internal/ae;

    .line 84
    .line 85
    invoke-static {v5}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    invoke-interface {v4, v5}, Li6/e;->U0(Lcom/google/android/gms/measurement/internal/ae;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    if-eqz v1, :cond_2

    .line 93
    .line 94
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 95
    .line 96
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/w6;->B()Lcom/google/android/gms/measurement/internal/w9;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v4, v1}, Lcom/google/android/gms/measurement/internal/w9;->E(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/d6;->h:Lcom/google/android/gms/measurement/internal/c6;

    .line 108
    .line 109
    invoke-virtual {v3, v1}, Lcom/google/android/gms/measurement/internal/c6;->b(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/vb;->J()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :catchall_0
    move-exception v0

    .line 117
    goto :goto_3

    .line 118
    :catch_0
    move-exception v2

    .line 119
    :try_start_2
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/sa;->c:Lcom/google/android/gms/measurement/internal/vb;

    .line 120
    .line 121
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 122
    .line 123
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-virtual {v3, v0, v2}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    .line 133
    .line 134
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/sa;->c:Lcom/google/android/gms/measurement/internal/vb;

    .line 135
    .line 136
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/sa;->b:Lcom/google/android/gms/internal/measurement/w1;

    .line 137
    .line 138
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    goto :goto_1

    .line 145
    :goto_3
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/sa;->c:Lcom/google/android/gms/measurement/internal/vb;

    .line 146
    .line 147
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/sa;->b:Lcom/google/android/gms/internal/measurement/w1;

    .line 148
    .line 149
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 150
    .line 151
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/yd;->a0(Lcom/google/android/gms/internal/measurement/w1;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw v0
.end method
