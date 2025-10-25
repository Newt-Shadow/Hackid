.class public Lcom/yandex/metrica/impl/ob/dj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/bj;

.field private final b:Lcom/yandex/metrica/impl/ob/sm;

.field private final c:Lcom/yandex/metrica/impl/ob/fj;

.field private final d:Lcom/yandex/metrica/impl/ob/cj;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/bj;Lcom/yandex/metrica/impl/ob/cj;Lcom/yandex/metrica/impl/ob/sm;Lcom/yandex/metrica/impl/ob/fj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dj;->a:Lcom/yandex/metrica/impl/ob/bj;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/dj;->d:Lcom/yandex/metrica/impl/ob/cj;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/dj;->b:Lcom/yandex/metrica/impl/ob/sm;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/dj;->c:Lcom/yandex/metrica/impl/ob/fj;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/W0;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dj;->b:Lcom/yandex/metrica/impl/ob/sm;

    .line 3
    .line 4
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/sm;->a()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dj;->c:Lcom/yandex/metrica/impl/ob/fj;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/fj;->a()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :try_start_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/dj;->a:Lcom/yandex/metrica/impl/ob/bj;

    .line 20
    .line 21
    invoke-interface {v2}, Lcom/yandex/metrica/impl/ob/bj;->a()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/dj;->d:Lcom/yandex/metrica/impl/ob/cj;

    .line 32
    .line 33
    invoke-interface {v2}, Lcom/yandex/metrica/impl/ob/cj;->a()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    :cond_0
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/dj;->c:Lcom/yandex/metrica/impl/ob/fj;

    .line 40
    .line 41
    invoke-virtual {v2, v1}, Lcom/yandex/metrica/impl/ob/fj;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-object v1, v0

    .line 47
    :catchall_1
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/dj;->b:Lcom/yandex/metrica/impl/ob/sm;

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/sm;->b()V

    .line 50
    .line 51
    .line 52
    if-nez v1, :cond_2

    .line 53
    .line 54
    new-instance v1, Lcom/yandex/metrica/impl/ob/W0;

    .line 55
    .line 56
    sget-object v2, Lcom/yandex/metrica/impl/ob/U0;->g:Lcom/yandex/metrica/impl/ob/U0;

    .line 57
    .line 58
    const-string v3, "Uuid must be obtained via async API YandexMetricaInternal#requestStartupIdentifiers(@NonNull Context context, @NonNull IIdentifierCallback callback,@NonNull String... identifiers)"

    .line 59
    .line 60
    invoke-direct {v1, v0, v2, v3}, Lcom/yandex/metrica/impl/ob/W0;-><init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/U0;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-object v1

    .line 64
    :cond_2
    new-instance v2, Lcom/yandex/metrica/impl/ob/W0;

    .line 65
    .line 66
    sget-object v3, Lcom/yandex/metrica/impl/ob/U0;->b:Lcom/yandex/metrica/impl/ob/U0;

    .line 67
    .line 68
    invoke-direct {v2, v1, v3, v0}, Lcom/yandex/metrica/impl/ob/W0;-><init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/U0;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-object v2
.end method
