.class public final Lio/appmetrica/analytics/impl/vh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/networktasks/internal/UnderlyingNetworkTask;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/o5;

.field public final b:Ljava/util/LinkedHashMap;

.field public c:Lio/appmetrica/analytics/impl/x7;

.field public d:Lio/appmetrica/analytics/impl/u9;

.field public final e:Lio/appmetrica/analytics/impl/W6;

.field public f:Ljava/util/List;

.field public g:I

.field public h:I

.field public i:I

.field public j:Lio/appmetrica/analytics/impl/uh;

.field public final k:Lio/appmetrica/analytics/impl/r3;

.field public final l:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

.field public final m:Lio/appmetrica/analytics/impl/do;

.field public final n:Lio/appmetrica/analytics/impl/db;

.field public final o:Lio/appmetrica/analytics/impl/ah;

.field public final p:Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;

.field public final q:Lio/appmetrica/analytics/impl/Jb;

.field public final r:Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;

.field public final s:Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;

.field public final t:Lio/appmetrica/analytics/networktasks/internal/SendingDataTaskHelper;

.field public u:I

.field public v:Z


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/o5;Lio/appmetrica/analytics/impl/ah;Lio/appmetrica/analytics/impl/Jb;Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;Lio/appmetrica/analytics/impl/W6;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Lio/appmetrica/analytics/impl/do;Lio/appmetrica/analytics/networktasks/internal/RequestBodyEncrypter;)V
    .locals 13

    .line 5
    new-instance v7, Lio/appmetrica/analytics/impl/r3;

    const v0, 0xfa000

    const-string v1, "event value in ReportTask"

    move-object/from16 v2, p8

    invoke-direct {v7, v0, v1, v2}, Lio/appmetrica/analytics/impl/r3;-><init>(ILjava/lang/String;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    .line 6
    invoke-static {}, Lio/appmetrica/analytics/impl/o1;->a()Lio/appmetrica/analytics/impl/Oj;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v3, p7

    move-object v4, p2

    move-object/from16 v5, p9

    move-object/from16 v6, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p10

    .line 7
    invoke-direct/range {v0 .. v12}, Lio/appmetrica/analytics/impl/vh;-><init>(Lio/appmetrica/analytics/impl/o5;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Lio/appmetrica/analytics/impl/W6;Lio/appmetrica/analytics/impl/ah;Lio/appmetrica/analytics/impl/do;Lio/appmetrica/analytics/impl/Jb;Lio/appmetrica/analytics/impl/r3;Lio/appmetrica/analytics/impl/Oj;Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;Lio/appmetrica/analytics/networktasks/internal/RequestBodyEncrypter;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/o5;Lio/appmetrica/analytics/impl/ah;Lio/appmetrica/analytics/impl/Jb;Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;Lio/appmetrica/analytics/networktasks/internal/RequestBodyEncrypter;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/o5;",
            "Lio/appmetrica/analytics/impl/ah;",
            "Lio/appmetrica/analytics/impl/Jb;",
            "Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer<",
            "Lio/appmetrica/analytics/impl/lh;",
            ">;",
            "Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;",
            "Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;",
            "Lio/appmetrica/analytics/networktasks/internal/RequestBodyEncrypter;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/o5;->h()Lio/appmetrica/analytics/impl/W6;

    move-result-object v7

    .line 2
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/o5;->o()Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object v8

    .line 3
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/o5;->t()Lio/appmetrica/analytics/impl/do;

    move-result-object v9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v10, p7

    .line 4
    invoke-direct/range {v0 .. v10}, Lio/appmetrica/analytics/impl/vh;-><init>(Lio/appmetrica/analytics/impl/o5;Lio/appmetrica/analytics/impl/ah;Lio/appmetrica/analytics/impl/Jb;Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;Lio/appmetrica/analytics/impl/W6;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Lio/appmetrica/analytics/impl/do;Lio/appmetrica/analytics/networktasks/internal/RequestBodyEncrypter;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/o5;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Lio/appmetrica/analytics/impl/W6;Lio/appmetrica/analytics/impl/ah;Lio/appmetrica/analytics/impl/do;Lio/appmetrica/analytics/impl/Jb;Lio/appmetrica/analytics/impl/r3;Lio/appmetrica/analytics/impl/Oj;Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;Lio/appmetrica/analytics/networktasks/internal/RequestBodyEncrypter;)V
    .locals 9

    move-object v0, p0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v0, Lio/appmetrica/analytics/impl/vh;->b:Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    .line 10
    iput v1, v0, Lio/appmetrica/analytics/impl/vh;->g:I

    .line 11
    iput v1, v0, Lio/appmetrica/analytics/impl/vh;->h:I

    const/4 v2, -0x1

    .line 12
    iput v2, v0, Lio/appmetrica/analytics/impl/vh;->i:I

    .line 13
    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/vh;->v:Z

    .line 14
    new-instance v1, Lio/appmetrica/analytics/networktasks/internal/SendingDataTaskHelper;

    new-instance v5, Lio/appmetrica/analytics/coreutils/internal/io/GZIPCompressor;

    invoke-direct {v5}, Lio/appmetrica/analytics/coreutils/internal/io/GZIPCompressor;-><init>()V

    new-instance v8, Lio/appmetrica/analytics/networktasks/internal/DefaultNetworkResponseHandler;

    invoke-direct {v8}, Lio/appmetrica/analytics/networktasks/internal/DefaultNetworkResponseHandler;-><init>()V

    move-object v3, v1

    move-object/from16 v4, p12

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    invoke-direct/range {v3 .. v8}, Lio/appmetrica/analytics/networktasks/internal/SendingDataTaskHelper;-><init>(Lio/appmetrica/analytics/networktasks/internal/RequestBodyEncrypter;Lio/appmetrica/analytics/coreapi/internal/io/Compressor;Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;Lio/appmetrica/analytics/networktasks/internal/NetworkResponseHandler;)V

    iput-object v1, v0, Lio/appmetrica/analytics/impl/vh;->t:Lio/appmetrica/analytics/networktasks/internal/SendingDataTaskHelper;

    move-object v1, p4

    .line 15
    iput-object v1, v0, Lio/appmetrica/analytics/impl/vh;->o:Lio/appmetrica/analytics/impl/ah;

    move-object v1, p1

    .line 16
    iput-object v1, v0, Lio/appmetrica/analytics/impl/vh;->a:Lio/appmetrica/analytics/impl/o5;

    move-object v1, p3

    .line 17
    iput-object v1, v0, Lio/appmetrica/analytics/impl/vh;->e:Lio/appmetrica/analytics/impl/W6;

    move-object v1, p2

    .line 18
    iput-object v1, v0, Lio/appmetrica/analytics/impl/vh;->l:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-object/from16 v1, p7

    .line 19
    iput-object v1, v0, Lio/appmetrica/analytics/impl/vh;->k:Lio/appmetrica/analytics/impl/r3;

    move-object v1, p5

    .line 20
    iput-object v1, v0, Lio/appmetrica/analytics/impl/vh;->m:Lio/appmetrica/analytics/impl/do;

    move-object v1, p6

    .line 21
    iput-object v1, v0, Lio/appmetrica/analytics/impl/vh;->q:Lio/appmetrica/analytics/impl/Jb;

    move-object/from16 v1, p8

    .line 22
    iput-object v1, v0, Lio/appmetrica/analytics/impl/vh;->n:Lio/appmetrica/analytics/impl/db;

    move-object/from16 v1, p10

    .line 23
    iput-object v1, v0, Lio/appmetrica/analytics/impl/vh;->r:Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;

    move-object/from16 v1, p11

    .line 24
    iput-object v1, v0, Lio/appmetrica/analytics/impl/vh;->s:Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;

    move-object/from16 v1, p9

    .line 25
    iput-object v1, v0, Lio/appmetrica/analytics/impl/vh;->p:Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;

    return-void
.end method

.method public static a(Landroid/content/ContentValues;)Lio/appmetrica/analytics/impl/b0;
    .locals 4

    .line 100
    new-instance v0, Lio/appmetrica/analytics/impl/r7;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 101
    invoke-direct {v0, v1, v2, v1}, Lio/appmetrica/analytics/impl/r7;-><init>(Lio/appmetrica/analytics/impl/o7;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 102
    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/impl/r7;->a(Landroid/content/ContentValues;)Lio/appmetrica/analytics/impl/q7;

    move-result-object p0

    .line 103
    new-instance v0, Lio/appmetrica/analytics/impl/b0;

    .line 104
    iget-object v1, p0, Lio/appmetrica/analytics/impl/q7;->g:Lio/appmetrica/analytics/impl/p7;

    .line 105
    iget-object v1, v1, Lio/appmetrica/analytics/impl/p7;->g:Ljava/lang/String;

    const-string v2, ""

    .line 106
    invoke-static {v1, v2}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 107
    iget-object p0, p0, Lio/appmetrica/analytics/impl/q7;->g:Lio/appmetrica/analytics/impl/p7;

    .line 108
    iget-object p0, p0, Lio/appmetrica/analytics/impl/p7;->h:Ljava/lang/Long;

    const-wide/16 v2, 0x0

    .line 109
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 110
    invoke-static {p0, v2}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lio/appmetrica/analytics/impl/b0;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;)[Lio/appmetrica/analytics/impl/j9;
    .locals 5

    .line 20
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 21
    new-array v0, v0, [Lio/appmetrica/analytics/impl/j9;

    .line 22
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 23
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 25
    :try_start_0
    new-instance v4, Lio/appmetrica/analytics/impl/j9;

    invoke-direct {v4}, Lio/appmetrica/analytics/impl/j9;-><init>()V

    .line 26
    iput-object v3, v4, Lio/appmetrica/analytics/impl/j9;->a:Ljava/lang/String;

    .line 27
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lio/appmetrica/analytics/impl/j9;->b:Ljava/lang/String;

    .line 28
    aput-object v4, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a()Landroid/database/Cursor;
    .locals 12

    .line 159
    iget-object v0, p0, Lio/appmetrica/analytics/impl/vh;->e:Lio/appmetrica/analytics/impl/W6;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/vh;->b:Ljava/util/LinkedHashMap;

    .line 160
    iget-object v2, v0, Lio/appmetrica/analytics/impl/W6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 161
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 162
    :try_start_0
    iget-object v2, v0, Lio/appmetrica/analytics/impl/W6;->c:Lio/appmetrica/analytics/impl/j7;

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/j7;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "sessions"

    const/4 v5, 0x0

    .line 163
    invoke-static {v1}, Lio/appmetrica/analytics/impl/W6;->a(Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-wide/16 v7, 0x0

    .line 164
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v2, v8

    invoke-static {v2, v1}, Lio/appmetrica/analytics/impl/W6;->a([Ljava/lang/String;Ljava/util/LinkedHashMap;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "id ASC"

    const/4 v11, 0x0

    .line 165
    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    const/4 v1, 0x0

    .line 166
    :goto_0
    iget-object v0, v0, Lio/appmetrica/analytics/impl/W6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1
.end method

.method public final a(JLio/appmetrica/analytics/impl/Ik;)Landroid/database/Cursor;
    .locals 11

    .line 167
    iget-object v0, p0, Lio/appmetrica/analytics/impl/vh;->e:Lio/appmetrica/analytics/impl/W6;

    .line 168
    iget-object v1, v0, Lio/appmetrica/analytics/impl/W6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 169
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 170
    :try_start_0
    iget-object v1, v0, Lio/appmetrica/analytics/impl/W6;->c:Lio/appmetrica/analytics/impl/j7;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/j7;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "events"

    const/4 v4, 0x0

    const-string v5, "session_id = ? AND session_type = ?"

    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/String;

    .line 171
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v6, p2

    .line 172
    iget p1, p3, Lio/appmetrica/analytics/impl/Ik;->a:I

    .line 173
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v6, p2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "number_in_session ASC"

    const/4 v10, 0x0

    .line 174
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    const/4 p1, 0x0

    .line 175
    :goto_0
    iget-object p2, v0, Lio/appmetrica/analytics/impl/W6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1
.end method

.method public final a(JLio/appmetrica/analytics/impl/q9;Lio/appmetrica/analytics/impl/lh;Ljava/util/ArrayList;I)Lio/appmetrica/analytics/impl/th;
    .locals 16

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v0, p3

    move-object/from16 v4, p5

    .line 111
    new-instance v5, Lio/appmetrica/analytics/impl/r9;

    invoke-direct {v5}, Lio/appmetrica/analytics/impl/r9;-><init>()V

    .line 112
    iput-wide v2, v5, Lio/appmetrica/analytics/impl/r9;->a:J

    .line 113
    iput-object v0, v5, Lio/appmetrica/analytics/impl/r9;->b:Lio/appmetrica/analytics/impl/q9;

    .line 114
    iget v0, v0, Lio/appmetrica/analytics/impl/q9;->c:I

    .line 115
    sget-object v6, Lio/appmetrica/analytics/impl/Lf;->b:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/Ik;

    if-nez v0, :cond_0

    .line 116
    sget-object v0, Lio/appmetrica/analytics/impl/Ik;->b:Lio/appmetrica/analytics/impl/Ik;

    .line 117
    :cond_0
    :try_start_0
    invoke-virtual {v1, v2, v3, v0}, Lio/appmetrica/analytics/impl/vh;->a(JLio/appmetrica/analytics/impl/Ik;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v2, :cond_e

    .line 118
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    .line 119
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_d

    iget v0, v1, Lio/appmetrica/analytics/impl/vh;->h:I

    const/16 v9, 0x64

    if-ge v0, v9, :cond_d

    .line 120
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 121
    invoke-static {v2, v9}, Lio/appmetrica/analytics/coreutils/internal/db/DBUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 122
    :try_start_2
    new-instance v0, Lio/appmetrica/analytics/impl/W8;

    invoke-direct {v0, v9}, Lio/appmetrica/analytics/impl/W8;-><init>(Landroid/content/ContentValues;)V

    .line 123
    iget-object v10, v0, Lio/appmetrica/analytics/impl/W8;->h:Lio/appmetrica/analytics/impl/nb;

    if-eqz v10, :cond_1

    .line 124
    sget-object v11, Lio/appmetrica/analytics/impl/Lf;->d:Ljava/util/Map;

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/appmetrica/analytics/impl/f9;

    goto :goto_1

    .line 125
    :cond_1
    sget-object v10, Lio/appmetrica/analytics/impl/Lf;->a:Ljava/util/Map;

    const/4 v10, 0x0

    :goto_1
    if-nez v10, :cond_2

    .line 126
    sget-object v10, Lio/appmetrica/analytics/impl/f9;->i:Lio/appmetrica/analytics/impl/f9;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    move-object/from16 v11, p4

    .line 127
    :try_start_3
    invoke-virtual {v10, v0, v11}, Lio/appmetrica/analytics/impl/f9;->a(Lio/appmetrica/analytics/impl/W8;Lio/appmetrica/analytics/impl/lh;)Lio/appmetrica/analytics/impl/p9;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v11, p4

    .line 128
    :goto_2
    :try_start_4
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_3
    const/4 v10, 0x1

    if-eqz v0, :cond_c

    .line 129
    invoke-static {v9}, Lio/appmetrica/analytics/impl/vh;->a(Landroid/content/ContentValues;)Lio/appmetrica/analytics/impl/b0;

    move-result-object v9

    if-nez v7, :cond_6

    .line 130
    iget v7, v1, Lio/appmetrica/analytics/impl/vh;->i:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-gez v7, :cond_5

    .line 131
    :try_start_5
    new-instance v7, Lorg/json/JSONObject;

    iget-object v12, v9, Lio/appmetrica/analytics/impl/b0;->a:Ljava/lang/String;

    invoke-direct {v7, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-static {v7}, Lio/appmetrica/analytics/impl/vh;->a(Lorg/json/JSONObject;)[Lio/appmetrica/analytics/impl/j9;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 133
    array-length v12, v7

    move v13, v8

    move v14, v13

    :goto_4
    if-ge v13, v12, :cond_4

    aget-object v15, v7, v13

    const/4 v6, 0x7

    .line 134
    invoke-static {v6, v15}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    add-int/2addr v14, v6

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :catchall_2
    :cond_3
    move v14, v8

    .line 135
    :cond_4
    :try_start_6
    iput v14, v1, Lio/appmetrica/analytics/impl/vh;->i:I

    .line 136
    iget v6, v1, Lio/appmetrica/analytics/impl/vh;->g:I

    add-int/2addr v6, v14

    iput v6, v1, Lio/appmetrica/analytics/impl/vh;->g:I

    :cond_5
    move-object v7, v9

    goto :goto_5

    .line 137
    :cond_6
    invoke-virtual {v7, v9}, Lio/appmetrica/analytics/impl/b0;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    move v8, v10

    goto :goto_8

    .line 138
    :cond_7
    :goto_5
    iget-object v6, v1, Lio/appmetrica/analytics/impl/vh;->k:Lio/appmetrica/analytics/impl/r3;

    iget-object v9, v0, Lio/appmetrica/analytics/impl/p9;->e:[B

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    invoke-virtual {v6, v9}, Lio/appmetrica/analytics/impl/r3;->a([B)[B

    move-result-object v6

    .line 140
    iget-object v9, v0, Lio/appmetrica/analytics/impl/p9;->e:[B

    if-eq v9, v6, :cond_a

    .line 141
    iget v12, v0, Lio/appmetrica/analytics/impl/p9;->i:I

    if-nez v9, :cond_8

    move v9, v8

    goto :goto_6

    .line 142
    :cond_8
    array-length v9, v9

    :goto_6
    if-nez v6, :cond_9

    move v13, v8

    goto :goto_7

    :cond_9
    array-length v13, v6

    :goto_7
    sub-int/2addr v9, v13

    add-int/2addr v9, v12

    .line 143
    iput v9, v0, Lio/appmetrica/analytics/impl/p9;->i:I

    .line 144
    iput-object v6, v0, Lio/appmetrica/analytics/impl/p9;->e:[B

    .line 145
    :cond_a
    iget v6, v1, Lio/appmetrica/analytics/impl/vh;->g:I

    const/4 v9, 0x3

    invoke-static {v9, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v9

    add-int/2addr v6, v9

    iput v6, v1, Lio/appmetrica/analytics/impl/vh;->g:I

    .line 146
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_b

    if-nez p6, :cond_b

    .line 147
    iget v6, v1, Lio/appmetrica/analytics/impl/vh;->g:I

    const/high16 v9, 0x100000

    if-lt v6, v9, :cond_c

    goto :goto_8

    .line 148
    :cond_b
    iget v6, v1, Lio/appmetrica/analytics/impl/vh;->g:I

    const v9, 0x3d400

    if-lt v6, v9, :cond_c

    goto :goto_8

    .line 149
    :cond_c
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    iget v0, v1, Lio/appmetrica/analytics/impl/vh;->h:I

    add-int/2addr v0, v10

    iput v0, v1, Lio/appmetrica/analytics/impl/vh;->h:I

    goto/16 :goto_0

    .line 151
    :cond_d
    :goto_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 152
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lio/appmetrica/analytics/impl/p9;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/appmetrica/analytics/impl/p9;

    iput-object v0, v5, Lio/appmetrica/analytics/impl/r9;->c:[Lio/appmetrica/analytics/impl/p9;

    .line 153
    new-instance v0, Lio/appmetrica/analytics/impl/th;

    invoke-direct {v0, v5, v7, v8}, Lio/appmetrica/analytics/impl/th;-><init>(Lio/appmetrica/analytics/impl/r9;Lio/appmetrica/analytics/impl/b0;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object v6, v0

    goto :goto_9

    :catchall_3
    move-exception v0

    goto :goto_a

    :cond_e
    const/4 v6, 0x0

    .line 154
    :goto_9
    invoke-static {v2}, Lio/appmetrica/analytics/impl/Rn;->a(Landroid/database/Cursor;)V

    goto :goto_b

    :catchall_4
    move-exception v0

    const/4 v2, 0x0

    .line 155
    :goto_a
    :try_start_7
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 156
    invoke-static {v2}, Lio/appmetrica/analytics/impl/Rn;->a(Landroid/database/Cursor;)V

    const/4 v6, 0x0

    :goto_b
    return-object v6

    :catchall_5
    move-exception v0

    move-object v3, v0

    .line 157
    invoke-static {v2}, Lio/appmetrica/analytics/impl/Rn;->a(Landroid/database/Cursor;)V

    .line 158
    throw v3
.end method

.method public final a(Lio/appmetrica/analytics/impl/uh;Ljava/util/List;Lio/appmetrica/analytics/impl/lh;)Lio/appmetrica/analytics/impl/u9;
    .locals 4

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/u9;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/u9;-><init>()V

    .line 2
    new-instance v1, Lio/appmetrica/analytics/impl/m9;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/m9;-><init>()V

    .line 3
    iget-object v2, p0, Lio/appmetrica/analytics/impl/vh;->c:Lio/appmetrica/analytics/impl/x7;

    iget-object v2, v2, Lio/appmetrica/analytics/impl/x7;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {p3}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefaultIfEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lio/appmetrica/analytics/impl/m9;->a:Ljava/lang/String;

    .line 5
    iget-object v2, p0, Lio/appmetrica/analytics/impl/vh;->c:Lio/appmetrica/analytics/impl/x7;

    iget-object v2, v2, Lio/appmetrica/analytics/impl/x7;->a:Ljava/lang/String;

    .line 6
    invoke-virtual {p3}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getDeviceId()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefaultIfEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, v1, Lio/appmetrica/analytics/impl/m9;->b:Ljava/lang/String;

    .line 7
    iget p3, p0, Lio/appmetrica/analytics/impl/vh;->g:I

    const/4 v2, 0x4

    .line 8
    invoke-static {v2, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v2, p3

    iput v2, p0, Lio/appmetrica/analytics/impl/vh;->g:I

    .line 9
    iput-object v1, v0, Lio/appmetrica/analytics/impl/u9;->b:Lio/appmetrica/analytics/impl/m9;

    .line 10
    sget-object p3, Lio/appmetrica/analytics/impl/za;->E:Lio/appmetrica/analytics/impl/za;

    .line 11
    invoke-virtual {p3}, Lio/appmetrica/analytics/impl/za;->A()Lio/appmetrica/analytics/impl/Um;

    move-result-object p3

    .line 12
    new-instance v1, Lio/appmetrica/analytics/impl/sh;

    invoke-direct {v1, p0, v0}, Lio/appmetrica/analytics/impl/sh;-><init>(Lio/appmetrica/analytics/impl/vh;Lio/appmetrica/analytics/impl/u9;)V

    monitor-enter p3

    .line 13
    :try_start_0
    iget-object v2, p3, Lio/appmetrica/analytics/impl/Um;->a:Lio/appmetrica/analytics/impl/Wm;

    invoke-interface {v2, v1}, Lio/appmetrica/analytics/impl/Wm;->a(Lio/appmetrica/analytics/impl/Vm;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p3

    .line 14
    iget-object p3, p1, Lio/appmetrica/analytics/impl/uh;->a:Ljava/util/List;

    .line 15
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lio/appmetrica/analytics/impl/r9;

    invoke-interface {p3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lio/appmetrica/analytics/impl/r9;

    iput-object p3, v0, Lio/appmetrica/analytics/impl/u9;->a:[Lio/appmetrica/analytics/impl/r9;

    .line 16
    iget-object p1, p1, Lio/appmetrica/analytics/impl/uh;->c:Lorg/json/JSONObject;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/vh;->a(Lorg/json/JSONObject;)[Lio/appmetrica/analytics/impl/j9;

    move-result-object p1

    iput-object p1, v0, Lio/appmetrica/analytics/impl/u9;->c:[Lio/appmetrica/analytics/impl/j9;

    .line 17
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {p2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, v0, Lio/appmetrica/analytics/impl/u9;->e:[Ljava/lang/String;

    .line 18
    iget p1, p0, Lio/appmetrica/analytics/impl/vh;->g:I

    const/16 p2, 0x8

    invoke-static {p2}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result p2

    add-int/2addr p2, p1

    iput p2, p0, Lio/appmetrica/analytics/impl/vh;->g:I

    return-object v0

    :catchall_0
    move-exception p1

    .line 19
    monitor-exit p3

    throw p1
.end method

.method public final a(Lio/appmetrica/analytics/impl/lh;)Lio/appmetrica/analytics/impl/uh;
    .locals 16

    move-object/from16 v8, p0

    .line 55
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 56
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 57
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 58
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    .line 59
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lio/appmetrica/analytics/impl/vh;->a()Landroid/database/Cursor;

    move-result-object v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v13, :cond_9

    move-object v14, v1

    move-object v0, v12

    .line 60
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, v8, Lio/appmetrica/analytics/impl/vh;->h:I

    const/16 v2, 0x64

    if-ge v1, v2, :cond_8

    .line 61
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 62
    invoke-static {v13, v1}, Lio/appmetrica/analytics/coreutils/internal/db/DBUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 63
    new-instance v2, Lio/appmetrica/analytics/impl/F7;

    const/4 v3, 0x1

    .line 64
    invoke-direct {v2, v12, v3, v12}, Lio/appmetrica/analytics/impl/F7;-><init>(Lio/appmetrica/analytics/impl/C7;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 65
    invoke-virtual {v2, v1}, Lio/appmetrica/analytics/impl/F7;->a(Landroid/content/ContentValues;)Lio/appmetrica/analytics/impl/E7;

    move-result-object v1

    .line 66
    iget-object v15, v1, Lio/appmetrica/analytics/impl/E7;->a:Ljava/lang/Long;

    if-nez v15, :cond_1

    goto :goto_0

    .line 67
    :cond_1
    iget-object v2, v1, Lio/appmetrica/analytics/impl/E7;->d:Lio/appmetrica/analytics/impl/D7;

    .line 68
    iget-object v4, v2, Lio/appmetrica/analytics/impl/D7;->a:Ljava/lang/Long;

    .line 69
    iget-object v5, v2, Lio/appmetrica/analytics/impl/D7;->b:Ljava/lang/Long;

    .line 70
    iget-object v2, v2, Lio/appmetrica/analytics/impl/D7;->c:Ljava/lang/Boolean;

    .line 71
    invoke-static {v4, v5, v2}, Lio/appmetrica/analytics/impl/Lf;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lio/appmetrica/analytics/impl/t9;

    move-result-object v2

    .line 72
    invoke-virtual/range {p1 .. p1}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getLocale()Ljava/lang/String;

    move-result-object v4

    .line 73
    iget-object v1, v1, Lio/appmetrica/analytics/impl/E7;->b:Lio/appmetrica/analytics/impl/Ik;

    .line 74
    new-instance v5, Lio/appmetrica/analytics/impl/q9;

    invoke-direct {v5}, Lio/appmetrica/analytics/impl/q9;-><init>()V

    .line 75
    iput-object v2, v5, Lio/appmetrica/analytics/impl/q9;->a:Lio/appmetrica/analytics/impl/t9;

    .line 76
    iput-object v4, v5, Lio/appmetrica/analytics/impl/q9;->b:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 77
    sget-object v2, Lio/appmetrica/analytics/impl/Lf;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 78
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 79
    :goto_1
    iput v1, v5, Lio/appmetrica/analytics/impl/q9;->c:I

    .line 80
    :cond_3
    iget v1, v8, Lio/appmetrica/analytics/impl/vh;->g:I

    const-wide v6, 0x7fffffffffffffffL

    invoke-static {v3, v6, v7}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v8, Lio/appmetrica/analytics/impl/vh;->g:I

    const/4 v2, 0x2

    .line 81
    invoke-static {v2, v5}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v8, Lio/appmetrica/analytics/impl/vh;->g:I

    const v2, 0x3d400

    if-lt v1, v2, :cond_4

    goto :goto_3

    .line 82
    :cond_4
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 83
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    move-object/from16 v1, p0

    move-object v4, v5

    move-object/from16 v5, p1

    move-object v6, v11

    .line 84
    invoke-virtual/range {v1 .. v7}, Lio/appmetrica/analytics/impl/vh;->a(JLio/appmetrica/analytics/impl/q9;Lio/appmetrica/analytics/impl/lh;Ljava/util/ArrayList;I)Lio/appmetrica/analytics/impl/th;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_5

    .line 85
    iget-object v0, v1, Lio/appmetrica/analytics/impl/th;->b:Lio/appmetrica/analytics/impl/b0;

    goto :goto_2

    .line 86
    :cond_5
    iget-object v2, v1, Lio/appmetrica/analytics/impl/th;->b:Lio/appmetrica/analytics/impl/b0;

    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/impl/b0;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_3

    .line 87
    :cond_6
    :goto_2
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v2, v1, Lio/appmetrica/analytics/impl/th;->a:Lio/appmetrica/analytics/impl/r9;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v2, v1, Lio/appmetrica/analytics/impl/th;->b:Lio/appmetrica/analytics/impl/b0;

    iget-object v2, v2, Lio/appmetrica/analytics/impl/b0;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_7

    .line 90
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, v1, Lio/appmetrica/analytics/impl/th;->b:Lio/appmetrica/analytics/impl/b0;

    iget-object v3, v3, Lio/appmetrica/analytics/impl/b0;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v14, v2

    .line 91
    :catchall_0
    :cond_7
    :try_start_3
    iget-boolean v1, v1, Lio/appmetrica/analytics/impl/th;->c:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    :cond_8
    :goto_3
    move-object v1, v14

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v12, v13

    move-object v1, v14

    goto :goto_5

    .line 92
    :cond_9
    :goto_4
    invoke-static {v13}, Lio/appmetrica/analytics/impl/Rn;->a(Landroid/database/Cursor;)V

    goto :goto_6

    :catchall_2
    move-exception v0

    .line 93
    :goto_5
    :try_start_4
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 94
    invoke-static {v12}, Lio/appmetrica/analytics/impl/Rn;->a(Landroid/database/Cursor;)V

    .line 95
    :goto_6
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    .line 96
    iget-object v3, v8, Lio/appmetrica/analytics/impl/vh;->n:Lio/appmetrica/analytics/impl/db;

    const-string v4, "protobuf_serialization_error"

    invoke-interface {v3, v4, v2}, Lio/appmetrica/analytics/IReporter;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 97
    :cond_a
    new-instance v0, Lio/appmetrica/analytics/impl/uh;

    invoke-direct {v0, v9, v10, v1}, Lio/appmetrica/analytics/impl/uh;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/json/JSONObject;)V

    return-object v0

    :catchall_3
    move-exception v0

    move-object v1, v0

    .line 98
    invoke-static {v12}, Lio/appmetrica/analytics/impl/Rn;->a(Landroid/database/Cursor;)V

    .line 99
    throw v1
.end method

.method public final a(Z)V
    .locals 11

    .line 29
    iget-object v0, p0, Lio/appmetrica/analytics/impl/vh;->m:Lio/appmetrica/analytics/impl/do;

    iget v1, p0, Lio/appmetrica/analytics/impl/vh;->u:I

    monitor-enter v0

    .line 30
    :try_start_0
    iget-object v2, v0, Lio/appmetrica/analytics/impl/do;->a:Lio/appmetrica/analytics/impl/eo;

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/eo;->a()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "report_request_id"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v1}, Lio/appmetrica/analytics/impl/eo;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v0

    .line 31
    iget-object v0, p0, Lio/appmetrica/analytics/impl/vh;->d:Lio/appmetrica/analytics/impl/u9;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/u9;->a:[Lio/appmetrica/analytics/impl/r9;

    const/4 v1, 0x0

    move v2, v1

    .line 32
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 33
    :try_start_1
    aget-object v3, v0, v2

    .line 34
    iget-object v4, p0, Lio/appmetrica/analytics/impl/vh;->f:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 35
    iget-object v4, v3, Lio/appmetrica/analytics/impl/r9;->b:Lio/appmetrica/analytics/impl/q9;

    iget v4, v4, Lio/appmetrica/analytics/impl/q9;->c:I

    .line 36
    sget-object v5, Lio/appmetrica/analytics/impl/Lf;->b:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/appmetrica/analytics/impl/Ik;

    if-nez v4, :cond_0

    .line 37
    sget-object v4, Lio/appmetrica/analytics/impl/Ik;->b:Lio/appmetrica/analytics/impl/Ik;

    .line 38
    :cond_0
    iget-object v5, p0, Lio/appmetrica/analytics/impl/vh;->e:Lio/appmetrica/analytics/impl/W6;

    .line 39
    iget v8, v4, Lio/appmetrica/analytics/impl/Ik;->a:I

    .line 40
    iget-object v4, v3, Lio/appmetrica/analytics/impl/r9;->c:[Lio/appmetrica/analytics/impl/p9;

    array-length v9, v4

    move v10, p1

    invoke-virtual/range {v5 .. v10}, Lio/appmetrica/analytics/impl/W6;->a(JIIZ)V

    .line 41
    invoke-static {v3}, Lio/appmetrica/analytics/impl/Lf;->a(Lio/appmetrica/analytics/impl/r9;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 42
    :cond_1
    iget-object p1, p0, Lio/appmetrica/analytics/impl/vh;->e:Lio/appmetrica/analytics/impl/W6;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/vh;->a:Lio/appmetrica/analytics/impl/o5;

    .line 43
    iget-object v0, v0, Lio/appmetrica/analytics/impl/o5;->j:Lio/appmetrica/analytics/impl/Ek;

    .line 44
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Ek;->a()J

    move-result-wide v2

    .line 45
    iget-object v0, p1, Lio/appmetrica/analytics/impl/W6;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 46
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 47
    :try_start_2
    sget-object v0, Lio/appmetrica/analytics/impl/L5;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/W6;->d()V

    .line 49
    :cond_2
    iget-object v0, p1, Lio/appmetrica/analytics/impl/W6;->c:Lio/appmetrica/analytics/impl/j7;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/j7;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v4, "sessions"

    .line 50
    sget-object v5, Lio/appmetrica/analytics/impl/J5;->c:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    .line 51
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    .line 52
    invoke-virtual {v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 53
    :catchall_1
    :cond_3
    iget-object p1, p1, Lio/appmetrica/analytics/impl/W6;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_2
    move-exception p1

    .line 54
    monitor-exit v0

    throw p1
.end method

.method public final description()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ReportTask_"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lio/appmetrica/analytics/impl/vh;->a:Lio/appmetrica/analytics/impl/o5;

    .line 9
    .line 10
    iget-object v1, v1, Lio/appmetrica/analytics/impl/o5;->b:Lio/appmetrica/analytics/impl/h5;

    .line 11
    .line 12
    iget-object v1, v1, Lio/appmetrica/analytics/impl/h5;->b:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/ApiKeyUtils;->createPartialApiKey(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public final getFullUrlFormer()Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/vh;->p:Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRequestDataHolder()Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/vh;->r:Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getResponseDataHolder()Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/vh;->s:Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRetryPolicyConfig()Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/vh;->a:Lio/appmetrica/analytics/impl/o5;

    .line 2
    .line 3
    iget-object v0, v0, Lio/appmetrica/analytics/impl/o5;->k:Lio/appmetrica/analytics/impl/Og;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/D5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lio/appmetrica/analytics/impl/lh;

    .line 10
    .line 11
    invoke-virtual {v0}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getRetryPolicyConfig()Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public final getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 1
    sget-object v0, Lio/appmetrica/analytics/impl/za;->E:Lio/appmetrica/analytics/impl/za;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/za;->y()Lio/appmetrica/analytics/impl/T2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/appmetrica/analytics/impl/ll;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public final onCreateTask()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/vh;->a:Lio/appmetrica/analytics/impl/o5;

    .line 2
    .line 3
    iget-object v0, v0, Lio/appmetrica/analytics/impl/o5;->e:Lio/appmetrica/analytics/impl/W6;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v2, v0, Lio/appmetrica/analytics/impl/W6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 14
    .line 15
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    :try_start_0
    iget-object v3, v0, Lio/appmetrica/analytics/impl/W6;->c:Lio/appmetrica/analytics/impl/j7;

    .line 20
    .line 21
    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/j7;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    sget-object v4, Lio/appmetrica/analytics/impl/J5;->b:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 30
    .line 31
    .line 32
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :goto_0
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    new-instance v4, Landroid/content/ContentValues;

    .line 40
    .line 41
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-static {v3, v4}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    move-object v3, v2

    .line 52
    :cond_1
    invoke-static {v3}, Lio/appmetrica/analytics/impl/Rn;->a(Landroid/database/Cursor;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, v0, Lio/appmetrica/analytics/impl/W6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :catchall_0
    move-object v3, v2

    .line 62
    :catchall_1
    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 65
    .line 66
    .line 67
    invoke-static {v3}, Lio/appmetrica/analytics/impl/Rn;->a(Landroid/database/Cursor;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, v0, Lio/appmetrica/analytics/impl/W6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 71
    .line 72
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 73
    .line 74
    .line 75
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    const/4 v3, 0x0

    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    return v3

    .line 83
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Landroid/content/ContentValues;

    .line 88
    .line 89
    iget-object v1, p0, Lio/appmetrica/analytics/impl/vh;->b:Ljava/util/LinkedHashMap;

    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-eqz v4, :cond_3

    .line 107
    .line 108
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    check-cast v4, Ljava/util/Map$Entry;

    .line 113
    .line 114
    iget-object v5, p0, Lio/appmetrica/analytics/impl/vh;->b:Ljava/util/LinkedHashMap;

    .line 115
    .line 116
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    check-cast v6, Ljava/lang/String;

    .line 121
    .line 122
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_3
    const-string v1, "report_request_parameters"

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-nez v1, :cond_4

    .line 145
    .line 146
    :try_start_3
    new-instance v1, Lio/appmetrica/analytics/impl/rb;

    .line 147
    .line 148
    invoke-direct {v1, v0}, Lio/appmetrica/analytics/impl/rb;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    new-instance v0, Lio/appmetrica/analytics/impl/x7;

    .line 152
    .line 153
    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/x7;-><init>(Lio/appmetrica/analytics/impl/rb;)V

    .line 154
    .line 155
    .line 156
    iput-object v0, p0, Lio/appmetrica/analytics/impl/vh;->c:Lio/appmetrica/analytics/impl/x7;

    .line 157
    .line 158
    iget-object v1, p0, Lio/appmetrica/analytics/impl/vh;->o:Lio/appmetrica/analytics/impl/ah;

    .line 159
    .line 160
    iput-object v0, v1, Lio/appmetrica/analytics/impl/ah;->c:Lio/appmetrica/analytics/impl/x7;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :catchall_2
    new-instance v0, Lio/appmetrica/analytics/impl/x7;

    .line 164
    .line 165
    invoke-direct {v0}, Lio/appmetrica/analytics/impl/x7;-><init>()V

    .line 166
    .line 167
    .line 168
    iput-object v0, p0, Lio/appmetrica/analytics/impl/vh;->c:Lio/appmetrica/analytics/impl/x7;

    .line 169
    .line 170
    iget-object v1, p0, Lio/appmetrica/analytics/impl/vh;->o:Lio/appmetrica/analytics/impl/ah;

    .line 171
    .line 172
    iput-object v0, v1, Lio/appmetrica/analytics/impl/ah;->c:Lio/appmetrica/analytics/impl/x7;

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_4
    new-instance v0, Lio/appmetrica/analytics/impl/x7;

    .line 176
    .line 177
    invoke-direct {v0}, Lio/appmetrica/analytics/impl/x7;-><init>()V

    .line 178
    .line 179
    .line 180
    iput-object v0, p0, Lio/appmetrica/analytics/impl/vh;->c:Lio/appmetrica/analytics/impl/x7;

    .line 181
    .line 182
    iget-object v1, p0, Lio/appmetrica/analytics/impl/vh;->o:Lio/appmetrica/analytics/impl/ah;

    .line 183
    .line 184
    iput-object v0, v1, Lio/appmetrica/analytics/impl/ah;->c:Lio/appmetrica/analytics/impl/x7;

    .line 185
    .line 186
    :goto_3
    iget-object v0, p0, Lio/appmetrica/analytics/impl/vh;->q:Lio/appmetrica/analytics/impl/Jb;

    .line 187
    .line 188
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Jb;->a()Lio/appmetrica/analytics/impl/lh;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    iget-object v1, v0, Lio/appmetrica/analytics/impl/lh;->w:Ljava/util/List;

    .line 193
    .line 194
    invoke-static {v1}, Lio/appmetrica/analytics/impl/Rn;->a(Ljava/util/Collection;)Z

    .line 195
    .line 196
    .line 197
    move-result v4

    .line 198
    if-eqz v4, :cond_5

    .line 199
    .line 200
    return v3

    .line 201
    :cond_5
    iget-object v4, p0, Lio/appmetrica/analytics/impl/vh;->p:Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;

    .line 202
    .line 203
    iget-object v5, v0, Lio/appmetrica/analytics/impl/lh;->q:Ljava/util/List;

    .line 204
    .line 205
    invoke-virtual {v4, v5}, Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;->setHosts(Ljava/util/List;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/lh;->t()Z

    .line 209
    .line 210
    .line 211
    move-result v4

    .line 212
    const/4 v5, 0x1

    .line 213
    if-eqz v4, :cond_8

    .line 214
    .line 215
    iget-object v4, p0, Lio/appmetrica/analytics/impl/vh;->p:Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;

    .line 216
    .line 217
    invoke-virtual {v4}, Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;->getAllHosts()Ljava/util/List;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    invoke-static {v4}, Lio/appmetrica/analytics/impl/Rn;->a(Ljava/util/Collection;)Z

    .line 222
    .line 223
    .line 224
    move-result v4

    .line 225
    if-eqz v4, :cond_6

    .line 226
    .line 227
    goto :goto_4

    .line 228
    :cond_6
    iput-object v2, p0, Lio/appmetrica/analytics/impl/vh;->f:Ljava/util/List;

    .line 229
    .line 230
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/vh;->a(Lio/appmetrica/analytics/impl/lh;)Lio/appmetrica/analytics/impl/uh;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    iput-object v2, p0, Lio/appmetrica/analytics/impl/vh;->j:Lio/appmetrica/analytics/impl/uh;

    .line 235
    .line 236
    iget-object v2, v2, Lio/appmetrica/analytics/impl/uh;->a:Ljava/util/List;

    .line 237
    .line 238
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    if-eqz v2, :cond_7

    .line 243
    .line 244
    return v3

    .line 245
    :cond_7
    iget-object v2, p0, Lio/appmetrica/analytics/impl/vh;->m:Lio/appmetrica/analytics/impl/do;

    .line 246
    .line 247
    monitor-enter v2

    .line 248
    :try_start_4
    iget-object v3, v2, Lio/appmetrica/analytics/impl/do;->a:Lio/appmetrica/analytics/impl/eo;

    .line 249
    .line 250
    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/eo;->a()Lorg/json/JSONObject;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    const-string v4, "report_request_id"

    .line 255
    .line 256
    const/4 v6, -0x1

    .line 257
    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 258
    .line 259
    .line 260
    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 261
    monitor-exit v2

    .line 262
    add-int/2addr v3, v5

    .line 263
    iput v3, p0, Lio/appmetrica/analytics/impl/vh;->u:I

    .line 264
    .line 265
    iget-object v2, p0, Lio/appmetrica/analytics/impl/vh;->o:Lio/appmetrica/analytics/impl/ah;

    .line 266
    .line 267
    int-to-long v3, v3

    .line 268
    iput-wide v3, v2, Lio/appmetrica/analytics/impl/ah;->e:J

    .line 269
    .line 270
    iget-object v2, p0, Lio/appmetrica/analytics/impl/vh;->j:Lio/appmetrica/analytics/impl/uh;

    .line 271
    .line 272
    invoke-virtual {p0, v2, v1, v0}, Lio/appmetrica/analytics/impl/vh;->a(Lio/appmetrica/analytics/impl/uh;Ljava/util/List;Lio/appmetrica/analytics/impl/lh;)Lio/appmetrica/analytics/impl/u9;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    iput-object v0, p0, Lio/appmetrica/analytics/impl/vh;->d:Lio/appmetrica/analytics/impl/u9;

    .line 277
    .line 278
    iget-object v1, p0, Lio/appmetrica/analytics/impl/vh;->j:Lio/appmetrica/analytics/impl/uh;

    .line 279
    .line 280
    iget-object v1, v1, Lio/appmetrica/analytics/impl/uh;->b:Ljava/util/List;

    .line 281
    .line 282
    iput-object v1, p0, Lio/appmetrica/analytics/impl/vh;->f:Ljava/util/List;

    .line 283
    .line 284
    iget-object v1, p0, Lio/appmetrica/analytics/impl/vh;->t:Lio/appmetrica/analytics/networktasks/internal/SendingDataTaskHelper;

    .line 285
    .line 286
    invoke-static {v0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    invoke-virtual {v1, v0}, Lio/appmetrica/analytics/networktasks/internal/SendingDataTaskHelper;->prepareAndSetPostData([B)Z

    .line 291
    .line 292
    .line 293
    return v5

    .line 294
    :catchall_3
    move-exception v0

    .line 295
    monitor-exit v2

    .line 296
    throw v0

    .line 297
    :cond_8
    :goto_4
    iput-boolean v5, p0, Lio/appmetrica/analytics/impl/vh;->v:Z

    .line 298
    .line 299
    return v3

    .line 300
    :catchall_4
    move-exception v1

    .line 301
    invoke-static {v3}, Lio/appmetrica/analytics/impl/Rn;->a(Landroid/database/Cursor;)V

    .line 302
    .line 303
    .line 304
    iget-object v0, v0, Lio/appmetrica/analytics/impl/W6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 305
    .line 306
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 307
    .line 308
    .line 309
    throw v1
.end method

.method public final onPerformRequest()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/vh;->t:Lio/appmetrica/analytics/networktasks/internal/SendingDataTaskHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/appmetrica/analytics/networktasks/internal/SendingDataTaskHelper;->onPerformRequest()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onPostRequestComplete(Z)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/vh;->a(Z)V

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/vh;->s:Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;

    .line 9
    .line 10
    invoke-virtual {v1}, Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;->getResponseCode()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/16 v2, 0x190

    .line 15
    .line 16
    if-ne v1, v2, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {p0, v1}, Lio/appmetrica/analytics/impl/vh;->a(Z)V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    if-eqz p1, :cond_4

    .line 23
    .line 24
    move p1, v0

    .line 25
    :goto_1
    iget-object v1, p0, Lio/appmetrica/analytics/impl/vh;->j:Lio/appmetrica/analytics/impl/uh;

    .line 26
    .line 27
    iget-object v1, v1, Lio/appmetrica/analytics/impl/uh;->a:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-ge p1, v1, :cond_4

    .line 34
    .line 35
    iget-object v1, p0, Lio/appmetrica/analytics/impl/vh;->j:Lio/appmetrica/analytics/impl/uh;

    .line 36
    .line 37
    iget-object v1, v1, Lio/appmetrica/analytics/impl/uh;->a:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lio/appmetrica/analytics/impl/r9;

    .line 44
    .line 45
    iget-object v1, v1, Lio/appmetrica/analytics/impl/r9;->c:[Lio/appmetrica/analytics/impl/p9;

    .line 46
    .line 47
    array-length v2, v1

    .line 48
    move v3, v0

    .line 49
    :goto_2
    if-ge v3, v2, :cond_3

    .line 50
    .line 51
    aget-object v4, v1, v3

    .line 52
    .line 53
    if-eqz v4, :cond_2

    .line 54
    .line 55
    invoke-static {v4}, Lio/appmetrica/analytics/impl/Mf;->a(Lio/appmetrica/analytics/impl/p9;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    if-eqz v4, :cond_2

    .line 60
    .line 61
    iget-object v5, p0, Lio/appmetrica/analytics/impl/vh;->l:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 62
    .line 63
    new-array v6, v0, [Ljava/lang/Object;

    .line 64
    .line 65
    invoke-virtual {v5, v4, v6}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_4
    return-void
.end method

.method public final onRequestComplete()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/vh;->t:Lio/appmetrica/analytics/networktasks/internal/SendingDataTaskHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/appmetrica/analytics/networktasks/internal/SendingDataTaskHelper;->isResponseValid()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final onRequestError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final onShouldNotExecute()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/vh;->v:Z

    .line 3
    .line 4
    iget-object v0, p0, Lio/appmetrica/analytics/impl/vh;->a:Lio/appmetrica/analytics/impl/o5;

    .line 5
    .line 6
    iget-object v0, v0, Lio/appmetrica/analytics/impl/o5;->e:Lio/appmetrica/analytics/impl/W6;

    .line 7
    .line 8
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/W6;->a()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onSuccessfulTaskFinished()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/vh;->v:Z

    .line 3
    .line 4
    return-void
.end method

.method public final onTaskAdded()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/vh;->a:Lio/appmetrica/analytics/impl/o5;

    .line 2
    .line 3
    iget-object v0, v0, Lio/appmetrica/analytics/impl/o5;->p:Lio/appmetrica/analytics/impl/B9;

    .line 4
    .line 5
    check-cast v0, Lio/appmetrica/analytics/impl/z5;

    .line 6
    .line 7
    iget-object v0, v0, Lio/appmetrica/analytics/impl/z5;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onTaskFinished()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/vh;->a:Lio/appmetrica/analytics/impl/o5;

    .line 2
    .line 3
    iget-object v0, v0, Lio/appmetrica/analytics/impl/o5;->e:Lio/appmetrica/analytics/impl/W6;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/W6;->a()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onTaskRemoved()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/vh;->a:Lio/appmetrica/analytics/impl/o5;

    .line 2
    .line 3
    iget-object v0, v0, Lio/appmetrica/analytics/impl/o5;->p:Lio/appmetrica/analytics/impl/B9;

    .line 4
    .line 5
    check-cast v0, Lio/appmetrica/analytics/impl/z5;

    .line 6
    .line 7
    iget-object v0, v0, Lio/appmetrica/analytics/impl/z5;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 11
    .line 12
    .line 13
    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/vh;->v:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lio/appmetrica/analytics/impl/vh;->a:Lio/appmetrica/analytics/impl/o5;

    .line 18
    .line 19
    iget-object v0, v0, Lio/appmetrica/analytics/impl/o5;->p:Lio/appmetrica/analytics/impl/B9;

    .line 20
    .line 21
    check-cast v0, Lio/appmetrica/analytics/impl/z5;

    .line 22
    .line 23
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/z5;->f()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final onUnsuccessfulTaskFinished()V
    .locals 0

    return-void
.end method
