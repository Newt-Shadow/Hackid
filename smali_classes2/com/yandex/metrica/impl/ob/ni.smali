.class public final Lcom/yandex/metrica/impl/ob/ni;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ldc/d;

.field private static c:Lcom/yandex/metrica/impl/ob/Rh;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v0, "yandex_mobile_metrica_clids"

    .line 2
    .line 3
    const-string v1, "appmetrica_device_id_hash"

    .line 4
    .line 5
    const-string v2, "yandex_mobile_metrica_device_id"

    .line 6
    .line 7
    const-string v3, "yandex_mobile_metrica_get_ad_url"

    .line 8
    .line 9
    const-string v4, "yandex_mobile_metrica_report_ad_url"

    .line 10
    .line 11
    const-string v5, "yandex_mobile_metrica_uuid"

    .line 12
    .line 13
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lyc/k0;->d([Ljava/lang/Object;)Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/yandex/metrica/impl/ob/ni;->a:Ljava/util/Set;

    .line 22
    .line 23
    new-instance v0, Ldc/c;

    .line 24
    .line 25
    invoke-direct {v0}, Ldc/c;-><init>()V

    .line 26
    .line 27
    .line 28
    sput-object v0, Lcom/yandex/metrica/impl/ob/ni;->b:Ldc/d;

    .line 29
    .line 30
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rh;

    .line 31
    .line 32
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Rh;-><init>()V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/yandex/metrica/impl/ob/ni;->c:Lcom/yandex/metrica/impl/ob/Rh;

    .line 36
    .line 37
    return-void
.end method

.method public static final a(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 25
    sget-object v0, Lcom/yandex/metrica/impl/ob/ni;->a:Ljava/util/Set;

    invoke-static {p0, v0}, Lyc/m;->T(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final a(J)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/ni;->b:Ldc/d;

    invoke-interface {v0}, Ldc/d;->currentTimeSeconds()J

    move-result-wide v0

    cmp-long p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final a(Lcom/yandex/metrica/impl/ob/pi;)Z
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/pi;->V()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/ni;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/pi;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/ni;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/pi;->j()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/ni;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final a(Lcom/yandex/metrica/impl/ob/pi;Ljava/util/Collection;Ljava/util/Map;Lid/a;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/pi;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lid/a;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    if-eqz v2, :cond_2

    return v1

    .line 7
    :cond_2
    instance-of v2, p1, Ljava/util/Collection;

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_4

    .line 8
    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 9
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v3, "yandex_mobile_metrica_get_ad_url"

    .line 10
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 11
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/pi;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/ni;->a(Ljava/lang/String;)Z

    move-result v2

    goto :goto_3

    :sswitch_1
    const-string v3, "yandex_mobile_metrica_uuid"

    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 13
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/pi;->V()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/ni;->a(Ljava/lang/String;)Z

    move-result v2

    goto :goto_3

    :sswitch_2
    const-string v3, "yandex_mobile_metrica_clids"

    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 15
    sget-object v2, Lcom/yandex/metrica/impl/ob/ni;->c:Lcom/yandex/metrica/impl/ob/Rh;

    .line 16
    invoke-interface {p3}, Lid/a;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/metrica/impl/ob/I;

    .line 17
    invoke-virtual {v2, p2, p0, v3}, Lcom/yandex/metrica/impl/ob/Rh;->a(Ljava/util/Map;Lcom/yandex/metrica/impl/ob/pi;Lcom/yandex/metrica/impl/ob/I;)Z

    move-result v2

    goto :goto_3

    :sswitch_3
    const-string v3, "yandex_mobile_metrica_report_ad_url"

    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 19
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/pi;->G()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/ni;->a(Ljava/lang/String;)Z

    move-result v2

    goto :goto_3

    :sswitch_4
    const-string v3, "appmetrica_device_id_hash"

    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 21
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/pi;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/ni;->a(Ljava/lang/String;)Z

    move-result v2

    goto :goto_3

    :sswitch_5
    const-string v3, "yandex_mobile_metrica_device_id"

    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 23
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/pi;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/ni;->a(Ljava/lang/String;)Z

    move-result v2

    goto :goto_3

    .line 24
    :cond_5
    :goto_2
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/ni;->b(Lcom/yandex/metrica/impl/ob/pi;)Z

    move-result v2

    xor-int/2addr v2, v1

    :goto_3
    if-nez v2, :cond_4

    goto :goto_5

    :cond_6
    :goto_4
    move v0, v1

    :goto_5
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0xd24c839 -> :sswitch_5
        0x11dd4578 -> :sswitch_4
        0x1f9d1f61 -> :sswitch_3
        0x2019db52 -> :sswitch_2
        0x5be81db8 -> :sswitch_1
        0x612fd099 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final a(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 5
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v0

    :goto_1
    xor-int/2addr p0, v0

    return p0
.end method

.method public static final b(Lcom/yandex/metrica/impl/ob/pi;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/pi;->D()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/pi;->C()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/pi;->O()Lcom/yandex/metrica/impl/ob/si;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/si;->a()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    int-to-long v4, p0

    .line 21
    add-long/2addr v2, v4

    .line 22
    sget-object p0, Lcom/yandex/metrica/impl/ob/ni;->b:Ldc/d;

    .line 23
    .line 24
    invoke-interface {p0}, Ldc/d;->currentTimeSeconds()J

    .line 25
    .line 26
    .line 27
    move-result-wide v4

    .line 28
    cmp-long p0, v4, v2

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    if-lez p0, :cond_0

    .line 32
    .line 33
    move p0, v1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move p0, v0

    .line 36
    :goto_0
    if-eqz p0, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move v1, v0

    .line 40
    :cond_2
    :goto_1
    return v1
.end method
