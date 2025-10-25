.class public Lcom/yandex/metrica/impl/ob/L7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/L7$a;
    }
.end annotation


# static fields
.field private static final o:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final b:Ljava/util/concurrent/locks/Lock;

.field private final c:Ljava/util/concurrent/locks/Lock;

.field private final d:Lcom/yandex/metrica/impl/ob/O7;

.field private final e:Lcom/yandex/metrica/impl/ob/L7$a;

.field private final f:Ljava/lang/Object;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroid/content/Context;

.field private final i:Lcom/yandex/metrica/impl/ob/L3;

.field private final j:Ljava/util/concurrent/atomic/AtomicLong;

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/nb;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lcom/yandex/metrica/impl/ob/K7;

.field private volatile m:Lcom/yandex/metrica/impl/ob/qn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/qn<",
            "Lcom/yandex/metrica/impl/ob/ui$b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Lcom/yandex/metrica/impl/ob/rn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/rn<",
            "Lcom/yandex/metrica/impl/ob/ui$b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


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
    sput-object v0, Lcom/yandex/metrica/impl/ob/L7;->o:Ljava/util/HashSet;

    .line 7
    .line 8
    sget-object v1, Lcom/yandex/metrica/impl/ob/a1;->d:Lcom/yandex/metrica/impl/ob/a1;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    sget-object v1, Lcom/yandex/metrica/impl/ob/a1;->Q:Lcom/yandex/metrica/impl/ob/a1;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/L3;Lcom/yandex/metrica/impl/ob/O7;Lcom/yandex/metrica/impl/ob/K7;)V
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
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/L7;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/L7;->b:Ljava/util/concurrent/locks/Lock;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/L7;->c:Ljava/util/concurrent/locks/Lock;

    .line 22
    .line 23
    new-instance v0, Ljava/lang/Object;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/L7;->f:Ljava/lang/Object;

    .line 29
    .line 30
    new-instance v0, Ljava/util/ArrayList;

    .line 31
    .line 32
    const/4 v1, 0x3

    .line 33
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/L7;->g:Ljava/util/List;

    .line 37
    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/L7;->j:Ljava/util/concurrent/atomic/AtomicLong;

    .line 44
    .line 45
    new-instance v1, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/L7;->k:Ljava/util/List;

    .line 51
    .line 52
    new-instance v1, Lcom/yandex/metrica/impl/ob/rn;

    .line 53
    .line 54
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/rn;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/L7;->n:Lcom/yandex/metrica/impl/ob/rn;

    .line 58
    .line 59
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/L7;->d:Lcom/yandex/metrica/impl/ob/O7;

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/L3;->g()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/L7;->h:Landroid/content/Context;

    .line 66
    .line 67
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/L7;->i:Lcom/yandex/metrica/impl/ob/L3;

    .line 68
    .line 69
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/L7;->l:Lcom/yandex/metrica/impl/ob/K7;

    .line 70
    .line 71
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/L7;->d()J

    .line 72
    .line 73
    .line 74
    move-result-wide p2

    .line 75
    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 76
    .line 77
    .line 78
    new-instance p2, Lcom/yandex/metrica/impl/ob/L7$a;

    .line 79
    .line 80
    invoke-direct {p2, p0, p1}, Lcom/yandex/metrica/impl/ob/L7$a;-><init>(Lcom/yandex/metrica/impl/ob/L7;Lcom/yandex/metrica/impl/ob/L3;)V

    .line 81
    .line 82
    .line 83
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/L7;->e:Lcom/yandex/metrica/impl/ob/L7$a;

    .line 84
    .line 85
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/L7;->a(Lcom/yandex/metrica/impl/ob/P3;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p3

    .line 89
    invoke-virtual {p2, p3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/L3;->w()Lcom/yandex/metrica/impl/ob/pi;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/L7;->a(Lcom/yandex/metrica/impl/ob/pi;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method private a(Landroid/content/ContentValues;)I
    .locals 1

    const-string v0, "type"

    .line 170
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 12

    const-string v0, ", "

    const-string v1, "id"

    const-string v2, "%1$s IN (SELECT %1$s FROM %2$s ORDER BY CASE WHEN %3$s IN (%4$s) THEN 2 WHEN %3$s IN (%5$s) THEN 1 ELSE 0 END, %6$s LIMIT (SELECT count() FROM %2$s) / %7$s)"

    const/4 v3, 0x7

    const/4 v4, 0x0

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string v5, "reports"

    const/4 v6, 0x1

    aput-object v5, v3, v6

    const-string v5, "type"

    const/4 v6, 0x2

    aput-object v5, v3, v6

    .line 84
    sget-object v5, Lcom/yandex/metrica/impl/ob/z0;->i:Ljava/util/List;

    .line 85
    invoke-static {v0, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v3, v6

    sget-object v5, Lcom/yandex/metrica/impl/ob/z0;->j:Ljava/util/List;

    .line 86
    invoke-static {v0, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x4

    aput-object v0, v3, v5

    const/4 v0, 0x5

    aput-object v1, v3, v0

    const/16 v0, 0xa

    .line 87
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, v3, v1

    .line 88
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 89
    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/L7;->l:Lcom/yandex/metrica/impl/ob/K7;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "reports"

    :try_start_1
    sget-object v9, Lcom/yandex/metrica/impl/ob/K7$b;->c:Lcom/yandex/metrica/impl/ob/K7$b;

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L7;->i:Lcom/yandex/metrica/impl/ob/L3;

    .line 90
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L3;->e()Lcom/yandex/metrica/impl/ob/I3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/I3;->a()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    move-object v6, p1

    .line 91
    invoke-virtual/range {v5 .. v11}, Lcom/yandex/metrica/impl/ob/K7;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/K7$b;Ljava/lang/String;Z)Lcom/yandex/metrica/impl/ob/K7$a;

    move-result-object p1

    iget p1, p1, Lcom/yandex/metrica/impl/ob/K7$a;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 92
    invoke-static {}, Lcom/yandex/metrica/impl/ob/oh;->a()Lcom/yandex/metrica/impl/ob/M0;

    move-result-object v0

    .line 93
    check-cast v0, Lcom/yandex/metrica/impl/ob/nh;

    const-string v1, "deleteExcessiveReports exception"

    invoke-virtual {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/nh;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v4
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/L7;Landroid/content/ContentValues;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/L7;->a(Landroid/content/ContentValues;)I

    move-result p0

    return p0
.end method

.method private static a(Lcom/yandex/metrica/impl/ob/P3;)Ljava/lang/String;
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DatabaseWorker ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p0, Lcom/yandex/metrica/impl/ob/L3;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/L3;->e()Lcom/yandex/metrica/impl/ob/I3;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/I3;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, " AND "

    goto :goto_1

    :cond_0
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = ? "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 152
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

.method private a(Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2

    const-string v0, "type"

    .line 158
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 160
    :goto_0
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/z0;->c(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, ": "

    .line 162
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "name"

    .line 163
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, ""

    if-nez p2, :cond_1

    move-object p2, v1

    .line 164
    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "value"

    .line 165
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, p2

    .line 166
    :goto_1
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/L7;->a(Landroid/content/ContentValues;)I

    move-result p1

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/z0;->e(I)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, " with value "

    .line 167
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    :cond_3
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/L7;->i:Lcom/yandex/metrica/impl/ob/L3;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/L3;->q()Lcom/yandex/metrica/impl/ob/cm;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/coreutils/logger/a;->i(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private a(Lcom/yandex/metrica/impl/ob/pi;)V
    .locals 10

    .line 2
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/pi;->f()Lcom/yandex/metrica/impl/ob/Sh;

    move-result-object v0

    iget-boolean v0, v0, Lcom/yandex/metrica/impl/ob/Sh;->o:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/pi;->Q()Lcom/yandex/metrica/impl/ob/ui;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/pi;->Q()Lcom/yandex/metrica/impl/ob/ui;

    move-result-object v0

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/ui;->b:Lcom/yandex/metrica/impl/ob/ui$a;

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, v1

    .line 4
    :goto_1
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/pi;->f()Lcom/yandex/metrica/impl/ob/Sh;

    move-result-object v2

    iget-boolean v2, v2, Lcom/yandex/metrica/impl/ob/Sh;->o:Z

    if-eqz v2, :cond_3

    .line 5
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/pi;->Q()Lcom/yandex/metrica/impl/ob/ui;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/pi;->Q()Lcom/yandex/metrica/impl/ob/ui;

    move-result-object p1

    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/ui;->a:Lcom/yandex/metrica/impl/ob/ui$a;

    .line 6
    :cond_3
    :goto_2
    new-instance p1, Ljava/util/EnumMap;

    const-class v2, Lcom/yandex/metrica/impl/ob/ui$b;

    invoke-direct {p1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 7
    sget-object v2, Lcom/yandex/metrica/impl/ob/ui$b;->a:Lcom/yandex/metrica/impl/ob/ui$b;

    if-nez v0, :cond_4

    .line 8
    new-instance v0, Lcom/yandex/metrica/impl/ob/sn;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/sn;-><init>()V

    goto :goto_3

    .line 9
    :cond_4
    new-instance v9, Lcom/yandex/metrica/impl/ob/yn;

    new-instance v4, Lcom/yandex/metrica/impl/ob/xn;

    new-instance v3, Lcom/yandex/metrica/impl/ob/Bn;

    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/Bn;-><init>()V

    new-instance v5, Lcom/yandex/metrica/impl/ob/Cn;

    invoke-direct {v5}, Lcom/yandex/metrica/impl/ob/Cn;-><init>()V

    invoke-direct {v4, v3, v5}, Lcom/yandex/metrica/impl/ob/xn;-><init>(Lcom/yandex/metrica/impl/ob/un;Ljava/util/Comparator;)V

    new-instance v5, Ldc/c;

    invoke-direct {v5}, Ldc/c;-><init>()V

    iget v6, v0, Lcom/yandex/metrica/impl/ob/ui$a;->a:I

    iget-wide v7, v0, Lcom/yandex/metrica/impl/ob/ui$a;->b:J

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/yandex/metrica/impl/ob/yn;-><init>(Ljava/util/Comparator;Ldc/d;IJ)V

    move-object v0, v9

    .line 10
    :goto_3
    invoke-virtual {p1, v2, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lcom/yandex/metrica/impl/ob/ui$b;->b:Lcom/yandex/metrica/impl/ob/ui$b;

    if-nez v1, :cond_5

    .line 12
    new-instance v1, Lcom/yandex/metrica/impl/ob/sn;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/sn;-><init>()V

    goto :goto_4

    .line 13
    :cond_5
    new-instance v8, Lcom/yandex/metrica/impl/ob/yn;

    new-instance v3, Lcom/yandex/metrica/impl/ob/xn;

    new-instance v2, Lcom/yandex/metrica/impl/ob/on$a;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/on$a;-><init>()V

    new-instance v4, Lcom/yandex/metrica/impl/ob/pn;

    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/pn;-><init>()V

    invoke-direct {v3, v2, v4}, Lcom/yandex/metrica/impl/ob/xn;-><init>(Lcom/yandex/metrica/impl/ob/un;Ljava/util/Comparator;)V

    new-instance v4, Ldc/c;

    invoke-direct {v4}, Ldc/c;-><init>()V

    iget v5, v1, Lcom/yandex/metrica/impl/ob/ui$a;->a:I

    iget-wide v6, v1, Lcom/yandex/metrica/impl/ob/ui$a;->b:J

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/yandex/metrica/impl/ob/yn;-><init>(Ljava/util/Comparator;Ldc/d;IJ)V

    move-object v1, v8

    .line 14
    :goto_4
    invoke-virtual {p1, v0, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v0, Lcom/yandex/metrica/impl/ob/qn;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/qn;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/L7;->m:Lcom/yandex/metrica/impl/ob/qn;

    return-void
.end method

.method static a(Lcom/yandex/metrica/impl/ob/L7;)Z
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L7;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 172
    :try_start_0
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/L7;->g:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 173
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static a([Ljava/lang/String;Ljava/util/Map;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 155
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 156
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/ob/L7;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/L7;->f:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic c(Lcom/yandex/metrica/impl/ob/L7;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/L7;->g:Ljava/util/List;

    return-object p0
.end method

.method private d()J
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L7;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L7;->d:Lcom/yandex/metrica/impl/ob/O7;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/O7;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "reports"

    .line 4
    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    const-wide/16 v0, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/L7;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v0
.end method

.method static synthetic d(Lcom/yandex/metrica/impl/ob/L7;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/L7;->k:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public a(J)I
    .locals 5

    .line 70
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L7;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    .line 71
    :try_start_0
    sget v1, Lcom/yandex/metrica/impl/ob/j8;->a:I

    .line 72
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/L7;->d:Lcom/yandex/metrica/impl/ob/O7;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/O7;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const-string v2, "sessions"

    .line 73
    :try_start_1
    sget-object v3, Lcom/yandex/metrica/impl/ob/j8$e;->d:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 74
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v0

    .line 75
    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :catchall_0
    :cond_0
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/L7;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0
.end method

.method public a(Ljava/util/Set;)J
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)J"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L7;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 17
    :try_start_0
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/L7;->d:Lcom/yandex/metrica/impl/ob/O7;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/O7;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SELECT count() FROM reports"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, " WHERE "

    .line 20
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
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

    .line 22
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
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

    .line 24
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 25
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 26
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :catchall_0
    :cond_3
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(Landroid/database/Cursor;)V

    .line 28
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/L7;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v1
.end method

.method public a(JLcom/yandex/metrica/impl/ob/f6;)Landroid/content/ContentValues;
    .locals 6

    .line 134
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 135
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/L7;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x0

    .line 136
    :try_start_0
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/L7;->d:Lcom/yandex/metrica/impl/ob/O7;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/O7;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 137
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "SELECT report_request_parameters FROM sessions WHERE id = %s AND type = %s ORDER BY id DESC LIMIT 1"

    const/4 v5, 0x2

    :try_start_1
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v5, p2

    .line 138
    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/f6;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v5, p2

    .line 139
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 140
    invoke-virtual {v2, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 141
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 142
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 143
    invoke-static {v1, p1}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p1

    .line 144
    :cond_0
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Landroid/database/Cursor;)V

    .line 145
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/L7;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 146
    :catchall_0
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Landroid/database/Cursor;)V

    .line 147
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/L7;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-object v0
.end method

.method public a(Ljava/util/Map;)Landroid/database/Cursor;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L7;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L7;->d:Lcom/yandex/metrica/impl/ob/O7;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/O7;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const-string v2, "sessions"

    const/4 v3, 0x0

    :try_start_1
    const-string v0, "id >= ?"

    .line 118
    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/ob/L7;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-wide/16 v5, 0x0

    .line 119
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v0, v6

    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/ob/L7;->a([Ljava/lang/String;Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "id ASC"

    const/4 v9, 0x0

    .line 120
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    const/4 p1, 0x0

    .line 121
    :goto_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L7;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1
.end method

.method public a()V
    .locals 4

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L7;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 78
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L7;->i:Lcom/yandex/metrica/impl/ob/L3;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L3;->m()Lcom/yandex/metrica/impl/ob/Lg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Lg;->J()J

    move-result-wide v0

    .line 79
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/L7;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L7;->d:Lcom/yandex/metrica/impl/ob/O7;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/O7;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/L7;->a(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v0

    .line 82
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/L7;->j:Ljava/util/concurrent/atomic/AtomicLong;

    neg-int v0, v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :catchall_0
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L7;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public a(JIIZ)V
    .locals 14

    move-object v0, p0

    if-gtz p4, :cond_0

    return-void

    .line 94
    :cond_0
    iget-object v1, v0, Lcom/yandex/metrica/impl/ob/L7;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 95
    :try_start_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "%1$s = %2$s AND %3$s = %4$s AND %5$s <= (SELECT %5$s FROM %6$s WHERE %1$s = %2$s AND %3$s = %4$s ORDER BY %5$s ASC LIMIT %7$s, 1)"

    const/4 v3, 0x7

    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "session_id"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 96
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-string v4, "session_type"

    const/4 v7, 0x2

    aput-object v4, v3, v7

    .line 97
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x3

    aput-object v4, v3, v7

    const-string v4, "id"

    const/4 v7, 0x4

    aput-object v4, v3, v7

    const-string v4, "reports"

    const/4 v7, 0x5

    aput-object v4, v3, v7

    add-int/lit8 v4, p4, -0x1

    .line 98
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x6

    aput-object v4, v3, v6

    .line 99
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 100
    iget-object v1, v0, Lcom/yandex/metrica/impl/ob/L7;->d:Lcom/yandex/metrica/impl/ob/O7;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/O7;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 101
    iget-object v7, v0, Lcom/yandex/metrica/impl/ob/L7;->l:Lcom/yandex/metrica/impl/ob/K7;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v9, "reports"

    :try_start_2
    sget-object v11, Lcom/yandex/metrica/impl/ob/K7$b;->b:Lcom/yandex/metrica/impl/ob/K7$b;

    iget-object v1, v0, Lcom/yandex/metrica/impl/ob/L7;->i:Lcom/yandex/metrica/impl/ob/L3;

    .line 102
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/L3;->e()Lcom/yandex/metrica/impl/ob/I3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/I3;->a()Ljava/lang/String;

    move-result-object v12

    move/from16 v13, p5

    .line 103
    invoke-virtual/range {v7 .. v13}, Lcom/yandex/metrica/impl/ob/K7;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/K7$b;Ljava/lang/String;Z)Lcom/yandex/metrica/impl/ob/K7$a;

    move-result-object v1

    .line 104
    iget-object v2, v1, Lcom/yandex/metrica/impl/ob/K7$a;->a:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 105
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 106
    iget-object v3, v1, Lcom/yandex/metrica/impl/ob/K7$a;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 107
    invoke-direct {p0, v4}, Lcom/yandex/metrica/impl/ob/L7;->a(Landroid/content/ContentValues;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 108
    :cond_1
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/L7;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/metrica/impl/ob/nb;

    .line 109
    invoke-interface {v4, v2}, Lcom/yandex/metrica/impl/ob/nb;->b(Ljava/util/List;)V

    goto :goto_1

    .line 110
    :cond_2
    iget-object v2, v0, Lcom/yandex/metrica/impl/ob/L7;->i:Lcom/yandex/metrica/impl/ob/L3;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/L3;->q()Lcom/yandex/metrica/impl/ob/cm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/coreutils/logger/a;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/yandex/metrica/impl/ob/K7$a;->a:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_3

    const-string v3, "Event removed from db"

    .line 111
    :goto_2
    :try_start_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v5, v4, :cond_3

    .line 112
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    invoke-direct {p0, v4, v3}, Lcom/yandex/metrica/impl/ob/L7;->a(Landroid/content/ContentValues;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 113
    :cond_3
    iget v1, v1, Lcom/yandex/metrica/impl/ob/K7$a;->b:I

    .line 114
    iget-object v2, v0, Lcom/yandex/metrica/impl/ob/L7;->j:Ljava/util/concurrent/atomic/AtomicLong;

    neg-int v1, v1

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 115
    :catchall_0
    :cond_4
    iget-object v1, v0, Lcom/yandex/metrica/impl/ob/L7;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public a(JLcom/yandex/metrica/impl/ob/f6;J)V
    .locals 1

    .line 31
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 32
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 33
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "start_time"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 34
    invoke-static {}, Lcom/yandex/metrica/impl/ob/fm;->c()Lcom/yandex/metrica/impl/ob/fm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fm;->a()J

    move-result-wide p1

    .line 35
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "server_time_offset"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 36
    invoke-static {}, Lcom/yandex/metrica/impl/ob/fm;->c()Lcom/yandex/metrica/impl/ob/fm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fm;->e()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "obtained_before_first_sync"

    .line 37
    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 38
    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/f6;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "type"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 39
    new-instance p1, Lcom/yandex/metrica/impl/ob/i0;

    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/L7;->h:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/yandex/metrica/impl/ob/i0;-><init>(Landroid/content/Context;)V

    .line 40
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/L7;->i:Lcom/yandex/metrica/impl/ob/L3;

    .line 41
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/L3;->m()Lcom/yandex/metrica/impl/ob/Lg;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/i0;->a(Lcom/yandex/metrica/impl/ob/Lg;)Lcom/yandex/metrica/impl/ob/i0;

    move-result-object p1

    .line 42
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/i0;->a(Landroid/content/ContentValues;)Lcom/yandex/metrica/impl/ob/i0;

    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/i0;->a()V

    .line 44
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/L7;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 45
    :try_start_0
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/L7;->d:Lcom/yandex/metrica/impl/ob/O7;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/O7;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "sessions"

    const/4 p3, 0x0

    .line 46
    invoke-virtual {p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :catchall_0
    :cond_0
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/L7;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/Bm;ILcom/yandex/metrica/impl/ob/c6;Lcom/yandex/metrica/impl/ob/s$a;Lcom/yandex/metrica/impl/ob/O3;)V
    .locals 3

    .line 48
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 49
    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/c6;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "number"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 50
    invoke-static {p2}, Lcom/yandex/metrica/impl/ob/z0;->d(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {p5}, Lcom/yandex/metrica/impl/ob/O3;->a()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 52
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_number"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 53
    invoke-virtual {p5, p2}, Lcom/yandex/metrica/impl/ob/O3;->a(I)I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const-string v1, "number_of_type"

    .line 54
    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 55
    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/c6;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    const-string v1, "time"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 56
    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/c6;->c()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    const-string v1, "session_id"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 57
    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/c6;->d()Lcom/yandex/metrica/impl/ob/f6;

    move-result-object p3

    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/f6;->a()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p5, "session_type"

    invoke-virtual {v0, p5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 58
    new-instance p3, Lcom/yandex/metrica/impl/ob/i0;

    iget-object p5, p0, Lcom/yandex/metrica/impl/ob/L7;->h:Landroid/content/Context;

    invoke-direct {p3, p5}, Lcom/yandex/metrica/impl/ob/i0;-><init>(Landroid/content/Context;)V

    .line 59
    iget-object p5, p0, Lcom/yandex/metrica/impl/ob/L7;->i:Lcom/yandex/metrica/impl/ob/L3;

    invoke-virtual {p5}, Lcom/yandex/metrica/impl/ob/L3;->m()Lcom/yandex/metrica/impl/ob/Lg;

    move-result-object p5

    invoke-virtual {p3, p5}, Lcom/yandex/metrica/impl/ob/i0;->a(Lcom/yandex/metrica/impl/ob/Lg;)Lcom/yandex/metrica/impl/ob/i0;

    move-result-object p3

    .line 60
    invoke-virtual {p3, v0}, Lcom/yandex/metrica/impl/ob/i0;->a(Landroid/content/ContentValues;)Lcom/yandex/metrica/impl/ob/i0;

    move-result-object p3

    .line 61
    sget-object p5, Lcom/yandex/metrica/impl/ob/L7;->o:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/L7;->n:Lcom/yandex/metrica/impl/ob/rn;

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/L7;->m:Lcom/yandex/metrica/impl/ob/qn;

    .line 62
    :goto_1
    invoke-virtual {p3, p1, p4, p2}, Lcom/yandex/metrica/impl/ob/i0;->a(Lcom/yandex/metrica/impl/ob/Bm;Lcom/yandex/metrica/impl/ob/s$a;Lcom/yandex/metrica/impl/ob/vn;)V

    .line 63
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/L7;->f:Ljava/lang/Object;

    monitor-enter p1

    .line 64
    :try_start_0
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/L7;->g:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 66
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/L7;->e:Lcom/yandex/metrica/impl/ob/L7$a;

    monitor-enter p2

    .line 67
    :try_start_1
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/L7;->e:Lcom/yandex/metrica/impl/ob/L7$a;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 68
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p2

    .line 69
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p2
.end method

.method public a(Lcom/yandex/metrica/impl/ob/nb;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L7;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .line 122
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L7;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/L7;->d:Lcom/yandex/metrica/impl/ob/O7;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/O7;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_2

    .line 125
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 126
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    const-string v3, "reports"

    .line 127
    invoke-virtual {v1, v3, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 128
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/L7;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    const-string v3, "Event saved to db"

    .line 129
    invoke-direct {p0, v2, v3}, Lcom/yandex/metrica/impl/ob/L7;->a(Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 131
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/L7;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-object v0, v1

    :catchall_1
    move-object v1, v0

    .line 132
    :cond_2
    :goto_1
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 133
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/L7;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public b(JLcom/yandex/metrica/impl/ob/f6;)Landroid/database/Cursor;
    .locals 10

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L7;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L7;->d:Lcom/yandex/metrica/impl/ob/O7;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/O7;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const-string v2, "reports"

    const/4 v3, 0x0

    const-string v4, "session_id = ? AND session_type = ?"

    const/4 v0, 0x2

    :try_start_1
    new-array v5, v0, [Ljava/lang/String;

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v5, p2

    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/f6;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v5, p2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "number ASC"

    const/4 v9, 0x0

    .line 5
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/L7;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1
.end method

.method public b()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/L7;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x0

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/L7;->d:Lcom/yandex/metrica/impl/ob/O7;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/O7;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10
    sget-object v3, Lcom/yandex/metrica/impl/ob/j8$e;->c:Ljava/lang/String;

    .line 11
    invoke-virtual {v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 12
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 14
    invoke-static {v1, v2}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 15
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 16
    :cond_0
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Landroid/database/Cursor;)V

    .line 17
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/L7;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    .line 18
    :catchall_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 19
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Landroid/database/Cursor;)V

    .line 20
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/L7;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_1
    return-object v0

    :catchall_1
    move-exception v0

    .line 21
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Landroid/database/Cursor;)V

    .line 22
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/L7;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 23
    throw v0
.end method

.method public b(Lcom/yandex/metrica/impl/ob/pi;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/L7;->a(Lcom/yandex/metrica/impl/ob/pi;)V

    return-void
.end method

.method public c()J
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L7;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L7;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/L7;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/L7;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 5
    throw v0
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L7;->e:Lcom/yandex/metrica/impl/ob/L7$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
