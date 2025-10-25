.class public Lcom/yandex/metrica/impl/ob/bn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/an;

.field private final b:Lcom/yandex/metrica/impl/ob/Zm;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/an;Lcom/yandex/metrica/impl/ob/Zm;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bn;->a:Lcom/yandex/metrica/impl/ob/an;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/bn;->b:Lcom/yandex/metrica/impl/ob/Zm;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/cm;Ljava/lang/String;)V
    .locals 7

    .line 1
    new-instance v6, Lcom/yandex/metrica/impl/ob/an;

    const/16 v1, 0x1e

    const/16 v2, 0x32

    const/16 v3, 0xfa0

    move-object v0, v6

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/yandex/metrica/impl/ob/an;-><init>(IIILjava/lang/String;Lcom/yandex/metrica/impl/ob/cm;)V

    new-instance v0, Lcom/yandex/metrica/impl/ob/Zm;

    const/16 v1, 0x1194

    invoke-direct {v0, v1, p2, p1}, Lcom/yandex/metrica/impl/ob/Zm;-><init>(ILjava/lang/String;Lcom/yandex/metrica/impl/ob/cm;)V

    invoke-direct {p0, v6, v0}, Lcom/yandex/metrica/impl/ob/bn;-><init>(Lcom/yandex/metrica/impl/ob/an;Lcom/yandex/metrica/impl/ob/Zm;)V

    return-void
.end method


# virtual methods
.method declared-synchronized a(Lcom/yandex/metrica/impl/ob/am;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bn;->a:Lcom/yandex/metrica/impl/ob/an;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/an;->a()Lcom/yandex/metrica/impl/ob/Wm;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Wm;->a()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-lt v0, v1, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->a:Lcom/yandex/metrica/impl/ob/an;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/an;->a()Lcom/yandex/metrica/impl/ob/Wm;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Wm;->a()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-ne v0, v1, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/bn;->a:Lcom/yandex/metrica/impl/ob/an;

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/an;->a(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->b:Lcom/yandex/metrica/impl/ob/Zm;

    .line 48
    .line 49
    invoke-virtual {v0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/Zm;->a(Lcom/yandex/metrica/impl/ob/am;Ljava/lang/String;Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_2

    .line 54
    .line 55
    invoke-virtual {p1, p2, p3}, Lcom/yandex/metrica/impl/ob/am;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    monitor-exit p0

    .line 59
    const/4 p1, 0x1

    .line 60
    return p1

    .line 61
    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/bn;->b:Lcom/yandex/metrica/impl/ob/Zm;

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/Zm;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    .line 65
    .line 66
    :goto_1
    monitor-exit p0

    .line 67
    const/4 p1, 0x0

    .line 68
    return p1

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    monitor-exit p0

    .line 71
    throw p1
.end method

.method public b(Lcom/yandex/metrica/impl/ob/am;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->a:Lcom/yandex/metrica/impl/ob/an;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/an;->b()Lcom/yandex/metrica/impl/ob/dn;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p2}, Lcom/yandex/metrica/impl/ob/dn;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->a:Lcom/yandex/metrica/impl/ob/an;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/an;->c()Lcom/yandex/metrica/impl/ob/dn;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p3}, Lcom/yandex/metrica/impl/ob/dn;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/String;

    .line 34
    .line 35
    if-eqz p3, :cond_0

    .line 36
    .line 37
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/bn;->a(Lcom/yandex/metrica/impl/ob/am;Ljava/lang/String;Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    return p1

    .line 48
    :cond_1
    if-eqz p3, :cond_2

    .line 49
    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/bn;->a(Lcom/yandex/metrica/impl/ob/am;Ljava/lang/String;Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    return p1

    .line 55
    :cond_2
    const/4 p1, 0x0

    .line 56
    return p1
.end method
