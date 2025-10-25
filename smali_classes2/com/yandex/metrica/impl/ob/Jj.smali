.class public Lcom/yandex/metrica/impl/ob/Jj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/gm;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/gm;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/gm;-><init>()V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/Jj;-><init>(Lcom/yandex/metrica/impl/ob/gm;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/gm;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Jj;->a:Lcom/yandex/metrica/impl/ob/gm;

    return-void
.end method


# virtual methods
.method public a(Landroid/telephony/CellInfo;Lcom/yandex/metrica/impl/ob/uj$a;)V
    .locals 13

    .line 1
    invoke-virtual {p1}, Landroid/telephony/CellInfo;->getTimeStamp()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v4, v0, v2

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    if-lez v4, :cond_1

    .line 11
    .line 12
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/Jj;->a:Lcom/yandex/metrica/impl/ob/gm;

    .line 13
    .line 14
    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 15
    .line 16
    invoke-virtual {v4, v0, v1, v6}, Lcom/yandex/metrica/impl/ob/gm;->c(JLjava/util/concurrent/TimeUnit;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v7

    .line 20
    cmp-long v4, v7, v2

    .line 21
    .line 22
    const-wide/16 v9, 0x1

    .line 23
    .line 24
    if-lez v4, :cond_0

    .line 25
    .line 26
    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 27
    .line 28
    invoke-virtual {v4, v9, v10}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 29
    .line 30
    .line 31
    move-result-wide v11

    .line 32
    cmp-long v4, v7, v11

    .line 33
    .line 34
    if-gez v4, :cond_0

    .line 35
    .line 36
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    :cond_0
    if-nez v5, :cond_1

    .line 41
    .line 42
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/Jj;->a:Lcom/yandex/metrica/impl/ob/gm;

    .line 43
    .line 44
    invoke-virtual {v4, v0, v1, v6}, Lcom/yandex/metrica/impl/ob/gm;->a(JLjava/util/concurrent/TimeUnit;)J

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    cmp-long v2, v0, v2

    .line 49
    .line 50
    if-lez v2, :cond_1

    .line 51
    .line 52
    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 53
    .line 54
    invoke-virtual {v2, v9, v10}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 55
    .line 56
    .line 57
    move-result-wide v2

    .line 58
    cmp-long v2, v0, v2

    .line 59
    .line 60
    if-gez v2, :cond_1

    .line 61
    .line 62
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    :cond_1
    invoke-virtual {p2, v5}, Lcom/yandex/metrica/impl/ob/uj$a;->a(Ljava/lang/Long;)Lcom/yandex/metrica/impl/ob/uj$a;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p1}, Landroid/telephony/CellInfo;->isRegistered()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    invoke-virtual {p2, p1}, Lcom/yandex/metrica/impl/ob/uj$a;->a(Z)Lcom/yandex/metrica/impl/ob/uj$a;

    .line 75
    .line 76
    .line 77
    return-void
.end method
