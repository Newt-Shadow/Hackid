.class public final Lcom/yandex/metrica/impl/ob/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/yandex/metrica/impl/ob/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/g;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/g;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/yandex/metrica/impl/ob/g;->a:Lcom/yandex/metrica/impl/ob/g;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Lcom/yandex/metrica/impl/ob/g;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/l;Lzb/g;I)V
    .locals 3

    .line 1
    and-int/lit8 p0, p6, 0x10

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    new-instance p0, Lzb/g;

    .line 6
    .line 7
    invoke-direct {p0}, Lzb/g;-><init>()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    const-string p5, "history"

    .line 13
    .line 14
    invoke-static {p1, p5}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string p5, "newBillingInfo"

    .line 18
    .line 19
    invoke-static {p2, p5}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string p5, "type"

    .line 23
    .line 24
    invoke-static {p3, p5}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string p5, "billingInfoManager"

    .line 28
    .line 29
    invoke-static {p4, p5}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string p5, "systemTimeProvider"

    .line 33
    .line 34
    invoke-static {p0, p5}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 41
    .line 42
    .line 43
    move-result-wide p5

    .line 44
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Lzb/a;

    .line 63
    .line 64
    iget-object v1, v0, Lzb/a;->b:Ljava/lang/String;

    .line 65
    .line 66
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_2

    .line 71
    .line 72
    iput-wide p5, v0, Lzb/a;->e:J

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    iget-object v1, v0, Lzb/a;->b:Ljava/lang/String;

    .line 76
    .line 77
    invoke-interface {p4, v1}, Lcom/yandex/metrica/impl/ob/l;->a(Ljava/lang/String;)Lzb/a;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    if-eqz v1, :cond_1

    .line 82
    .line 83
    iget-wide v1, v1, Lzb/a;->e:J

    .line 84
    .line 85
    iput-wide v1, v0, Lzb/a;->e:J

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    invoke-interface {p4, p1}, Lcom/yandex/metrica/impl/ob/l;->a(Ljava/util/Map;)V

    .line 89
    .line 90
    .line 91
    invoke-interface {p4}, Lcom/yandex/metrica/impl/ob/l;->a()Z

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    if-nez p0, :cond_4

    .line 96
    .line 97
    const-string p0, "inapp"

    .line 98
    .line 99
    invoke-static {p0, p3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    if-eqz p0, :cond_4

    .line 104
    .line 105
    invoke-interface {p4}, Lcom/yandex/metrica/impl/ob/l;->b()V

    .line 106
    .line 107
    .line 108
    :cond_4
    return-void
.end method
