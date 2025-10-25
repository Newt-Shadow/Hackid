.class Lcom/yandex/metrica/impl/ob/hk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/dk;

.field private final b:Lcom/yandex/metrica/impl/ob/bk;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/yandex/metrica/impl/ob/bk;

    invoke-direct {p1}, Lcom/yandex/metrica/impl/ob/bk;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/hk;-><init>(Lcom/yandex/metrica/impl/ob/dk;Lcom/yandex/metrica/impl/ob/bk;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/dk;Lcom/yandex/metrica/impl/ob/bk;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/hk;->a:Lcom/yandex/metrica/impl/ob/dk;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/hk;->b:Lcom/yandex/metrica/impl/ob/bk;

    return-void
.end method


# virtual methods
.method a(Landroid/app/Activity;Lcom/yandex/metrica/impl/ob/fl;)Lcom/yandex/metrica/impl/ob/Wk;
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/yandex/metrica/impl/ob/Wk;->b:Lcom/yandex/metrica/impl/ob/Wk;

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    iget-boolean v0, p2, Lcom/yandex/metrica/impl/ob/fl;->a:Z

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    sget-object p1, Lcom/yandex/metrica/impl/ob/Wk;->d:Lcom/yandex/metrica/impl/ob/Wk;

    .line 11
    .line 12
    return-object p1

    .line 13
    :cond_1
    iget-object v0, p2, Lcom/yandex/metrica/impl/ob/fl;->e:Lcom/yandex/metrica/impl/ob/wl;

    .line 14
    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    sget-object p1, Lcom/yandex/metrica/impl/ob/Wk;->c:Lcom/yandex/metrica/impl/ob/Wk;

    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hk;->a:Lcom/yandex/metrica/impl/ob/dk;

    .line 21
    .line 22
    invoke-virtual {v1, p1, v0}, Lcom/yandex/metrica/impl/ob/Vk;->a(Landroid/app/Activity;Lcom/yandex/metrica/impl/ob/wl;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    sget-object p1, Lcom/yandex/metrica/impl/ob/Wk;->e:Lcom/yandex/metrica/impl/ob/Wk;

    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hk;->b:Lcom/yandex/metrica/impl/ob/bk;

    .line 32
    .line 33
    iget-object p2, p2, Lcom/yandex/metrica/impl/ob/fl;->e:Lcom/yandex/metrica/impl/ob/wl;

    .line 34
    .line 35
    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/Vk;->a(Landroid/app/Activity;Lcom/yandex/metrica/impl/ob/wl;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_4

    .line 40
    .line 41
    sget-object p1, Lcom/yandex/metrica/impl/ob/Wk;->f:Lcom/yandex/metrica/impl/ob/Wk;

    .line 42
    .line 43
    return-object p1

    .line 44
    :cond_4
    sget-object p1, Lcom/yandex/metrica/impl/ob/Wk;->a:Lcom/yandex/metrica/impl/ob/Wk;

    .line 45
    .line 46
    return-object p1
.end method
