.class final Lcom/google/android/gms/measurement/internal/ma;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/measurement/internal/ae;

.field final synthetic d:Z

.field final synthetic e:Lcom/google/android/gms/internal/measurement/w1;

.field final synthetic f:Lcom/google/android/gms/measurement/internal/vb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/vb;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/ae;ZLcom/google/android/gms/internal/measurement/w1;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/ma;->a:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/ma;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/ma;->c:Lcom/google/android/gms/measurement/internal/ae;

    .line 6
    .line 7
    iput-boolean p5, p0, Lcom/google/android/gms/measurement/internal/ma;->d:Z

    .line 8
    .line 9
    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/ma;->e:Lcom/google/android/gms/internal/measurement/w1;

    .line 10
    .line 11
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ma;->f:Lcom/google/android/gms/measurement/internal/vb;

    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ma;->f:Lcom/google/android/gms/measurement/internal/vb;

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
    const-string v3, "Failed to get user properties; not connected to service"

    .line 25
    .line 26
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/ma;->a:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/ma;->b:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
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
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/ma;->e:Lcom/google/android/gms/internal/measurement/w1;

    .line 38
    .line 39
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/yd;->f0(Lcom/google/android/gms/internal/measurement/w1;Landroid/os/Bundle;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/ma;->c:Lcom/google/android/gms/measurement/internal/ae;

    .line 44
    .line 45
    invoke-static {v3}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/ma;->a:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/ma;->b:Ljava/lang/String;

    .line 51
    .line 52
    iget-boolean v6, p0, Lcom/google/android/gms/measurement/internal/ma;->d:Z

    .line 53
    .line 54
    invoke-interface {v2, v4, v5, v6, v3}, Li6/e;->P0(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/ae;)Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    sget v3, Lcom/google/android/gms/measurement/internal/yd;->k:I

    .line 59
    .line 60
    new-instance v3, Landroid/os/Bundle;

    .line 61
    .line 62
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 63
    .line 64
    .line 65
    if-nez v2, :cond_1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_5

    .line 77
    .line 78
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    check-cast v4, Lcom/google/android/gms/measurement/internal/ud;

    .line 83
    .line 84
    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/ud;->e:Ljava/lang/String;

    .line 85
    .line 86
    if-eqz v5, :cond_3

    .line 87
    .line 88
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/ud;->b:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/ud;->d:Ljava/lang/Long;

    .line 95
    .line 96
    if-eqz v5, :cond_4

    .line 97
    .line 98
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/ud;->b:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 101
    .line 102
    .line 103
    move-result-wide v5

    .line 104
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_4
    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/ud;->g:Ljava/lang/Double;

    .line 109
    .line 110
    if-eqz v5, :cond_2

    .line 111
    .line 112
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/ud;->b:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    .line 115
    .line 116
    .line 117
    move-result-wide v5

    .line 118
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_5
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/vb;->J()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 123
    .line 124
    .line 125
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 126
    .line 127
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ma;->e:Lcom/google/android/gms/internal/measurement/w1;

    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/measurement/internal/yd;->f0(Lcom/google/android/gms/internal/measurement/w1;Landroid/os/Bundle;)V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    goto :goto_2

    .line 139
    :catchall_0
    move-exception v1

    .line 140
    goto :goto_3

    .line 141
    :catch_1
    move-exception v1

    .line 142
    move-object v3, v0

    .line 143
    move-object v0, v1

    .line 144
    :goto_2
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ma;->f:Lcom/google/android/gms/measurement/internal/vb;

    .line 145
    .line 146
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 147
    .line 148
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    const-string v2, "Failed to get user properties; remote exception"

    .line 157
    .line 158
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/ma;->a:Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {v1, v2, v4, v0}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 161
    .line 162
    .line 163
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ma;->f:Lcom/google/android/gms/measurement/internal/vb;

    .line 164
    .line 165
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ma;->e:Lcom/google/android/gms/internal/measurement/w1;

    .line 166
    .line 167
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 168
    .line 169
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/measurement/internal/yd;->f0(Lcom/google/android/gms/internal/measurement/w1;Landroid/os/Bundle;)V

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :catchall_1
    move-exception v0

    .line 178
    move-object v1, v0

    .line 179
    move-object v0, v3

    .line 180
    :goto_3
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/ma;->f:Lcom/google/android/gms/measurement/internal/vb;

    .line 181
    .line 182
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/ma;->e:Lcom/google/android/gms/internal/measurement/w1;

    .line 183
    .line 184
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 185
    .line 186
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/yd;->f0(Lcom/google/android/gms/internal/measurement/w1;Landroid/os/Bundle;)V

    .line 191
    .line 192
    .line 193
    throw v1
.end method
