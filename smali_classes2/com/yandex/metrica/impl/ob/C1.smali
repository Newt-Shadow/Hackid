.class Lcom/yandex/metrica/impl/ob/C1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final f:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/A6;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final c:Lcom/yandex/metrica/impl/ob/k3;

.field private final d:Lcom/yandex/metrica/impl/ob/bm;

.field private final e:Lcom/yandex/metrica/impl/ob/i3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/yandex/metrica/impl/ob/C1;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/util/List;Lcom/yandex/metrica/impl/ob/bm;Lcom/yandex/metrica/impl/ob/i3;Lcom/yandex/metrica/impl/ob/k3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread$UncaughtExceptionHandler;",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/A6;",
            ">;",
            "Lcom/yandex/metrica/impl/ob/bm;",
            "Lcom/yandex/metrica/impl/ob/i3;",
            "Lcom/yandex/metrica/impl/ob/k3;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/C1;->a:Ljava/util/List;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/C1;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/C1;->d:Lcom/yandex/metrica/impl/ob/bm;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/C1;->e:Lcom/yandex/metrica/impl/ob/i3;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/C1;->c:Lcom/yandex/metrica/impl/ob/k3;

    .line 13
    .line 14
    return-void
.end method

.method public static a()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/C1;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lcom/yandex/metrica/impl/ob/C1;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lcom/yandex/metrica/impl/ob/w6;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/C1;->e:Lcom/yandex/metrica/impl/ob/i3;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/i3;->a(Ljava/lang/Thread;)Lcom/yandex/metrica/impl/ob/E6;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/C1;->c:Lcom/yandex/metrica/impl/ob/k3;

    .line 16
    .line 17
    invoke-virtual {v2, p1}, Lcom/yandex/metrica/impl/ob/k3;->a(Ljava/lang/Thread;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/C1;->d:Lcom/yandex/metrica/impl/ob/bm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    check-cast v3, Lcom/yandex/metrica/impl/ob/Xl;

    .line 24
    .line 25
    :try_start_1
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/Xl;->b()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/metrica/impl/ob/w6;-><init>(Lcom/yandex/metrica/impl/ob/E6;Ljava/util/List;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/C1;->a:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Lcom/yandex/metrica/impl/ob/A6;

    .line 49
    .line 50
    invoke-interface {v2, p2, v0}, Lcom/yandex/metrica/impl/ob/A6;->a(Ljava/lang/Throwable;Lcom/yandex/metrica/impl/ob/w6;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/C1;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 55
    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    return-void

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/C1;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 64
    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    throw v0
.end method
