.class public final Lcom/yandex/metrica/impl/ob/te;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/D9;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/yandex/metrica/impl/ob/D9;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/D9;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/te;->a:Lcom/yandex/metrica/impl/ob/D9;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a([B)[Lcom/yandex/metrica/impl/ob/qf$d$a$b;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/te;->a:Lcom/yandex/metrica/impl/ob/D9;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/D9;->a([B)Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    new-array v2, v1, [Lcom/yandex/metrica/impl/ob/qf$d$a$b;

    .line 15
    .line 16
    move v3, v0

    .line 17
    :goto_0
    if-ge v3, v1, :cond_0

    .line 18
    .line 19
    new-instance v4, Lcom/yandex/metrica/impl/ob/qf$d$a$b;

    .line 20
    .line 21
    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/qf$d$a$b;-><init>()V

    .line 22
    .line 23
    .line 24
    aput-object v4, v2, v3

    .line 25
    .line 26
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    check-cast p1, Ljava/util/LinkedHashMap;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_4

    .line 44
    .line 45
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    add-int/lit8 v3, v0, 0x1

    .line 50
    .line 51
    if-gez v0, :cond_1

    .line 52
    .line 53
    invoke-static {}, Lyc/m;->q()V

    .line 54
    .line 55
    .line 56
    :cond_1
    check-cast v1, Ljava/util/Map$Entry;

    .line 57
    .line 58
    aget-object v0, v2, v0

    .line 59
    .line 60
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    check-cast v4, Ljava/lang/String;

    .line 65
    .line 66
    sget-object v5, Lrd/d;->b:Ljava/nio/charset/Charset;

    .line 67
    .line 68
    if-eqz v4, :cond_2

    .line 69
    .line 70
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    const-string v5, "(this as java.lang.String).getBytes(charset)"

    .line 75
    .line 76
    invoke-static {v4, v5}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iput-object v4, v0, Lcom/yandex/metrica/impl/ob/qf$d$a$b;->a:[B

    .line 80
    .line 81
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, [B

    .line 86
    .line 87
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/qf$d$a$b;->b:[B

    .line 88
    .line 89
    move v0, v3

    .line 90
    goto :goto_1

    .line 91
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    .line 92
    .line 93
    const-string v0, "null cannot be cast to non-null type java.lang.String"

    .line 94
    .line 95
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p1

    .line 99
    :cond_3
    new-array v2, v0, [Lcom/yandex/metrica/impl/ob/qf$d$a$b;

    .line 100
    .line 101
    :cond_4
    return-object v2
.end method
