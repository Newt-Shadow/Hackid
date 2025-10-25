.class final Lcom/google/android/gms/internal/measurement/u2;
.super Lcom/google/android/gms/internal/measurement/p3;
.source "SourceFile"


# instance fields
.field final synthetic e:Landroid/content/Context;

.field final synthetic f:Landroid/os/Bundle;

.field final synthetic g:Lcom/google/android/gms/internal/measurement/a4;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/a4;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/u2;->e:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/u2;->f:Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/u2;->g:Lcom/google/android/gms/internal/measurement/a4;

    .line 9
    .line 10
    const/4 p2, 0x1

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/p3;-><init>(Lcom/google/android/gms/internal/measurement/a4;Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "com.google.android.gms.measurement.dynamite"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    :try_start_0
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/u2;->e:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v4}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-static {v4}, Li6/p;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    const-string v6, "google_analytics_force_disable_updates"

    .line 17
    .line 18
    invoke-static {v4}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v8

    .line 29
    if-eqz v8, :cond_0

    .line 30
    .line 31
    invoke-static {v4}, Li6/p;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    :cond_0
    invoke-static {v6, v7, v5}, Li6/p;->c(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    iget-object v6, v1, Lcom/google/android/gms/internal/measurement/u2;->g:Lcom/google/android/gms/internal/measurement/a4;

    .line 40
    .line 41
    if-eqz v5, :cond_2

    .line 42
    .line 43
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    if-nez v7, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move v7, v2

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    :goto_0
    move v7, v3

    .line 53
    :goto_1
    invoke-virtual {v6, v4, v7}, Lcom/google/android/gms/internal/measurement/a4;->u(Landroid/content/Context;Z)Lcom/google/android/gms/internal/measurement/t1;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/measurement/a4;->o(Lcom/google/android/gms/internal/measurement/t1;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/a4;->n()Lcom/google/android/gms/internal/measurement/t1;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    if-nez v7, :cond_3

    .line 65
    .line 66
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/a4;->l()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const-string v4, "Failed to connect to measurement client."

    .line 71
    .line 72
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_3
    invoke-static {v4, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    invoke-static {v4, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->b(Landroid/content/Context;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 89
    .line 90
    invoke-virtual {v9, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-nez v5, :cond_5

    .line 95
    .line 96
    if-ge v0, v7, :cond_4

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_4
    move v14, v2

    .line 100
    goto :goto_3

    .line 101
    :cond_5
    :goto_2
    move v14, v3

    .line 102
    :goto_3
    new-instance v0, Lcom/google/android/gms/internal/measurement/g2;

    .line 103
    .line 104
    int-to-long v12, v8

    .line 105
    iget-object v15, v1, Lcom/google/android/gms/internal/measurement/u2;->f:Landroid/os/Bundle;

    .line 106
    .line 107
    const-wide/32 v10, 0x2078d

    .line 108
    .line 109
    .line 110
    invoke-static {v4}, Li6/p;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v16

    .line 114
    move-object v9, v0

    .line 115
    invoke-direct/range {v9 .. v16}, Lcom/google/android/gms/internal/measurement/g2;-><init>(JJZLandroid/os/Bundle;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/a4;->n()Lcom/google/android/gms/internal/measurement/t1;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    invoke-static {v5}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    check-cast v5, Lcom/google/android/gms/internal/measurement/t1;

    .line 127
    .line 128
    invoke-static {v4}, Lu5/b;->e1(Ljava/lang/Object;)Lu5/a;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    iget-wide v6, v1, Lcom/google/android/gms/internal/measurement/p3;->a:J

    .line 133
    .line 134
    invoke-interface {v5, v4, v0, v6, v7}, Lcom/google/android/gms/internal/measurement/t1;->initialize(Lu5/a;Lcom/google/android/gms/internal/measurement/g2;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/u2;->g:Lcom/google/android/gms/internal/measurement/a4;

    .line 140
    .line 141
    invoke-virtual {v4, v0, v3, v2}, Lcom/google/android/gms/internal/measurement/a4;->k(Ljava/lang/Exception;ZZ)V

    .line 142
    .line 143
    .line 144
    return-void
.end method
