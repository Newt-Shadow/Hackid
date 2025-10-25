.class public final Lcom/yandex/metrica/impl/ob/xg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/Zl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/Zl<",
            "Lcom/yandex/metrica/impl/ob/dg$a;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final b:J

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Landroid/content/Context;

.field private final f:Lcom/yandex/metrica/impl/ob/mn;

.field private final g:Lcom/yandex/metrica/impl/ob/M0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/mn;Lcom/yandex/metrica/impl/ob/M0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/xg;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/xg;->f:Lcom/yandex/metrica/impl/ob/mn;

    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/xg;->g:Lcom/yandex/metrica/impl/ob/M0;

    .line 2
    new-instance p1, Lcom/yandex/metrica/impl/ob/Zl;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/yandex/metrica/impl/ob/Zl;-><init>(Ljava/lang/Object;)V

    .line 3
    sget-object p2, Lcom/yandex/metrica/impl/ob/dg$a;->d:Lcom/yandex/metrica/impl/ob/dg$a;

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/yandex/metrica/impl/ob/Zl;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    sget-object p2, Lcom/yandex/metrica/impl/ob/dg$a;->c:Lcom/yandex/metrica/impl/ob/dg$a;

    const/4 p3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/yandex/metrica/impl/ob/Zl;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/xg;->a:Lcom/yandex/metrica/impl/ob/Zl;

    .line 6
    sget-object p1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p2, 0x1

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/yandex/metrica/impl/ob/xg;->b:J

    const-string p1, "com.android.vending"

    .line 7
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/xg;->c:Ljava/lang/String;

    const-string p1, "com.huawei.appmarket"

    .line 8
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/xg;->d:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/mn;Lcom/yandex/metrica/impl/ob/M0;I)V
    .locals 0

    and-int/lit8 p2, p4, 0x2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 9
    new-instance p2, Lcom/yandex/metrica/impl/ob/mn;

    invoke-direct {p2}, Lcom/yandex/metrica/impl/ob/mn;-><init>()V

    goto :goto_0

    :cond_0
    move-object p2, p3

    :goto_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 10
    invoke-static {}, Lcom/yandex/metrica/impl/ob/oh;->a()Lcom/yandex/metrica/impl/ob/M0;

    move-result-object p3

    const-string p4, "YandexMetricaSelfReportFacade.getReporter()"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/xg;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/mn;Lcom/yandex/metrica/impl/ob/M0;)V

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/metrica/impl/ob/xg;)Lcom/yandex/metrica/impl/ob/Zl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/xg;->a:Lcom/yandex/metrica/impl/ob/Zl;

    return-object p0
.end method

.method private final a(Ljava/util/List;Lcom/yandex/metrica/impl/ob/dg;Landroid/content/pm/PackageInfo;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/dg;",
            ">;",
            "Lcom/yandex/metrica/impl/ob/dg;",
            "Landroid/content/pm/PackageInfo;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 27
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lyc/m;->r(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 30
    check-cast v2, Lcom/yandex/metrica/impl/ob/dg;

    .line 31
    invoke-direct {p0, v2}, Lcom/yandex/metrica/impl/ob/xg;->c(Lcom/yandex/metrica/impl/ob/dg;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/Tl;->b(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p1

    const-string v1, "candidates"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 32
    invoke-direct {p0, p2}, Lcom/yandex/metrica/impl/ob/xg;->c(Lcom/yandex/metrica/impl/ob/dg;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "chosen"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p3, :cond_1

    .line 33
    iget-wide p2, p3, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    const-string p3, "install_time"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "JSONObject()\n           \u2026geInfo?.firstInstallTime)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final c(Lcom/yandex/metrica/impl/ob/dg;)Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/dg;->a:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "referrer"

    .line 9
    .line 10
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-wide v1, p1, Lcom/yandex/metrica/impl/ob/dg;->c:J

    .line 15
    .line 16
    const-string v3, "install_timestamp_seconds"

    .line 17
    .line 18
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-wide v1, p1, Lcom/yandex/metrica/impl/ob/dg;->b:J

    .line 23
    .line 24
    const-string v3, "click_timestamp_seconds"

    .line 25
    .line 26
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/dg;->d:Lcom/yandex/metrica/impl/ob/dg$a;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/dg$a;->a:Ljava/lang/String;

    .line 33
    .line 34
    const-string v1, "source"

    .line 35
    .line 36
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string v0, "JSONObject()\n           \u2026eferrerInfo.source.value)"

    .line 41
    .line 42
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-object p1
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/dg;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/dg;",
            ">;)",
            "Lcom/yandex/metrica/impl/ob/dg;"
        }
    .end annotation

    .line 11
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 12
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 13
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/dg;

    return-object p1

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/xg;->f:Lcom/yandex/metrica/impl/ob/mn;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/xg;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4, v3}, Lcom/yandex/metrica/impl/ob/mn;->b(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 15
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v3, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    .line 16
    new-instance v4, Lcom/yandex/metrica/impl/ob/xg$a;

    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/xg$a;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/yandex/metrica/impl/ob/dg;

    .line 17
    iget-wide v7, v6, Lcom/yandex/metrica/impl/ob/dg;->c:J

    sub-long/2addr v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v6, v7}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    move-result-object v6

    .line 18
    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/yandex/metrica/impl/ob/dg;

    .line 19
    iget-wide v8, v7, Lcom/yandex/metrica/impl/ob/dg;->c:J

    sub-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v7, v8}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    move-result-object v7

    .line 20
    invoke-interface {v4, v6, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    if-lez v8, :cond_2

    move-object v6, v7

    goto :goto_0

    :cond_3
    invoke-virtual {v6}, Lxc/k;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/metrica/impl/ob/dg;

    invoke-virtual {v6}, Lxc/k;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    .line 21
    iget-wide v5, p0, Lcom/yandex/metrica/impl/ob/xg;->b:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_5

    move-object v1, v2

    goto :goto_1

    .line 22
    :cond_4
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1

    :cond_5
    :goto_1
    if-nez v1, :cond_9

    .line 23
    new-instance v1, Lcom/yandex/metrica/impl/ob/xg$b;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ob/xg$b;-><init>(Lcom/yandex/metrica/impl/ob/xg;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/metrica/impl/ob/dg;

    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/metrica/impl/ob/dg;

    invoke-interface {v1, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_6

    move-object v3, v4

    goto :goto_2

    :cond_7
    move-object v1, v3

    goto :goto_3

    :cond_8
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1

    .line 24
    :cond_9
    :goto_3
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/xg;->g:Lcom/yandex/metrica/impl/ob/M0;

    .line 25
    invoke-direct {p0, p1, v1, v0}, Lcom/yandex/metrica/impl/ob/xg;->a(Ljava/util/List;Lcom/yandex/metrica/impl/ob/dg;Landroid/content/pm/PackageInfo;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "several_filled_referrers"

    .line 26
    invoke-interface {v2, v0, p1}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final a(Lcom/yandex/metrica/impl/ob/dg;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/xg;->f:Lcom/yandex/metrica/impl/ob/mn;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/xg;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x1e

    .line 5
    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/A2;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-static {v1, v3}, Lcom/yandex/metrica/impl/ob/nn;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/dg;->d:Lcom/yandex/metrica/impl/ob/dg$a;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/xg;->d:Ljava/lang/String;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/xg;->c:Ljava/lang/String;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    return v0
.end method

.method public final b(Lcom/yandex/metrica/impl/ob/dg;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/dg;->a:Ljava/lang/String;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    const/4 v0, 0x1

    .line 8
    if-eqz p1, :cond_2

    .line 9
    .line 10
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    const/4 p1, 0x0

    .line 18
    goto :goto_2

    .line 19
    :cond_2
    :goto_1
    move p1, v0

    .line 20
    :goto_2
    xor-int/2addr p1, v0

    .line 21
    return p1
.end method
