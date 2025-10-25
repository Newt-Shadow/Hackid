.class public Lcom/yandex/metrica/impl/ob/Ra;
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
.field private final a:Lcom/yandex/metrica/impl/ob/Oa;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Oa;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Oa;-><init>()V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/Ra;-><init>(Lcom/yandex/metrica/impl/ob/Oa;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/Oa;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Ra;->a:Lcom/yandex/metrica/impl/ob/Oa;

    return-void
.end method


# virtual methods
.method public fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/eb;

    .line 2
    .line 3
    new-instance v0, Lcom/yandex/metrica/impl/ob/mf;

    .line 4
    .line 5
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/mf;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput v1, v0, Lcom/yandex/metrica/impl/ob/mf;->a:I

    .line 10
    .line 11
    new-instance v2, Lcom/yandex/metrica/impl/ob/mf$q;

    .line 12
    .line 13
    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/mf$q;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v2, v0, Lcom/yandex/metrica/impl/ob/mf;->b:Lcom/yandex/metrica/impl/ob/mf$q;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Ra;->a:Lcom/yandex/metrica/impl/ob/Oa;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/eb;->b:Lcom/yandex/metrica/impl/ob/bb;

    .line 21
    .line 22
    invoke-virtual {v2, p1}, Lcom/yandex/metrica/impl/ob/Oa;->a(Lcom/yandex/metrica/impl/ob/bb;)Lcom/yandex/metrica/impl/ob/Na;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object v2, v0, Lcom/yandex/metrica/impl/ob/mf;->b:Lcom/yandex/metrica/impl/ob/mf$q;

    .line 27
    .line 28
    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/Na;->a:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v3, Lcom/yandex/metrica/impl/ob/mf$n;

    .line 31
    .line 32
    iput-object v3, v2, Lcom/yandex/metrica/impl/ob/mf$q;->a:Lcom/yandex/metrica/impl/ob/mf$n;

    .line 33
    .line 34
    new-array v1, v1, [Lcom/yandex/metrica/impl/ob/Vm;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    aput-object p1, v1, v2

    .line 38
    .line 39
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/Um;->a([Lcom/yandex/metrica/impl/ob/Vm;)Lcom/yandex/metrica/impl/ob/Vm;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    new-instance v1, Lcom/yandex/metrica/impl/ob/Na;

    .line 44
    .line 45
    invoke-direct {v1, v0, p1}, Lcom/yandex/metrica/impl/ob/Na;-><init>(Ljava/lang/Object;Lcom/yandex/metrica/impl/ob/Vm;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
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
