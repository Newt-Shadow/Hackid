.class final Lcom/google/android/gms/measurement/internal/w8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/google/android/gms/measurement/internal/w9;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/w9;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/w8;->a:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/w8;->b:Lcom/google/android/gms/measurement/internal/w9;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "creation_timestamp"

    .line 4
    .line 5
    const-string v2, "app_id"

    .line 6
    .line 7
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/w8;->b:Lcom/google/android/gms/measurement/internal/w9;

    .line 8
    .line 9
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 13
    .line 14
    .line 15
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/w8;->a:Landroid/os/Bundle;

    .line 16
    .line 17
    invoke-static {v4}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    const-string v5, "name"

    .line 21
    .line 22
    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-static {v5}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 31
    .line 32
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/w6;->g()Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-nez v5, :cond_0

    .line 37
    .line 38
    iget-object v1, v3, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v2, "Conditional property not cleared since app measurement is disabled"

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_0
    const-string v11, ""

    .line 55
    .line 56
    new-instance v15, Lcom/google/android/gms/measurement/internal/ud;

    .line 57
    .line 58
    const-wide/16 v8, 0x0

    .line 59
    .line 60
    const/4 v10, 0x0

    .line 61
    move-object v6, v15

    .line 62
    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/measurement/internal/ud;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :try_start_0
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 66
    .line 67
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    invoke-virtual {v4, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    const-string v5, "expired_event_name"

    .line 76
    .line 77
    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    const-string v5, "expired_event_params"

    .line 82
    .line 83
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    const-string v10, ""

    .line 88
    .line 89
    invoke-virtual {v4, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 90
    .line 91
    .line 92
    move-result-wide v11

    .line 93
    const/4 v13, 0x1

    .line 94
    const/4 v14, 0x1

    .line 95
    invoke-virtual/range {v6 .. v14}, Lcom/google/android/gms/measurement/internal/yd;->R(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/g0;

    .line 96
    .line 97
    .line 98
    move-result-object v26
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    new-instance v5, Lcom/google/android/gms/measurement/internal/i;

    .line 100
    .line 101
    invoke-virtual {v4, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v13

    .line 105
    invoke-virtual {v4, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 106
    .line 107
    .line 108
    move-result-wide v16

    .line 109
    const-string v1, "active"

    .line 110
    .line 111
    invoke-virtual {v4, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v18

    .line 115
    const-string v1, "trigger_event_name"

    .line 116
    .line 117
    invoke-virtual {v4, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v19

    .line 121
    const-string v1, "trigger_timeout"

    .line 122
    .line 123
    invoke-virtual {v4, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 124
    .line 125
    .line 126
    move-result-wide v21

    .line 127
    const-string v1, "time_to_live"

    .line 128
    .line 129
    invoke-virtual {v4, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 130
    .line 131
    .line 132
    move-result-wide v24

    .line 133
    const-string v14, ""

    .line 134
    .line 135
    const/16 v20, 0x0

    .line 136
    .line 137
    const/16 v23, 0x0

    .line 138
    .line 139
    move-object v12, v5

    .line 140
    invoke-direct/range {v12 .. v26}, Lcom/google/android/gms/measurement/internal/i;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/ud;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/g0;JLcom/google/android/gms/measurement/internal/g0;JLcom/google/android/gms/measurement/internal/g0;)V

    .line 141
    .line 142
    .line 143
    iget-object v1, v3, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 144
    .line 145
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->J()Lcom/google/android/gms/measurement/internal/vb;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v1, v5}, Lcom/google/android/gms/measurement/internal/vb;->d0(Lcom/google/android/gms/measurement/internal/i;)V

    .line 150
    .line 151
    .line 152
    :catch_0
    return-void
.end method
