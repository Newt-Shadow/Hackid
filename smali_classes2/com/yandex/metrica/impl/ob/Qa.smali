.class public Lcom/yandex/metrica/impl/ob/Qa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/Fa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/Fa;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/Ja;

.field private final b:Lcom/yandex/metrica/impl/ob/Ma;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Ja;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Ja;-><init>()V

    new-instance v1, Lcom/yandex/metrica/impl/ob/Ma;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/Ma;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/Qa;-><init>(Lcom/yandex/metrica/impl/ob/Ja;Lcom/yandex/metrica/impl/ob/Ma;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/Ja;Lcom/yandex/metrica/impl/ob/Ma;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Qa;->a:Lcom/yandex/metrica/impl/ob/Ja;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Qa;->b:Lcom/yandex/metrica/impl/ob/Ma;

    return-void
.end method


# virtual methods
.method public fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/db;

    .line 2
    .line 3
    new-instance v0, Lcom/yandex/metrica/impl/ob/mf;

    .line 4
    .line 5
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/mf;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    iput v1, v0, Lcom/yandex/metrica/impl/ob/mf;->a:I

    .line 10
    .line 11
    new-instance v1, Lcom/yandex/metrica/impl/ob/mf$p;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/mf$p;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/mf;->d:Lcom/yandex/metrica/impl/ob/mf$p;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Qa;->a:Lcom/yandex/metrica/impl/ob/Ja;

    .line 19
    .line 20
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/db;->b:Lcom/yandex/metrica/impl/ob/Ya;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/Ja;->a(Lcom/yandex/metrica/impl/ob/Ya;)Lcom/yandex/metrica/impl/ob/Na;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v2, v0, Lcom/yandex/metrica/impl/ob/mf;->d:Lcom/yandex/metrica/impl/ob/mf$p;

    .line 27
    .line 28
    iget-object v3, v1, Lcom/yandex/metrica/impl/ob/Na;->a:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v3, Lcom/yandex/metrica/impl/ob/mf$k;

    .line 31
    .line 32
    iput-object v3, v2, Lcom/yandex/metrica/impl/ob/mf$p;->a:Lcom/yandex/metrica/impl/ob/mf$k;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/db;->c:Lcom/yandex/metrica/impl/ob/ab;

    .line 35
    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Qa;->b:Lcom/yandex/metrica/impl/ob/Ma;

    .line 39
    .line 40
    invoke-virtual {v2, p1}, Lcom/yandex/metrica/impl/ob/Ma;->a(Lcom/yandex/metrica/impl/ob/ab;)Lcom/yandex/metrica/impl/ob/Na;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object v2, v0, Lcom/yandex/metrica/impl/ob/mf;->d:Lcom/yandex/metrica/impl/ob/mf$p;

    .line 45
    .line 46
    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/Na;->a:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v3, Lcom/yandex/metrica/impl/ob/mf$m;

    .line 49
    .line 50
    iput-object v3, v2, Lcom/yandex/metrica/impl/ob/mf$p;->b:Lcom/yandex/metrica/impl/ob/mf$m;

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 p1, 0x0

    .line 54
    :goto_0
    const/4 v2, 0x2

    .line 55
    new-array v2, v2, [Lcom/yandex/metrica/impl/ob/Vm;

    .line 56
    .line 57
    const/4 v3, 0x0

    .line 58
    aput-object v1, v2, v3

    .line 59
    .line 60
    const/4 v1, 0x1

    .line 61
    aput-object p1, v2, v1

    .line 62
    .line 63
    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/Um;->a([Lcom/yandex/metrica/impl/ob/Vm;)Lcom/yandex/metrica/impl/ob/Vm;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    new-instance v1, Lcom/yandex/metrica/impl/ob/Na;

    .line 68
    .line 69
    invoke-direct {v1, v0, p1}, Lcom/yandex/metrica/impl/ob/Na;-><init>(Ljava/lang/Object;Lcom/yandex/metrica/impl/ob/Vm;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    return-object p1
.end method

.method public toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

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
