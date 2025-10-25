.class public Lcom/yandex/metrica/impl/ob/Ma;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/Converter;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/Oa;

.field private final b:Lcom/yandex/metrica/impl/ob/kn;

.field private final c:Lcom/yandex/metrica/impl/ob/kn;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Oa;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Oa;-><init>()V

    new-instance v1, Lcom/yandex/metrica/impl/ob/kn;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/kn;-><init>(I)V

    new-instance v2, Lcom/yandex/metrica/impl/ob/kn;

    const/16 v3, 0x800

    invoke-direct {v2, v3}, Lcom/yandex/metrica/impl/ob/kn;-><init>(I)V

    invoke-direct {p0, v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Ma;-><init>(Lcom/yandex/metrica/impl/ob/Oa;Lcom/yandex/metrica/impl/ob/kn;Lcom/yandex/metrica/impl/ob/kn;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/Oa;Lcom/yandex/metrica/impl/ob/kn;Lcom/yandex/metrica/impl/ob/kn;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Ma;->a:Lcom/yandex/metrica/impl/ob/Oa;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Ma;->b:Lcom/yandex/metrica/impl/ob/kn;

    .line 5
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Ma;->c:Lcom/yandex/metrica/impl/ob/kn;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/ab;)Lcom/yandex/metrica/impl/ob/Na;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/ab;",
            ")",
            "Lcom/yandex/metrica/impl/ob/Na<",
            "Lcom/yandex/metrica/impl/ob/mf$m;",
            "Lcom/yandex/metrica/impl/ob/Vm;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/mf$m;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/mf$m;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Ma;->b:Lcom/yandex/metrica/impl/ob/kn;

    .line 7
    .line 8
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/ab;->a:Ljava/lang/String;

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
    iput-object v2, v0, Lcom/yandex/metrica/impl/ob/mf$m;->a:[B

    .line 23
    .line 24
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Ma;->c:Lcom/yandex/metrica/impl/ob/kn;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/ab;->b:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/kn;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/gn;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget-object v3, v2, Lcom/yandex/metrica/impl/ob/gn;->a:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v3, Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v3}, Lcom/yandex/metrica/impl/ob/b;->b(Ljava/lang/String;)[B

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    iput-object v3, v0, Lcom/yandex/metrica/impl/ob/mf$m;->b:[B

    .line 41
    .line 42
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/ab;->c:Lcom/yandex/metrica/impl/ob/bb;

    .line 43
    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Ma;->a:Lcom/yandex/metrica/impl/ob/Oa;

    .line 47
    .line 48
    invoke-virtual {v3, p1}, Lcom/yandex/metrica/impl/ob/Oa;->a(Lcom/yandex/metrica/impl/ob/bb;)Lcom/yandex/metrica/impl/ob/Na;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/Na;->a:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v3, Lcom/yandex/metrica/impl/ob/mf$n;

    .line 55
    .line 56
    iput-object v3, v0, Lcom/yandex/metrica/impl/ob/mf$m;->c:Lcom/yandex/metrica/impl/ob/mf$n;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const/4 p1, 0x0

    .line 60
    :goto_0
    const/4 v3, 0x3

    .line 61
    new-array v3, v3, [Lcom/yandex/metrica/impl/ob/Vm;

    .line 62
    .line 63
    const/4 v4, 0x0

    .line 64
    aput-object v1, v3, v4

    .line 65
    .line 66
    const/4 v1, 0x1

    .line 67
    aput-object v2, v3, v1

    .line 68
    .line 69
    const/4 v1, 0x2

    .line 70
    aput-object p1, v3, v1

    .line 71
    .line 72
    invoke-static {v3}, Lcom/yandex/metrica/impl/ob/Um;->a([Lcom/yandex/metrica/impl/ob/Vm;)Lcom/yandex/metrica/impl/ob/Vm;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    new-instance v1, Lcom/yandex/metrica/impl/ob/Na;

    .line 77
    .line 78
    invoke-direct {v1, v0, p1}, Lcom/yandex/metrica/impl/ob/Na;-><init>(Ljava/lang/Object;Lcom/yandex/metrica/impl/ob/Vm;)V

    .line 79
    .line 80
    .line 81
    return-object v1
.end method

.method public bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/ab;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/Ma;->a(Lcom/yandex/metrica/impl/ob/ab;)Lcom/yandex/metrica/impl/ob/Na;

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
