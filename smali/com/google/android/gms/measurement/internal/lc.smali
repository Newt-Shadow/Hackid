.class final Lcom/google/android/gms/measurement/internal/lc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/mc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/mc;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/lc;->a:Lcom/google/android/gms/measurement/internal/mc;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/lc;->a:Lcom/google/android/gms/measurement/internal/mc;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-interface {v2}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/d6;->A(J)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d6;->m:Lcom/google/android/gms/measurement/internal/y5;

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/y5;->b(Z)V

    .line 34
    .line 35
    .line 36
    new-instance v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 37
    .line 38
    invoke-direct {v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-static {v1}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 42
    .line 43
    .line 44
    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 45
    .line 46
    const/16 v2, 0x64

    .line 47
    .line 48
    if-ne v1, v2, :cond_0

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const-string v2, "Detected application was in foreground"

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    .line 68
    .line 69
    .line 70
    move-result-wide v0

    .line 71
    const/4 v2, 0x0

    .line 72
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/lc;->c(JZ)V

    .line 73
    .line 74
    .line 75
    :cond_0
    return-void
.end method

.method final b(JZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/lc;->a:Lcom/google/android/gms/measurement/internal/mc;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/mc;->q()V

    .line 7
    .line 8
    .line 9
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2, p1, p2}, Lcom/google/android/gms/measurement/internal/d6;->A(J)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d6;->m:Lcom/google/android/gms/measurement/internal/y5;

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/y5;->b(Z)V

    .line 29
    .line 30
    .line 31
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->L()Lcom/google/android/gms/measurement/internal/f5;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f5;->p()V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d6;->q:Lcom/google/android/gms/measurement/internal/a6;

    .line 45
    .line 46
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/a6;->b(J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d6;->m:Lcom/google/android/gms/measurement/internal/y5;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y5;->a()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/lc;->c(JZ)V

    .line 62
    .line 63
    .line 64
    :cond_1
    return-void
.end method

.method final c(JZ)V
    .locals 10

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/lc;->a:Lcom/google/android/gms/measurement/internal/mc;

    .line 2
    .line 3
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p3, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->g()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    :cond_0
    iget-object v0, p3, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d6;->q:Lcom/google/android/gms/measurement/internal/a6;

    .line 23
    .line 24
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/measurement/internal/a6;->b(J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->elapsedRealtime()J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v2, "Session started, time"

    .line 48
    .line 49
    invoke-virtual {v3, v2, v1}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    const-wide/16 v1, 0x3e8

    .line 53
    .line 54
    div-long v1, p1, v1

    .line 55
    .line 56
    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 57
    .line 58
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/w6;->B()Lcom/google/android/gms/measurement/internal/w9;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    const-string v4, "auto"

    .line 67
    .line 68
    const-string v5, "_sid"

    .line 69
    .line 70
    move-object v6, v1

    .line 71
    move-wide v7, p1

    .line 72
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/w9;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d6;->r:Lcom/google/android/gms/measurement/internal/a6;

    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 82
    .line 83
    .line 84
    move-result-wide v3

    .line 85
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/a6;->b(J)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d6;->m:Lcom/google/android/gms/measurement/internal/y5;

    .line 93
    .line 94
    const/4 v3, 0x0

    .line 95
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/y5;->b(Z)V

    .line 96
    .line 97
    .line 98
    new-instance v9, Landroid/os/Bundle;

    .line 99
    .line 100
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 104
    .line 105
    .line 106
    move-result-wide v1

    .line 107
    const-string v3, "_sid"

    .line 108
    .line 109
    invoke-virtual {v9, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/w6;->B()Lcom/google/android/gms/measurement/internal/w9;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    const-string v5, "auto"

    .line 117
    .line 118
    const-string v6, "_s"

    .line 119
    .line 120
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/w9;->u(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d6;->w:Lcom/google/android/gms/measurement/internal/c6;

    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c6;->a()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-nez v1, :cond_1

    .line 138
    .line 139
    new-instance v7, Landroid/os/Bundle;

    .line 140
    .line 141
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 142
    .line 143
    .line 144
    const-string v1, "_ffr"

    .line 145
    .line 146
    invoke-virtual {v7, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/w6;->B()Lcom/google/android/gms/measurement/internal/w9;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    const-string v3, "auto"

    .line 154
    .line 155
    const-string v4, "_ssr"

    .line 156
    .line 157
    move-wide v5, p1

    .line 158
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/w9;->u(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    .line 159
    .line 160
    .line 161
    :cond_1
    :goto_0
    return-void
.end method
