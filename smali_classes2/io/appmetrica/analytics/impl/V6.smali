.class public final Lio/appmetrica/analytics/impl/V6;
.super Lio/appmetrica/analytics/coreapi/internal/executors/InterruptionSafeThread;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/o5;

.field public final synthetic b:Lio/appmetrica/analytics/impl/W6;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/W6;Lio/appmetrica/analytics/impl/o5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/impl/V6;->b:Lio/appmetrica/analytics/impl/W6;

    .line 2
    .line 3
    invoke-direct {p0}, Lio/appmetrica/analytics/coreapi/internal/executors/InterruptionSafeThread;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lio/appmetrica/analytics/impl/V6;->a:Lio/appmetrica/analytics/impl/o5;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/util/ArrayList;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroid/content/ContentValues;

    .line 22
    .line 23
    iget-object v2, p0, Lio/appmetrica/analytics/impl/V6;->b:Lio/appmetrica/analytics/impl/W6;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    const-string v2, "type"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object p1, p0, Lio/appmetrica/analytics/impl/V6;->b:Lio/appmetrica/analytics/impl/W6;

    .line 47
    .line 48
    iget-object p1, p1, Lio/appmetrica/analytics/impl/W6;->j:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Lio/appmetrica/analytics/impl/b9;

    .line 65
    .line 66
    invoke-interface {v1, v0}, Lio/appmetrica/analytics/impl/b9;->a(Ljava/util/List;)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    iget-object p1, p0, Lio/appmetrica/analytics/impl/V6;->a:Lio/appmetrica/analytics/impl/o5;

    .line 71
    .line 72
    iget-object p1, p1, Lio/appmetrica/analytics/impl/o5;->p:Lio/appmetrica/analytics/impl/B9;

    .line 73
    .line 74
    check-cast p1, Lio/appmetrica/analytics/impl/z5;

    .line 75
    .line 76
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/z5;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    .line 79
    monitor-exit p0

    .line 80
    return-void

    .line 81
    :catchall_0
    move-exception p1

    .line 82
    monitor-exit p0

    .line 83
    throw p1
.end method

.method public final run()V
    .locals 7

    .line 1
    :goto_0
    invoke-virtual {p0}, Lio/appmetrica/analytics/coreapi/internal/executors/InterruptionSafeThread;->isRunning()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/V6;->b:Lio/appmetrica/analytics/impl/W6;

    .line 9
    .line 10
    invoke-static {v0}, Lio/appmetrica/analytics/impl/W6;->a(Lio/appmetrica/analytics/impl/W6;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 17
    .line 18
    .line 19
    :cond_0
    monitor-exit p0

    .line 20
    goto :goto_1

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 24
    :catchall_1
    invoke-virtual {p0}, Lio/appmetrica/analytics/coreapi/internal/executors/InterruptionSafeThread;->stopRunning()V

    .line 25
    .line 26
    .line 27
    :goto_1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/V6;->b:Lio/appmetrica/analytics/impl/W6;

    .line 28
    .line 29
    iget-object v0, v0, Lio/appmetrica/analytics/impl/W6;->e:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v0

    .line 32
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    .line 33
    .line 34
    iget-object v2, p0, Lio/appmetrica/analytics/impl/V6;->b:Lio/appmetrica/analytics/impl/W6;

    .line 35
    .line 36
    iget-object v2, v2, Lio/appmetrica/analytics/impl/W6;->f:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lio/appmetrica/analytics/impl/V6;->b:Lio/appmetrica/analytics/impl/W6;

    .line 42
    .line 43
    iget-object v2, v2, Lio/appmetrica/analytics/impl/W6;->f:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 46
    .line 47
    .line 48
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 49
    iget-object v0, p0, Lio/appmetrica/analytics/impl/V6;->b:Lio/appmetrica/analytics/impl/W6;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_1

    .line 59
    .line 60
    goto :goto_6

    .line 61
    :cond_1
    iget-object v2, v0, Lio/appmetrica/analytics/impl/W6;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 62
    .line 63
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 64
    .line 65
    .line 66
    const/4 v2, 0x0

    .line 67
    :try_start_4
    iget-object v3, v0, Lio/appmetrica/analytics/impl/W6;->c:Lio/appmetrica/analytics/impl/j7;

    .line 68
    .line 69
    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/j7;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 70
    .line 71
    .line 72
    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 73
    if-eqz v3, :cond_3

    .line 74
    .line 75
    :try_start_5
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-eqz v5, :cond_2

    .line 87
    .line 88
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    check-cast v5, Landroid/content/ContentValues;

    .line 93
    .line 94
    const-string v6, "events"

    .line 95
    .line 96
    invoke-virtual {v3, v6, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 97
    .line 98
    .line 99
    iget-object v6, v0, Lio/appmetrica/analytics/impl/W6;->i:Ljava/util/concurrent/atomic/AtomicLong;

    .line 100
    .line 101
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 102
    .line 103
    .line 104
    const-string v6, "Event saved to db"

    .line 105
    .line 106
    invoke-virtual {v0, v5, v6}, Lio/appmetrica/analytics/impl/W6;->a(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 111
    .line 112
    .line 113
    iget-object v2, v0, Lio/appmetrica/analytics/impl/W6;->i:Ljava/util/concurrent/atomic/AtomicLong;

    .line 114
    .line 115
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 116
    .line 117
    .line 118
    goto :goto_3

    .line 119
    :catchall_2
    move-object v2, v3

    .line 120
    goto :goto_4

    .line 121
    :cond_3
    :goto_3
    if-eqz v3, :cond_4

    .line 122
    .line 123
    :try_start_6
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 124
    .line 125
    .line 126
    goto :goto_5

    .line 127
    :catchall_3
    :goto_4
    if-eqz v2, :cond_4

    .line 128
    .line 129
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 130
    .line 131
    .line 132
    :catchall_4
    :cond_4
    :goto_5
    iget-object v0, v0, Lio/appmetrica/analytics/impl/W6;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 133
    .line 134
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 135
    .line 136
    .line 137
    :goto_6
    invoke-virtual {p0, v1}, Lio/appmetrica/analytics/impl/V6;->a(Ljava/util/ArrayList;)V

    .line 138
    .line 139
    .line 140
    goto/16 :goto_0

    .line 141
    .line 142
    :catchall_5
    move-exception v1

    .line 143
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 144
    throw v1

    .line 145
    :cond_5
    return-void
.end method
