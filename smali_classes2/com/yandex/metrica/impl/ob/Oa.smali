.class public Lcom/yandex/metrica/impl/ob/Oa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/Converter;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/Ha;

.field private final b:Lcom/yandex/metrica/impl/ob/Da;

.field private final c:Lcom/yandex/metrica/impl/ob/kn;

.field private final d:Lcom/yandex/metrica/impl/ob/kn;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Ha;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Ha;-><init>()V

    new-instance v1, Lcom/yandex/metrica/impl/ob/Da;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/Da;-><init>()V

    new-instance v2, Lcom/yandex/metrica/impl/ob/kn;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Lcom/yandex/metrica/impl/ob/kn;-><init>(I)V

    new-instance v3, Lcom/yandex/metrica/impl/ob/kn;

    const/16 v4, 0x3e8

    invoke-direct {v3, v4}, Lcom/yandex/metrica/impl/ob/kn;-><init>(I)V

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/yandex/metrica/impl/ob/Oa;-><init>(Lcom/yandex/metrica/impl/ob/Ha;Lcom/yandex/metrica/impl/ob/Da;Lcom/yandex/metrica/impl/ob/kn;Lcom/yandex/metrica/impl/ob/kn;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/Ha;Lcom/yandex/metrica/impl/ob/Da;Lcom/yandex/metrica/impl/ob/kn;Lcom/yandex/metrica/impl/ob/kn;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Oa;->a:Lcom/yandex/metrica/impl/ob/Ha;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Oa;->b:Lcom/yandex/metrica/impl/ob/Da;

    .line 5
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Oa;->c:Lcom/yandex/metrica/impl/ob/kn;

    .line 6
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/Oa;->d:Lcom/yandex/metrica/impl/ob/kn;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/bb;)Lcom/yandex/metrica/impl/ob/Na;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/bb;",
            ")",
            "Lcom/yandex/metrica/impl/ob/Na<",
            "Lcom/yandex/metrica/impl/ob/mf$n;",
            "Lcom/yandex/metrica/impl/ob/Vm;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/mf$n;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/mf$n;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Oa;->c:Lcom/yandex/metrica/impl/ob/kn;

    .line 7
    .line 8
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/bb;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/kn;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/gn;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, v1, Lcom/yandex/metrica/impl/ob/gn;->a:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/b;->b(Ljava/lang/String;)[B

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iput-object v2, v0, Lcom/yandex/metrica/impl/ob/mf$n;->a:[B

    .line 23
    .line 24
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/bb;->b:Ljava/util/List;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/Oa;->b:Lcom/yandex/metrica/impl/ob/Da;

    .line 30
    .line 31
    invoke-virtual {v4, v2}, Lcom/yandex/metrica/impl/ob/Da;->a(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/Na;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iget-object v4, v2, Lcom/yandex/metrica/impl/ob/Na;->a:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v4, Lcom/yandex/metrica/impl/ob/mf$d;

    .line 38
    .line 39
    iput-object v4, v0, Lcom/yandex/metrica/impl/ob/mf$n;->b:Lcom/yandex/metrica/impl/ob/mf$d;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move-object v2, v3

    .line 43
    :goto_0
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/Oa;->d:Lcom/yandex/metrica/impl/ob/kn;

    .line 44
    .line 45
    iget-object v5, p1, Lcom/yandex/metrica/impl/ob/bb;->c:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v4, v5}, Lcom/yandex/metrica/impl/ob/kn;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/gn;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    iget-object v5, v4, Lcom/yandex/metrica/impl/ob/gn;->a:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v5, Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v5}, Lcom/yandex/metrica/impl/ob/b;->b(Ljava/lang/String;)[B

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    iput-object v5, v0, Lcom/yandex/metrica/impl/ob/mf$n;->c:[B

    .line 60
    .line 61
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/bb;->d:Ljava/util/Map;

    .line 62
    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Oa;->a:Lcom/yandex/metrica/impl/ob/Ha;

    .line 66
    .line 67
    invoke-virtual {v3, p1}, Lcom/yandex/metrica/impl/ob/Ha;->a(Ljava/util/Map;)Lcom/yandex/metrica/impl/ob/Na;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    iget-object p1, v3, Lcom/yandex/metrica/impl/ob/Na;->a:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p1, Lcom/yandex/metrica/impl/ob/mf$i;

    .line 74
    .line 75
    iput-object p1, v0, Lcom/yandex/metrica/impl/ob/mf$n;->d:Lcom/yandex/metrica/impl/ob/mf$i;

    .line 76
    .line 77
    :cond_1
    const/4 p1, 0x4

    .line 78
    new-array p1, p1, [Lcom/yandex/metrica/impl/ob/Vm;

    .line 79
    .line 80
    const/4 v5, 0x0

    .line 81
    aput-object v1, p1, v5

    .line 82
    .line 83
    const/4 v1, 0x1

    .line 84
    aput-object v2, p1, v1

    .line 85
    .line 86
    const/4 v1, 0x2

    .line 87
    aput-object v4, p1, v1

    .line 88
    .line 89
    const/4 v1, 0x3

    .line 90
    aput-object v3, p1, v1

    .line 91
    .line 92
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/Um;->a([Lcom/yandex/metrica/impl/ob/Vm;)Lcom/yandex/metrica/impl/ob/Vm;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    new-instance v1, Lcom/yandex/metrica/impl/ob/Na;

    .line 97
    .line 98
    invoke-direct {v1, v0, p1}, Lcom/yandex/metrica/impl/ob/Na;-><init>(Ljava/lang/Object;Lcom/yandex/metrica/impl/ob/Vm;)V

    .line 99
    .line 100
    .line 101
    return-object v1
.end method

.method public bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/bb;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/Oa;->a(Lcom/yandex/metrica/impl/ob/bb;)Lcom/yandex/metrica/impl/ob/Na;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/Na;

    .line 2
    .line 3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    .line 7
    .line 8
    throw p1
.end method
