.class Lcom/yandex/metrica/impl/ob/a$c;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/a;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/a$c;->a:Lcom/yandex/metrica/impl/ob/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 5
    .line 6
    .line 7
    move-result v3

    .line 8
    if-nez v3, :cond_3

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/a$c;->a:Lcom/yandex/metrica/impl/ob/a;

    .line 13
    .line 14
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/a;->a(Lcom/yandex/metrica/impl/ob/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/a$c;->a:Lcom/yandex/metrica/impl/ob/a;

    .line 22
    .line 23
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/a;->c(Lcom/yandex/metrica/impl/ob/a;)Landroid/os/Handler;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/a$c;->a:Lcom/yandex/metrica/impl/ob/a;

    .line 28
    .line 29
    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/a;->b(Lcom/yandex/metrica/impl/ob/a;)Ljava/lang/Runnable;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    move v2, v0

    .line 37
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/yandex/metrica/impl/ob/a;->a()J

    .line 38
    .line 39
    .line 40
    move-result-wide v3

    .line 41
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/a$c;->a:Lcom/yandex/metrica/impl/ob/a;

    .line 45
    .line 46
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/a;->a(Lcom/yandex/metrica/impl/ob/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_2

    .line 55
    .line 56
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    const/4 v1, 0x4

    .line 59
    if-ne v2, v1, :cond_1

    .line 60
    .line 61
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_1

    .line 66
    .line 67
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/a$c;->a:Lcom/yandex/metrica/impl/ob/a;

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/a;->b()V

    .line 70
    .line 71
    .line 72
    :cond_1
    const/4 v1, 0x1

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    move v1, v0

    .line 75
    goto :goto_0

    .line 76
    :catch_0
    :cond_3
    return-void
.end method
