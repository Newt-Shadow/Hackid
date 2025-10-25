.class public final Lcom/yandex/metrica/impl/ob/Tg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/yandex/metrica/AdType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    sget-object v0, Lcom/yandex/metrica/AdType;->NATIVE:Lcom/yandex/metrica/AdType;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-static {v0, v1}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    sget-object v0, Lcom/yandex/metrica/AdType;->BANNER:Lcom/yandex/metrica/AdType;

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    sget-object v0, Lcom/yandex/metrica/AdType;->REWARDED:Lcom/yandex/metrica/AdType;

    .line 24
    .line 25
    const/4 v1, 0x3

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    sget-object v0, Lcom/yandex/metrica/AdType;->INTERSTITIAL:Lcom/yandex/metrica/AdType;

    .line 35
    .line 36
    const/4 v1, 0x4

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v0, v1}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    sget-object v0, Lcom/yandex/metrica/AdType;->MREC:Lcom/yandex/metrica/AdType;

    .line 46
    .line 47
    const/4 v1, 0x5

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {v0, v1}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    sget-object v0, Lcom/yandex/metrica/AdType;->OTHER:Lcom/yandex/metrica/AdType;

    .line 57
    .line 58
    const/4 v1, 0x6

    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {v0, v1}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    filled-new-array/range {v2 .. v7}, [Lxc/k;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0}, Lyc/e0;->h([Lxc/k;)Ljava/util/Map;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    sput-object v0, Lcom/yandex/metrica/impl/ob/Tg;->a:Ljava/util/Map;

    .line 76
    .line 77
    return-void
.end method

.method public static final synthetic a()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/Tg;->a:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method
