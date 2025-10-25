.class final Ln5/p1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Ln5/r1;


# direct methods
.method synthetic constructor <init>(Ln5/r1;Ln5/q1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln5/p1;->a:Ln5/r1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 7

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    return p1

    .line 10
    :cond_0
    iget-object v0, p0, Ln5/p1;->a:Ln5/r1;

    .line 11
    .line 12
    invoke-static {v0}, Ln5/r1;->l(Ln5/r1;)Ljava/util/HashMap;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p1, Ln5/n1;

    .line 20
    .line 21
    iget-object v2, p0, Ln5/p1;->a:Ln5/r1;

    .line 22
    .line 23
    invoke-static {v2}, Ln5/r1;->l(Ln5/r1;)Ljava/util/HashMap;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ln5/o1;

    .line 32
    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    invoke-virtual {v2}, Ln5/o1;->a()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const/4 v4, 0x3

    .line 40
    if-ne v3, v4, :cond_3

    .line 41
    .line 42
    const-string v3, "GmsClientSupervisor"

    .line 43
    .line 44
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    new-instance v5, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v6, "Timeout waiting for ServiceConnection callback "

    .line 54
    .line 55
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    new-instance v5, Ljava/lang/Exception;

    .line 66
    .line 67
    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Ln5/o1;->b()Landroid/content/ComponentName;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    if-nez v3, :cond_1

    .line 78
    .line 79
    invoke-virtual {p1}, Ln5/n1;->a()Landroid/content/ComponentName;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    :cond_1
    if-nez v3, :cond_2

    .line 84
    .line 85
    new-instance v3, Landroid/content/ComponentName;

    .line 86
    .line 87
    invoke-virtual {p1}, Ln5/n1;->c()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-static {p1}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    const-string v4, "unknown"

    .line 95
    .line 96
    invoke-direct {v3, p1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_2
    invoke-virtual {v2, v3}, Ln5/o1;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 100
    .line 101
    .line 102
    :cond_3
    monitor-exit v0

    .line 103
    return v1

    .line 104
    :catchall_0
    move-exception p1

    .line 105
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    throw p1

    .line 107
    :cond_4
    iget-object v0, p0, Ln5/p1;->a:Ln5/r1;

    .line 108
    .line 109
    invoke-static {v0}, Ln5/r1;->l(Ln5/r1;)Ljava/util/HashMap;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    monitor-enter v0

    .line 114
    :try_start_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast p1, Ln5/n1;

    .line 117
    .line 118
    iget-object v2, p0, Ln5/p1;->a:Ln5/r1;

    .line 119
    .line 120
    invoke-static {v2}, Ln5/r1;->l(Ln5/r1;)Ljava/util/HashMap;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    check-cast v2, Ln5/o1;

    .line 129
    .line 130
    if-eqz v2, :cond_6

    .line 131
    .line 132
    invoke-virtual {v2}, Ln5/o1;->i()Z

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    if-eqz v3, :cond_6

    .line 137
    .line 138
    invoke-virtual {v2}, Ln5/o1;->j()Z

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    if-eqz v3, :cond_5

    .line 143
    .line 144
    const-string v3, "GmsClientSupervisor"

    .line 145
    .line 146
    invoke-virtual {v2, v3}, Ln5/o1;->g(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    :cond_5
    iget-object v2, p0, Ln5/p1;->a:Ln5/r1;

    .line 150
    .line 151
    invoke-static {v2}, Ln5/r1;->l(Ln5/r1;)Ljava/util/HashMap;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    :cond_6
    monitor-exit v0

    .line 159
    return v1

    .line 160
    :catchall_1
    move-exception p1

    .line 161
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 162
    throw p1
.end method
