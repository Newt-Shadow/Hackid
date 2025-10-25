.class public final Lio/appmetrica/analytics/impl/W6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

.field public final b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

.field public final c:Lio/appmetrica/analytics/impl/j7;

.field public final d:Lio/appmetrica/analytics/impl/V6;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/util/ArrayList;

.field public final g:Landroid/content/Context;

.field public final h:Lio/appmetrica/analytics/impl/o5;

.field public final i:Ljava/util/concurrent/atomic/AtomicLong;

.field public final j:Ljava/util/ArrayList;

.field public final k:Lio/appmetrica/analytics/impl/S6;

.field public final l:Lio/appmetrica/analytics/impl/r7;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lio/appmetrica/analytics/impl/nb;->c:Lio/appmetrica/analytics/impl/nb;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x1900

    .line 17
    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/o5;Lio/appmetrica/analytics/impl/j7;Lio/appmetrica/analytics/impl/S6;Lio/appmetrica/analytics/impl/r7;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, p0, Lio/appmetrica/analytics/impl/W6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lio/appmetrica/analytics/impl/W6;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 20
    .line 21
    new-instance v0, Ljava/lang/Object;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lio/appmetrica/analytics/impl/W6;->e:Ljava/lang/Object;

    .line 27
    .line 28
    new-instance v0, Ljava/util/ArrayList;

    .line 29
    .line 30
    const/4 v1, 0x3

    .line 31
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lio/appmetrica/analytics/impl/W6;->f:Ljava/util/ArrayList;

    .line 35
    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lio/appmetrica/analytics/impl/W6;->i:Ljava/util/concurrent/atomic/AtomicLong;

    .line 42
    .line 43
    new-instance v1, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lio/appmetrica/analytics/impl/W6;->j:Ljava/util/ArrayList;

    .line 49
    .line 50
    iput-object p2, p0, Lio/appmetrica/analytics/impl/W6;->c:Lio/appmetrica/analytics/impl/j7;

    .line 51
    .line 52
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/o5;->getContext()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    iput-object p2, p0, Lio/appmetrica/analytics/impl/W6;->g:Landroid/content/Context;

    .line 57
    .line 58
    iput-object p1, p0, Lio/appmetrica/analytics/impl/W6;->h:Lio/appmetrica/analytics/impl/o5;

    .line 59
    .line 60
    iput-object p3, p0, Lio/appmetrica/analytics/impl/W6;->k:Lio/appmetrica/analytics/impl/S6;

    .line 61
    .line 62
    iput-object p4, p0, Lio/appmetrica/analytics/impl/W6;->l:Lio/appmetrica/analytics/impl/r7;

    .line 63
    .line 64
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/W6;->c()J

    .line 65
    .line 66
    .line 67
    move-result-wide p2

    .line 68
    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 69
    .line 70
    .line 71
    new-instance p2, Lio/appmetrica/analytics/impl/V6;

    .line 72
    .line 73
    invoke-direct {p2, p0, p1}, Lio/appmetrica/analytics/impl/V6;-><init>(Lio/appmetrica/analytics/impl/W6;Lio/appmetrica/analytics/impl/o5;)V

    .line 74
    .line 75
    .line 76
    iput-object p2, p0, Lio/appmetrica/analytics/impl/W6;->d:Lio/appmetrica/analytics/impl/V6;

    .line 77
    .line 78
    invoke-static {p1}, Lio/appmetrica/analytics/impl/W6;->a(Lio/appmetrica/analytics/impl/Qa;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p2, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public static a(Lio/appmetrica/analytics/impl/Qa;)Ljava/lang/String;
    .locals 2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DatabaseWorker ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lio/appmetrica/analytics/impl/Qa;->b()Lio/appmetrica/analytics/impl/h5;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/h5;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/LinkedHashMap;)Ljava/lang/String;
    .locals 3

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id >= ?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, " AND "

    goto :goto_1

    :cond_0
    const-string v2, ""

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = ? "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public static a(Lio/appmetrica/analytics/impl/W6;)Z
    .locals 1

    .line 153
    iget-object v0, p0, Lio/appmetrica/analytics/impl/W6;->e:Ljava/lang/Object;

    .line 154
    monitor-enter v0

    .line 155
    :try_start_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/W6;->f:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 156
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a([Ljava/lang/String;Ljava/util/LinkedHashMap;)[Ljava/lang/String;
    .locals 1

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 136
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 137
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 11

    const-string v0, ", "

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "id IN (SELECT id FROM events ORDER BY CASE WHEN type IN (%1$s) THEN 2 WHEN type IN (%2$s) THEN 1 ELSE 0 END, id LIMIT (SELECT count() FROM events) / %3$s)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 80
    sget-object v4, Lio/appmetrica/analytics/impl/H9;->i:Ljava/util/List;

    .line 81
    invoke-static {v0, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    sget-object v4, Lio/appmetrica/analytics/impl/H9;->j:Ljava/util/List;

    .line 82
    invoke-static {v0, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/16 v0, 0xa

    .line 83
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x2

    aput-object v0, v3, v4

    .line 84
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 85
    iget-object v5, p0, Lio/appmetrica/analytics/impl/W6;->k:Lio/appmetrica/analytics/impl/S6;

    const/4 v8, 0x2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/W6;->h:Lio/appmetrica/analytics/impl/o5;

    .line 86
    iget-object v0, v0, Lio/appmetrica/analytics/impl/o5;->b:Lio/appmetrica/analytics/impl/h5;

    .line 87
    iget-object v9, v0, Lio/appmetrica/analytics/impl/h5;->b:Ljava/lang/String;

    const/4 v10, 0x1

    move-object v6, p1

    .line 88
    invoke-virtual/range {v5 .. v10}, Lio/appmetrica/analytics/impl/S6;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/lang/String;Z)Lio/appmetrica/analytics/impl/Q6;

    move-result-object p1

    iget p1, p1, Lio/appmetrica/analytics/impl/Q6;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 89
    sget-object v0, Lio/appmetrica/analytics/impl/nj;->a:Lio/appmetrica/analytics/impl/Oj;

    .line 90
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    new-instance v2, Lio/appmetrica/analytics/impl/oj;

    const-string v3, "deleteExcessiveReports exception"

    invoke-direct {v2, v3, p1}, Lio/appmetrica/analytics/impl/oj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/impl/Oj;->a(Lio/appmetrica/analytics/impl/cb;)V

    return v1
.end method

.method public final a(Ljava/util/Set;)J
    .locals 10

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/W6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 2
    :try_start_0
    iget-object v3, p0, Lio/appmetrica/analytics/impl/W6;->c:Lio/appmetrica/analytics/impl/j7;

    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/j7;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SELECT count() FROM events"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, " WHERE "

    .line 5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-lez v6, :cond_1

    const-string v8, " OR "

    .line 7
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "type == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 10
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :catchall_0
    :cond_3
    invoke-static {v0}, Lio/appmetrica/analytics/impl/Rn;->a(Landroid/database/Cursor;)V

    .line 13
    iget-object p1, p0, Lio/appmetrica/analytics/impl/W6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v1
.end method

.method public final a(JLio/appmetrica/analytics/impl/Ik;)Landroid/content/ContentValues;
    .locals 6

    .line 116
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 117
    iget-object v1, p0, Lio/appmetrica/analytics/impl/W6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x0

    .line 118
    :try_start_0
    iget-object v2, p0, Lio/appmetrica/analytics/impl/W6;->c:Lio/appmetrica/analytics/impl/j7;

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/j7;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 119
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "SELECT report_request_parameters FROM sessions WHERE id = %s AND type = %s ORDER BY id DESC LIMIT 1"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v5, p2

    .line 120
    iget p1, p3, Lio/appmetrica/analytics/impl/Ik;->a:I

    .line 121
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v5, p2

    .line 122
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-virtual {v2, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 124
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 125
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 126
    invoke-static {v1, p1}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    .line 127
    :catchall_0
    :cond_0
    invoke-static {v1}, Lio/appmetrica/analytics/impl/Rn;->a(Landroid/database/Cursor;)V

    .line 128
    iget-object p1, p0, Lio/appmetrica/analytics/impl/W6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0
.end method

.method public final a()V
    .locals 4

    .line 68
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/W6;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 69
    iget-object v0, p0, Lio/appmetrica/analytics/impl/W6;->h:Lio/appmetrica/analytics/impl/o5;

    .line 70
    iget-object v0, v0, Lio/appmetrica/analytics/impl/o5;->k:Lio/appmetrica/analytics/impl/Og;

    .line 71
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/D5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/lh;

    .line 72
    iget-wide v0, v0, Lio/appmetrica/analytics/impl/lh;->v:J

    .line 73
    iget-object v2, p0, Lio/appmetrica/analytics/impl/W6;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    .line 74
    iget-object v0, p0, Lio/appmetrica/analytics/impl/W6;->c:Lio/appmetrica/analytics/impl/j7;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/j7;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/W6;->a(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v0

    .line 76
    iget-object v1, p0, Lio/appmetrica/analytics/impl/W6;->i:Ljava/util/concurrent/atomic/AtomicLong;

    neg-int v2, v0

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lio/appmetrica/analytics/impl/W6;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/impl/b9;

    .line 78
    invoke-interface {v1}, Lio/appmetrica/analytics/impl/b9;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 79
    :catchall_0
    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/W6;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public final a(JIIZ)V
    .locals 13

    move-object v0, p0

    if-gtz p4, :cond_0

    return-void

    .line 92
    :cond_0
    iget-object v1, v0, Lio/appmetrica/analytics/impl/W6;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 93
    :try_start_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%1$s = %2$s AND %3$s = %4$s AND %5$s <= (SELECT %5$s FROM %6$s WHERE %1$s = %2$s AND %3$s = %4$s ORDER BY %5$s ASC LIMIT %7$s, 1)"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "session_id"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 94
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-string v4, "session_type"

    const/4 v7, 0x2

    aput-object v4, v3, v7

    .line 95
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x3

    aput-object v4, v3, v7

    const-string v4, "id"

    const/4 v7, 0x4

    aput-object v4, v3, v7

    const-string v4, "events"

    const/4 v7, 0x5

    aput-object v4, v3, v7

    add-int/lit8 v4, p4, -0x1

    .line 96
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x6

    aput-object v4, v3, v6

    .line 97
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 98
    iget-object v1, v0, Lio/appmetrica/analytics/impl/W6;->c:Lio/appmetrica/analytics/impl/j7;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/j7;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 99
    iget-object v7, v0, Lio/appmetrica/analytics/impl/W6;->k:Lio/appmetrica/analytics/impl/S6;

    const/4 v10, 0x1

    iget-object v1, v0, Lio/appmetrica/analytics/impl/W6;->h:Lio/appmetrica/analytics/impl/o5;

    .line 100
    iget-object v1, v1, Lio/appmetrica/analytics/impl/o5;->b:Lio/appmetrica/analytics/impl/h5;

    .line 101
    iget-object v11, v1, Lio/appmetrica/analytics/impl/h5;->b:Ljava/lang/String;

    move/from16 v12, p5

    .line 102
    invoke-virtual/range {v7 .. v12}, Lio/appmetrica/analytics/impl/S6;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/lang/String;Z)Lio/appmetrica/analytics/impl/Q6;

    move-result-object v1

    .line 103
    iget-object v2, v1, Lio/appmetrica/analytics/impl/Q6;->a:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 104
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 105
    iget-object v3, v1, Lio/appmetrica/analytics/impl/Q6;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string v6, "type"

    .line 106
    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 107
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 108
    :cond_1
    iget-object v3, v0, Lio/appmetrica/analytics/impl/W6;->j:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/appmetrica/analytics/impl/b9;

    .line 109
    invoke-interface {v4, v2}, Lio/appmetrica/analytics/impl/b9;->b(Ljava/util/List;)V

    goto :goto_1

    .line 110
    :cond_2
    iget-object v2, v1, Lio/appmetrica/analytics/impl/Q6;->a:Ljava/util/List;

    if-eqz v2, :cond_3

    const-string v3, "Event removed from db"

    .line 111
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v5, v4, :cond_3

    .line 112
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    invoke-virtual {p0, v4, v3}, Lio/appmetrica/analytics/impl/W6;->a(Landroid/content/ContentValues;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 113
    :cond_3
    iget v1, v1, Lio/appmetrica/analytics/impl/Q6;->b:I

    .line 114
    iget-object v2, v0, Lio/appmetrica/analytics/impl/W6;->i:Ljava/util/concurrent/atomic/AtomicLong;

    neg-int v1, v1

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :catchall_0
    :cond_4
    iget-object v1, v0, Lio/appmetrica/analytics/impl/W6;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public final a(JLio/appmetrica/analytics/impl/Ik;J)V
    .locals 7

    .line 16
    new-instance v0, Lio/appmetrica/analytics/impl/F7;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 17
    invoke-direct {v0, v1, v2, v1}, Lio/appmetrica/analytics/impl/F7;-><init>(Lio/appmetrica/analytics/impl/C7;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 18
    iget-object v3, p0, Lio/appmetrica/analytics/impl/W6;->h:Lio/appmetrica/analytics/impl/o5;

    .line 19
    iget-object v3, v3, Lio/appmetrica/analytics/impl/o5;->k:Lio/appmetrica/analytics/impl/Og;

    .line 20
    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/D5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    move-result-object v3

    check-cast v3, Lio/appmetrica/analytics/impl/lh;

    .line 21
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 22
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 23
    new-instance p4, Lio/appmetrica/analytics/impl/E7;

    .line 24
    :try_start_0
    new-instance p5, Lorg/json/JSONObject;

    invoke-direct {p5}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "dId"

    .line 25
    invoke-virtual {v3}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p5, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p5

    const-string v4, "uId"

    .line 26
    invoke-virtual {v3}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p5, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p5

    const-string v4, "appVer"

    .line 27
    invoke-virtual {v3}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getAppVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p5, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p5

    const-string v4, "appBuild"

    .line 28
    invoke-virtual {v3}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getAppBuildNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p5, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p5

    const-string v4, "kitBuildType"

    .line 29
    invoke-virtual {v3}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getAnalyticsSdkBuildType()Ljava/lang/String;

    move-result-object v5

    .line 30
    invoke-virtual {p5, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p5

    const-string v4, "osVer"

    .line 31
    invoke-virtual {v3}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getOsVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p5, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p5

    const-string v4, "osApiLev"

    .line 32
    invoke-virtual {v3}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getOsApiLevel()I

    move-result v5

    invoke-virtual {p5, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p5

    const-string v4, "lang"

    .line 33
    invoke-virtual {v3}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getLocale()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p5, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p5

    const-string v4, "root"

    .line 34
    invoke-virtual {v3}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getDeviceRootStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p5, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p5

    const-string v4, "app_debuggable"

    .line 35
    iget-object v5, v3, Lio/appmetrica/analytics/impl/c6;->a:Ljava/lang/String;

    .line 36
    invoke-virtual {p5, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p5

    const-string v4, "app_framework"

    .line 37
    invoke-virtual {v3}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getAppFramework()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p5, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p5

    const-string v4, "attribution_id"

    .line 38
    iget v5, v3, Lio/appmetrica/analytics/impl/lh;->r:I

    .line 39
    invoke-virtual {p5, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p5

    const-string v4, "analyticsSdkVersionName"

    .line 40
    invoke-virtual {v3}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getAnalyticsSdkVersionName()Ljava/lang/String;

    move-result-object v5

    .line 41
    invoke-virtual {p5, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p5

    const-string v4, "kitBuildNumber"

    .line 42
    invoke-virtual {v3}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getAnalyticsSdkBuildNumber()Ljava/lang/String;

    move-result-object v3

    .line 43
    invoke-virtual {p5, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 44
    :catchall_0
    new-instance p5, Lorg/json/JSONObject;

    invoke-direct {p5}, Lorg/json/JSONObject;-><init>()V

    .line 45
    :goto_0
    invoke-virtual {p5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p5

    .line 46
    new-instance v3, Lio/appmetrica/analytics/impl/D7;

    .line 47
    invoke-static {}, Lio/appmetrica/analytics/impl/on;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 48
    sget-object v5, Lio/appmetrica/analytics/impl/Sj;->a:Lio/appmetrica/analytics/impl/Tj;

    .line 49
    monitor-enter v5

    .line 50
    :try_start_1
    iget-object v6, v5, Lio/appmetrica/analytics/impl/Tj;->b:Lio/appmetrica/analytics/impl/Xe;

    invoke-virtual {v6, v2}, Lio/appmetrica/analytics/impl/Xe;->b(Z)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit v5

    .line 51
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 52
    invoke-direct {v3, p2, v4, v2}, Lio/appmetrica/analytics/impl/D7;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 53
    invoke-direct {p4, p1, p3, p5, v3}, Lio/appmetrica/analytics/impl/E7;-><init>(Ljava/lang/Long;Lio/appmetrica/analytics/impl/Ik;Ljava/lang/String;Lio/appmetrica/analytics/impl/D7;)V

    .line 54
    invoke-virtual {v0, p4}, Lio/appmetrica/analytics/impl/F7;->a(Lio/appmetrica/analytics/impl/E7;)Landroid/content/ContentValues;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 55
    :cond_0
    iget-object p2, p0, Lio/appmetrica/analytics/impl/W6;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 56
    :try_start_2
    iget-object p2, p0, Lio/appmetrica/analytics/impl/W6;->c:Lio/appmetrica/analytics/impl/j7;

    invoke-virtual {p2}, Lio/appmetrica/analytics/impl/j7;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string p3, "sessions"

    .line 57
    invoke-virtual {p2, p3, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 58
    :catchall_1
    :cond_1
    iget-object p1, p0, Lio/appmetrica/analytics/impl/W6;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_1
    return-void

    :catchall_2
    move-exception p1

    .line 59
    monitor-exit v5

    throw p1
.end method

.method public final a(Landroid/content/ContentValues;)V
    .locals 2

    .line 60
    iget-object v0, p0, Lio/appmetrica/analytics/impl/W6;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 61
    :try_start_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/W6;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 63
    iget-object p1, p0, Lio/appmetrica/analytics/impl/W6;->d:Lio/appmetrica/analytics/impl/V6;

    monitor-enter p1

    .line 64
    :try_start_1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/W6;->d:Lio/appmetrica/analytics/impl/V6;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 65
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    .line 66
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception p1

    .line 67
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public final a(Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 3

    const-string v0, "type"

    .line 139
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 141
    :goto_0
    sget-object v1, Lio/appmetrica/analytics/impl/H9;->d:Ljava/util/EnumSet;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/nb;->a(I)Lio/appmetrica/analytics/impl/nb;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    new-instance v0, Lio/appmetrica/analytics/impl/r7;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 143
    invoke-direct {v0, v2, v1, v2}, Lio/appmetrica/analytics/impl/r7;-><init>(Lio/appmetrica/analytics/impl/o7;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 144
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/r7;->a(Landroid/content/ContentValues;)Lio/appmetrica/analytics/impl/q7;

    move-result-object p1

    .line 145
    iget-object v0, p0, Lio/appmetrica/analytics/impl/W6;->h:Lio/appmetrica/analytics/impl/o5;

    .line 146
    iget-object v0, v0, Lio/appmetrica/analytics/impl/o5;->m:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 147
    iget-object v1, p1, Lio/appmetrica/analytics/impl/q7;->d:Lio/appmetrica/analytics/impl/nb;

    .line 148
    iget-object p1, p1, Lio/appmetrica/analytics/impl/q7;->g:Lio/appmetrica/analytics/impl/p7;

    .line 149
    iget-object v2, p1, Lio/appmetrica/analytics/impl/p7;->b:Ljava/lang/String;

    .line 150
    iget-object p1, p1, Lio/appmetrica/analytics/impl/p7;->c:Ljava/lang/String;

    .line 151
    invoke-static {p2, v1, v2, p1}, Lio/appmetrica/analytics/impl/Mf;->a(Ljava/lang/String;Lio/appmetrica/analytics/impl/nb;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    .line 152
    invoke-virtual {v0, p1, p2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/b9;)V
    .locals 1

    .line 14
    iget-object v0, p0, Lio/appmetrica/analytics/impl/W6;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()J
    .locals 3

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/W6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/W6;->i:Ljava/util/concurrent/atomic/AtomicLong;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v2, p0, Lio/appmetrica/analytics/impl/W6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 13
    .line 14
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 15
    .line 16
    .line 17
    return-wide v0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    iget-object v1, p0, Lio/appmetrica/analytics/impl/W6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 22
    .line 23
    .line 24
    throw v0
.end method

.method public final c()J
    .locals 3

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/W6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/W6;->c:Lio/appmetrica/analytics/impl/j7;

    .line 7
    .line 8
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/j7;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string v1, "events"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/db/DBUtils;->queryRowsCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    :cond_0
    const-wide/16 v0, 0x0

    .line 22
    .line 23
    :goto_0
    iget-object v2, p0, Lio/appmetrica/analytics/impl/W6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 26
    .line 27
    .line 28
    return-wide v0
.end method

.method public final d()V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/W6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/W6;->c:Lio/appmetrica/analytics/impl/j7;

    .line 8
    .line 9
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/j7;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    const-string v2, " SELECT DISTINCT id From sessions order by id asc "

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    new-array v4, v3, [Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 21
    .line 22
    .line 23
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    :try_start_1
    new-instance v4, Ljava/lang/StringBuffer;

    .line 25
    .line 26
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v5, "All sessions in db: "

    .line 30
    .line 31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 35
    .line 36
    .line 37
    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    const-string v6, ", "

    .line 39
    .line 40
    if-eqz v5, :cond_0

    .line 41
    .line 42
    :try_start_2
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const-string v4, " SELECT DISTINCT session_id From events order by session_id asc "

    .line 54
    .line 55
    new-array v5, v3, [Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    new-instance v1, Ljava/lang/StringBuffer;

    .line 62
    .line 63
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v4, "All sessions in reports db: "

    .line 67
    .line 68
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    .line 70
    .line 71
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_2

    .line 76
    .line 77
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :catchall_0
    move-object v1, v0

    .line 89
    move-object v0, v2

    .line 90
    goto :goto_2

    .line 91
    :cond_1
    move-object v2, v0

    .line 92
    goto :goto_3

    .line 93
    :catchall_1
    move-object v1, v0

    .line 94
    :goto_2
    move-object v2, v0

    .line 95
    move-object v0, v1

    .line 96
    :cond_2
    :goto_3
    iget-object v1, p0, Lio/appmetrica/analytics/impl/W6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 97
    .line 98
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 99
    .line 100
    .line 101
    invoke-static {v2}, Lio/appmetrica/analytics/impl/Rn;->a(Landroid/database/Cursor;)V

    .line 102
    .line 103
    .line 104
    invoke-static {v0}, Lio/appmetrica/analytics/impl/Rn;->a(Landroid/database/Cursor;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public final e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/W6;->d:Lio/appmetrica/analytics/impl/V6;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
